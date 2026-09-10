import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/emitter/response_plan.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// Emits status and media dispatch for a response contract.
class ResponseDecoder {
  const ResponseDecoder(this.plan, {this.typeRegistry = const {}});

  final ResponsePlan plan;
  final Map<String, IrType> typeRegistry;

  String _fromJson(IrType type, String accessor, {bool isOptional = false}) =>
      buildFromJsonCode(
        type,
        accessor,
        isOptional: isOptional,
        typeRegistry: typeRegistry,
      );

  String emit() {
    final groups = <int?, List<ResponseBranch>>{};
    for (final branch in plan.branches) {
      groups.putIfAbsent(branch.status, () => []).add(branch);
    }
    // A single successful shape can also decode compatible, newly added 2xx
    // statuses. Multiple shapes require a declared status to disambiguate.
    if (!plan.isUnion && !plan.isError && groups.length == 1) {
      return _responseMediaDecoder(plan, groups.values.single);
    }
    final buf = StringBuffer('switch (response.statusCode) {\n');
    final decoders = <String, List<int>>{};
    for (final entry in groups.entries.where((e) => e.key != null)) {
      decoders
          .putIfAbsent(_responseMediaDecoder(plan, entry.value), () => [])
          .add(entry.key!);
    }
    for (final entry in decoders.entries) {
      buf.writeln('case ${_statusPattern(entry.value)}:');
      buf.writeln(entry.key);
    }
    buf.writeln('default:');
    if (groups[null] case final branches?) {
      buf.writeln(_responseMediaDecoder(plan, branches));
    } else if (plan.isUnion) {
      buf.writeln('return ${plan.unknownName}(response);');
    } else if (plan.isError) {
      buf.writeln('return null;');
    } else if (plan.types.length == 1) {
      buf.writeln(
        _responseMediaDecoder(plan, [
          plan.branches.firstWhere((b) => b.type != null),
        ]),
      );
    } else {
      buf.writeln(
        "throw const FormatException('Undeclared success response status');",
      );
    }
    buf.writeln('}');
    return buf.toString();
  }

  /// Groups consecutive statuses without including gaps owned by other decoders.
  String _statusPattern(List<int> statuses) {
    final sorted = [...statuses]..sort();
    final patterns = <String>[];
    for (var i = 0; i < sorted.length; i++) {
      final first = sorted[i];
      var last = first;
      while (i + 1 < sorted.length && sorted[i + 1] == last + 1) {
        last = sorted[++i];
      }
      if (last - first >= 2) {
        patterns.add('>= $first && < ${last + 1}');
      } else {
        for (var status = first; status <= last; status++) {
          patterns.add('$status');
        }
      }
    }
    return patterns.join(' || ');
  }

  String _responseMediaDecoder(
    ResponsePlan plan,
    List<ResponseBranch> branches,
  ) {
    if (branches.length == 1) {
      return _responseBranchDecoder(plan, branches.single);
    }
    final buf = StringBuffer(
      "final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;\n",
    );
    int specificity(ResponseBranch branch) {
      final mediaType = branch.content!.$1.rebuild(normalizeMediaType);
      if (mediaType.test((s) => s == '*/*')) return 0;
      if (mediaType.test((s) => s.endsWith('/*'))) return 1;
      return 2;
    }

    final ordered = [...branches]
      ..sort((a, b) {
        final byType = specificity(b).compareTo(specificity(a));
        if (byType != 0) return byType;
        return b.content!.$1.literal
            .split(';')
            .length
            .compareTo(a.content!.$1.literal.split(';').length);
      });
    for (final branch in ordered) {
      buf.writeln(
        'if (responseMediaTypeMatches(contentType, ${branch.content!.$1.literal})) {',
      );
      buf.writeln(_responseBranchDecoder(plan, branch));
      buf.writeln('}');
    }
    buf.writeln(_responseBranchDecoder(plan, branches.first));
    return buf.toString();
  }

  String _responseBranchDecoder(ResponsePlan plan, ResponseBranch branch) {
    final type = branch.type;
    if (type == null) return 'return ${plan.wrap(branch, 'null')};';
    final mediaType = branch.content!.$1;
    if (mediaType.test(isJsonLikeMediaType)) {
      final field = branch.field;
      final accessor = field == null ? 'json' : 'json[${field.literal}]';
      final parsed = _fromJson(type, accessor, isOptional: type.isNullable);
      return 'final json = jsonDecode(response.body)${field == null ? '' : ' as Map<String, dynamic>'};\n'
          'return ${plan.wrap(branch, parsed)};';
    }
    final decoded = _buildDeserializeExpr(mediaType, type);
    if (!plan.isUnion || decoded.contains('throw UnsupportedError(')) {
      return decoded;
    }
    return 'final value = (() { $decoded })();\nreturn ${plan.wrap(branch, 'value')};';
  }

  String _buildDeserializeExpr(SpecString mediaType, IrType returnType) {
    final unsupportedMessage = mediaType.rebuild(
      (m) => 'Cannot decode $m response into ${irTypeName(returnType)}',
    );
    return switch (returnType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dynamic_ ||
        PrimitiveKind.string => 'return response.body;',
        PrimitiveKind.int => 'return int.parse(response.body);',
        PrimitiveKind.double => 'return double.parse(response.body);',
        PrimitiveKind.bool => "return response.body.toLowerCase() == 'true';",
        PrimitiveKind.bytes => 'return Uint8List.fromList(response.bodyBytes);',
        _ => 'throw UnsupportedError(${unsupportedMessage.literal});',
      },
      IrEnum(:final name) => 'return $name.fromJson(response.body);',
      IrExtensionType() => 'return ${_fromJson(returnType, 'response.body')};',
      _ =>
        '// TODO: Unsupported non-JSON response schema ${unsupportedMessage.commentText}\n'
            'throw UnsupportedError(${unsupportedMessage.literal});',
    };
  }
}
