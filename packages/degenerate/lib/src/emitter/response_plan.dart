import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/naming.dart';

typedef OperationResponsePlans = ({ResponsePlan success, ResponsePlan error});

/// A status/media-type branch and its optional unwrapped response field.
class ResponseBranch {
  const ResponseBranch(
    this.status,
    this.content,
    this.type, {
    this.field,
    this.statusKey,
  });
  final int? status;
  final (SpecString, IrMediaType)? content;
  final IrType? type;
  final SpecString? field;
  final String? statusKey;

  String get statusSuffix => (statusKey ?? status?.toString() ?? 'default')
      .replaceAll('default', 'Default')
      .replaceAll('XX', 'xx');
}

/// One exhaustively matchable status and media response shape.
class ResponseVariant {
  ResponseVariant(this.name, this.branch);
  final String name;
  final ResponseBranch branch;
}

/// The public data type and decoding branches for one side of ApiResult.
class ResponsePlan {
  ResponsePlan(
    this.branches, {
    required this.isError,
    required String name,
    Set<String>? usedNames,
    Set<String>? usedFiles,
  }) {
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
    if (!isUnion) return;
    final suffixes = <ResponseBranch, String>{};
    final shapes = <(String, String?), String>{};
    final allocatedSuffixes = <String>{};
    for (final branch in branches) {
      final shape = (branch.statusSuffix, _branchTypeName(branch));
      suffixes[branch] = shapes.putIfAbsent(shape, () {
        final mediaSuffix =
            branches.any(
              (other) =>
                  other.statusSuffix == branch.statusSuffix &&
                  _branchTypeName(other) != _branchTypeName(branch),
            )
            ? branch.content!.$1.toIdentifier(
                (value) => sanitizeDartName(
                  toPascalCase(value.replaceAll(RegExp('[^a-zA-Z0-9]'), ' ')),
                ),
              )
            : '';
        final suffix = deduplicateName(
          '${branch.statusSuffix}$mediaSuffix',
          allocatedSuffixes,
        );
        allocatedSuffixes.add(suffix);
        return suffix;
      });
    }
    final reserved = usedNames ?? <String>{};
    reserved.addAll(_reservedResponseNames);
    final reservedFiles = usedFiles ?? reserved.map(toSnakeCase).toSet();
    var candidate = name;
    var index = 2;
    while ([
          candidate,
          for (final suffix in allocatedSuffixes) '$candidate$suffix',
          if (hasUnknown) '${candidate}Unknown',
        ].any(reserved.contains) ||
        reservedFiles.contains(toSnakeCase(candidate))) {
      candidate = '$name${index++}';
    }
    unionName = candidate;
    reserved.add(candidate);
    reservedFiles.add(toSnakeCase(candidate));
    for (final entry in suffixes.entries) {
      final variantName = '$candidate${entry.value}';
      _variantNames[entry.key] = variantName;
      if (reserved.add(variantName)) {
        variants.add(ResponseVariant(variantName, entry.key));
      }
    }
    if (hasUnknown) reserved.add(unknownName);
  }

  final List<ResponseBranch> branches;
  final bool isError;
  final List<IrType> types = [];
  String? unionName;
  final List<ResponseVariant> variants = [];
  final Map<ResponseBranch, String> _variantNames = {};

  bool get isUnion =>
      types.length > 1 ||
      (types.isNotEmpty && branches.any((b) => b.type == null));
  bool get hasUnknown => !branches.any((b) => b.status == null);
  String get unknownName => '${unionName}Unknown';

  static String? _branchTypeName(ResponseBranch branch) {
    final type = branch.type;
    if (type == null) return null;
    final name = irTypeName(type);
    return type.isNullable && name != 'dynamic' ? '$name?' : name;
  }

  String variantType(ResponseVariant variant) =>
      _branchTypeName(variant.branch)!;

  bool get nullable =>
      !isError &&
      branches.any(
        (b) => b.type == null || (types.length == 1 && b.type!.isNullable),
      );

  String get typeName {
    if (isUnion) return unionName!;
    if (types.isEmpty) return isError ? 'Never' : 'void';
    final base = irTypeName(types.single);
    return nullable && base != 'dynamic' ? '$base?' : base;
  }

  String? variantName(ResponseBranch branch) => _variantNames[branch];
}

ResponsePlan planResponses(
  IrOperation operation, {
  required bool errors,
  Map<String, IrType> registry = const {},
  List<String> unwrapFields = const [],
  Set<String>? usedNames,
  Set<String>? usedFiles,
}) {
  final responses =
      operation.responses.entries
          .where((e) => errors ? e.key >= 300 : e.key >= 200 && e.key < 300)
          .toList()
        ..sort((a, b) => a.key.compareTo(b.key));
  final branches = <ResponseBranch>[];
  void add(int? status, IrResponse response) {
    if (response.content.isEmpty) {
      branches.add(
        ResponseBranch(status, null, null, statusKey: response.statusKey),
      );
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
        ResponseBranch(
          status,
          (entry.key, entry.value),
          type,
          field: field,
          statusKey: response.statusKey,
        ),
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
  return ResponsePlan(
    branches,
    isError: errors,
    name:
        '${sanitizeDartName(toPascalCase(operation.dartMethodName))}${errors ? 'Error' : 'Success'}',
    usedNames: usedNames,
    usedFiles: usedFiles,
  );
}

/// Core and runtime names that can also be operation response names.
const _reservedResponseNames = {
  'ApiSuccess',
  'ApiError',
  'ApiStreamError',
  'ArgumentError',
  'StateError',
  'UnsupportedError',
  'RangeError',
  'TypeError',
  'AssertionError',
  'UnimplementedError',
  'ConcurrentModificationError',
  'StackOverflowError',
  'OutOfMemoryError',
  'NoSuchMethodError',
  'AbstractClassInstantiationError',
};
