import 'dart:collection';

import 'package:code_builder/code_builder.dart' as cb;
import 'package:collection/collection.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/emitter/response_plan.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// Branch properties that affect decoding, excluding the matched status.
typedef _BranchKey = (String?, bool, SpecString?, SpecString?, String?);

/// Emits status and media dispatch for a response contract.
class ResponseDecoder {
  const ResponseDecoder(this.plan, {this.typeRegistry = const {}});

  final ResponsePlan plan;
  final Map<String, IrType> typeRegistry;

  cb.Expression _fromJson(
    IrType type,
    String accessor, {
    bool isOptional = false,
  }) => cb.CodeExpression(
    cb.Code(
      buildFromJsonCode(
        type,
        accessor,
        isOptional: isOptional,
        typeRegistry: typeRegistry,
      ),
    ),
  );

  cb.Code emit() {
    final groups = <int?, List<ResponseBranch>>{};
    for (final branch in plan.branches) {
      groups.putIfAbsent(branch.status, () => []).add(branch);
    }
    // A single successful shape can also decode compatible, newly added 2xx
    // statuses. Multiple shapes require a declared status to disambiguate.
    if (!plan.isUnion && !plan.isError && groups.length == 1) {
      return _responseMediaDecoder(groups.values.single);
    }
    // Equivalent branches share a case body without rendering their code.
    const equality = ListEquality<_BranchKey>();
    final decoders =
        LinkedHashMap<List<_BranchKey>, ({cb.Code body, List<int> statuses})>(
          equals: equality.equals,
          hashCode: equality.hash,
        );
    for (final entry in groups.entries.where((e) => e.key != null)) {
      final key = entry.value
          .map(
            (branch) => (
              branch.type == null ? null : irTypeName(branch.type!),
              branch.type?.isNullable ?? false,
              branch.content?.$1,
              branch.field,
              plan.variantName(branch),
            ),
          )
          .toList();
      decoders
          .putIfAbsent(
            key,
            () => (body: _responseMediaDecoder(entry.value), statuses: []),
          )
          .statuses
          .add(entry.key!);
    }
    return cb.SwitchStatement(
      (b) => b
        ..value = cb.refer('response').property('statusCode')
        ..cases.addAll(
          decoders.values.map(
            (decoder) => cb.CaseStatement(
              (c) => c
                ..pattern = _statusPattern(decoder.statuses)
                ..body = decoder.body,
            ),
          ),
        )
        ..defaultCase = _defaultDecoder(groups[null]),
    );
  }

  cb.Code _defaultDecoder(List<ResponseBranch>? branches) {
    if (branches != null) {
      return _responseMediaDecoder(branches);
    } else if (plan.isUnion) {
      return cb
          .refer(plan.unknownName)
          .newInstance([cb.refer('response')])
          .returned
          .statement;
    } else if (plan.isError) {
      return cb.literalNull.returned.statement;
    } else if (plan.types.length == 1) {
      return _responseMediaDecoder([
        plan.branches.firstWhere((b) => b.type != null),
      ]);
    }
    return cb
        .refer('FormatException')
        .constInstance([cb.literalString('Undeclared success response status')])
        .thrown
        .statement;
  }

  /// Groups consecutive statuses without including gaps owned by other decoders.
  cb.Pattern _statusPattern(List<int> statuses) {
    final sorted = [...statuses]..sort();
    final patterns = <cb.Pattern>[];
    for (var i = 0; i < sorted.length; i++) {
      final first = sorted[i];
      var last = first;
      while (i + 1 < sorted.length && sorted[i + 1] == last + 1) {
        last = sorted[++i];
      }
      if (last - first >= 2) {
        patterns.add(
          cb.Pattern.greaterOrEqualTo(
            cb.literalNum(first),
          ).and(cb.Pattern.lessThan(cb.literalNum(last + 1))),
        );
      } else {
        for (var status = first; status <= last; status++) {
          patterns.add(cb.Pattern.literal(status));
        }
      }
    }
    return patterns.reduce((left, right) => left.or(right));
  }

  cb.Code _responseMediaDecoder(List<ResponseBranch> branches) {
    if (branches.length == 1) {
      return _responseBranchDecoder(branches.single);
    }
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
    return cb.Block.of([
      const cb.Code(
        "final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;",
      ),
      cb.Conditional(
        (b) => b
          ..branches.addAll(
            ordered.map(
              (branch) => cb.Branch(
                (b) => b
                  ..condition = cb.Condition.expression(
                    cb.refer('responseMediaTypeMatches').call([
                      cb.refer('contentType'),
                      cb.CodeExpression(cb.Code(branch.content!.$1.literal)),
                    ]),
                  )
                  ..body = _responseBranchDecoder(branch),
              ),
            ),
          )
          ..orElse = _responseBranchDecoder(branches.first),
      ),
    ]);
  }

  cb.Code _returnValue(ResponseBranch branch, cb.Expression value) {
    if (!plan.isUnion) return value.returned.statement;
    final variant = cb.refer(plan.variantName(branch)!);
    return (branch.type == null
            ? variant.constInstance([])
            : variant.newInstance([value]))
        .returned
        .statement;
  }

  cb.Code _responseBranchDecoder(ResponseBranch branch) {
    final type = branch.type;
    if (type == null) return _returnValue(branch, cb.literalNull);
    final mediaType = branch.content!.$1;
    if (mediaType.test(isJsonLikeMediaType)) {
      final field = branch.field;
      final accessor = field == null ? 'json' : 'json[${field.literal}]';
      final parsed = _fromJson(type, accessor, isOptional: type.isNullable);
      final decoded = field == null
          ? cb.refer('jsonDecode').call([cb.refer('response').property('body')])
          : const cb.CodeExpression(
              cb.Code('jsonDecode(response.body) as Map<String, dynamic>'),
            );
      return cb.Block.of([
        cb.declareFinal('json').assign(decoded).statement,
        _returnValue(branch, parsed),
      ]);
    }
    final decoded = _deserializeNonJson(type);
    if (decoded != null) return _returnValue(branch, decoded);
    final message = mediaType.rebuild(
      (m) => 'Cannot decode $m response into ${irTypeName(type)}',
    );
    return cb.Block.of([
      if (type is! IrPrimitive && type is! IrEnum && type is! IrExtensionType)
        cb.Code(
          '// TODO: Unsupported non-JSON response schema ${message.commentText}\n',
        ),
      cb
          .refer('UnsupportedError')
          .newInstance([cb.CodeExpression(cb.Code(message.literal))])
          .thrown
          .statement,
    ]);
  }

  cb.Expression? _deserializeNonJson(IrType type) {
    final body = cb.refer('response').property('body');
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dynamic_ || PrimitiveKind.string => body,
        PrimitiveKind.int => cb.refer('int').property('parse').call([body]),
        PrimitiveKind.double => cb.refer('double').property('parse').call([
          body,
        ]),
        PrimitiveKind.bool =>
          body
              .property('toLowerCase')
              .call([])
              .equalTo(cb.literalString('true')),
        PrimitiveKind.bytes => cb.refer('Uint8List').property('fromList').call([
          cb.refer('response').property('bodyBytes'),
        ]),
        _ => null,
      },
      IrEnum(:final name) => cb.refer(name).property('fromJson').call([body]),
      IrExtensionType() => _fromJson(type, 'response.body'),
      _ => null,
    };
  }
}
