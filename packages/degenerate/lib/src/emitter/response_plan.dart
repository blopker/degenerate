import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// A status/media-type branch and its optional unwrapped response field.
class ResponseBranch {
  const ResponseBranch(this.status, this.content, this.type, {this.field});
  final int? status;
  final (SpecString, IrMediaType)? content;
  final IrType? type;
  final SpecString? field;
}

/// The public data type and decoding branches for one side of ApiResult.
class ResponsePlan {
  ResponsePlan(this.branches, {required this.isError}) {
    for (final branch in branches) {
      final type = branch.type;
      if (type == null) continue;
      final index = types.indexWhere((t) => irTypeName(t) == irTypeName(type));
      if (index < 0) {
        types.add(type);
      } else if (type.isNullable) {
        types[index] = types[index].copyAsNullable();
      }
    }
  }

  final List<ResponseBranch> branches;
  final bool isError;
  final List<IrType> types = [];

  bool get nullable =>
      !isError &&
      branches.any(
        (b) => b.type == null || (types.length == 1 && b.type!.isNullable),
      );

  String get typeName {
    if (types.isEmpty) return isError ? 'Never' : 'void';
    final base = responseUnionType(types.map(_variantTypeName).toList());
    return nullable && base != 'dynamic' ? '$base?' : base;
  }

  String wrap(IrType type, String value) => _wrap(
    types.map(_variantTypeName).toList(),
    types.indexWhere((t) => irTypeName(t) == irTypeName(type)),
    value,
  );

  String _variantTypeName(IrType type) {
    final name = irTypeName(type);
    return types.length > 1 && type.isNullable && name != 'dynamic'
        ? '$name?'
        : name;
  }
}

String responseUnionType(List<String> types) {
  if (types.length == 1) return types.single;
  if (types.length <= 9) return 'OneOf${types.length}<${types.join(', ')}>';
  return 'OneOf9<${types.take(8).join(', ')}, ${responseUnionType(types.sublist(8))}>';
}

String _wrap(List<String> types, int index, String value) {
  if (types.length == 1) return value;
  final type = responseUnionType(types);
  if (types.length > 9 && index >= 8) {
    return '$type.i(${_wrap(types.sublist(8), index - 8, value)})';
  }
  return '$type.${'abcdefghi'[index]}($value)';
}

ResponsePlan planResponses(
  IrOperation operation, {
  required bool errors,
  Map<String, IrType> registry = const {},
  List<String> unwrapFields = const [],
}) {
  final responses =
      operation.responses.entries
          .where(
            (e) => errors ? e.key >= 300 : e.key >= 200 && e.key < 300,
          )
          .toList()
        ..sort((a, b) => a.key.compareTo(b.key));
  final branches = <ResponseBranch>[];
  void add(int? status, IrResponse response) {
    if (response.content.isEmpty) {
      branches.add(ResponseBranch(status, null, null));
      return;
    }
    final preferred = preferredContent(response.content)!.$1;
    final contents = response.content.entries.toList()
      ..sort((a, b) {
        if (a.key == preferred) return -1;
        if (b.key == preferred) return 1;
        return a.key.literal.compareTo(b.key.literal);
      });
    for (final entry in contents) {
      var type = entry.value.schema;
      SpecString? field;
      final resolved = type is IrTypeRef ? registry[type.name] : type;
      if (!errors && resolved is IrObject) {
        for (final name in unwrapFields) {
          final matches = resolved.fields.where(
            (f) => f.originalName.test((s) => s == name),
          );
          if (matches.isEmpty) continue;
          final match = matches.first;
          field = match.originalName;
          type = !match.isRequired ? match.type.copyAsNullable() : match.type;
          break;
        }
      }
      branches.add(
        ResponseBranch(status, (entry.key, entry.value), type, field: field),
      );
    }
  }

  for (final entry in responses) {
    add(entry.key, entry.value);
  }
  // Declared 2xx responses define the success contract. Use default as an
  // error fallback, or for success only when no 2xx response is declared.
  if (operation.defaultResponse != null && (errors || responses.isEmpty)) {
    add(null, operation.defaultResponse!);
  }
  return ResponsePlan(branches, isError: errors);
}
