import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import '../naming.dart';

final _dartEmitter = DartEmitter(
  allocator: Allocator.simplePrefixing(),
  useNullSafetySyntax: true,
);

/// Emit a [Library] to raw (unformatted) Dart source.
String emitRaw(Library library) {
  return library.accept(_dartEmitter).toString();
}

/// Build a type [Reference] from an [IrType].
Reference irTypeToReference(
  IrType type, {
  bool forceNullable = false,
  bool forceNonNullable = false,
}) {
  final nullable = !forceNonNullable && (forceNullable || type.isNullable);
  return switch (type) {
    IrPrimitive(:final kind) => _primitiveRef(kind, nullable),
    IrEnum(:final name) => _maybeNullable(refer(name), nullable),
    IrList(:final items) => _maybeNullable(
      TypeReference(
        (b) => b
          ..symbol = 'List'
          ..types.add(irTypeToReference(items)),
      ),
      nullable,
    ),
    IrMap(:final values) => _maybeNullable(
      TypeReference(
        (b) => b
          ..symbol = 'Map'
          ..types.add(refer('String'))
          ..types.add(irTypeToReference(values)),
      ),
      nullable,
    ),
    IrObject(:final name) => _maybeNullable(refer(name), nullable),
    IrTypeRef(:final name) => _maybeNullable(refer(name), nullable),
    IrDiscriminatedUnion(:final name) => _maybeNullable(refer(name), nullable),
    IrUntaggedUnion(:final name) => _maybeNullable(refer(name), nullable),
    IrAnyOf(:final name) => _maybeNullable(refer(name), nullable),
    IrExtensionType(:final name) => _maybeNullable(refer(name), nullable),
  };
}

Reference _primitiveRef(PrimitiveKind kind, bool nullable) {
  // dynamic is already nullable — never append '?'.
  if (kind == PrimitiveKind.dynamic_) return refer('dynamic');
  final symbol = switch (kind) {
    PrimitiveKind.dynamic_ => 'dynamic', // unreachable, handled above
    PrimitiveKind.string => 'String',
    PrimitiveKind.int => 'int',
    PrimitiveKind.double => 'double',
    PrimitiveKind.num => 'num',
    PrimitiveKind.bool => 'bool',
    PrimitiveKind.dateTime => 'DateTime',
    PrimitiveKind.uri => 'Uri',
    PrimitiveKind.bigInt => 'BigInt',
    PrimitiveKind.duration => 'Duration',
    PrimitiveKind.bytes => 'Uint8List',
  };
  return _maybeNullable(refer(symbol), nullable);
}

Reference _maybeNullable(Reference ref, bool nullable) {
  if (!nullable) return ref;
  // code_builder's TypeReference supports isNullable; for plain Reference
  // we need to wrap as TypeReference or just use the nullable symbol trick.
  final symbol = ref.symbol;
  if (symbol == null) return ref;
  return TypeReference(
    (b) => b
      ..symbol = symbol
      ..isNullable = true
      ..url = ref.url
      ..types.addAll(ref is TypeReference ? ref.types : []),
  );
}

/// Get the Dart type name string for an [IrType].
String irTypeName(IrType type) {
  return switch (type) {
    IrPrimitive(:final kind) => switch (kind) {
      PrimitiveKind.dynamic_ => 'dynamic',
      PrimitiveKind.string => 'String',
      PrimitiveKind.int => 'int',
      PrimitiveKind.double => 'double',
      PrimitiveKind.num => 'num',
      PrimitiveKind.bool => 'bool',
      PrimitiveKind.dateTime => 'DateTime',
      PrimitiveKind.uri => 'Uri',
      PrimitiveKind.bigInt => 'BigInt',
      PrimitiveKind.duration => 'Duration',
      PrimitiveKind.bytes => 'Uint8List',
    },
    IrEnum(:final name) => name,
    IrList(:final items) => 'List<${irTypeName(items)}>',
    IrMap(:final values) => 'Map<String, ${irTypeName(values)}>',
    IrObject(:final name) => name,
    IrTypeRef(:final name) => name,
    IrDiscriminatedUnion(:final name) => name,
    IrUntaggedUnion(:final name) => name,
    IrAnyOf(:final name) => name,
    IrExtensionType(:final name) => name,
  };
}

/// Build the fromJson expression string for a given [IrType].
/// [accessor] is the expression that accesses the JSON value, e.g. "json['key']".
String buildFromJsonCode(
  IrType type,
  String accessor, {
  bool isOptional = false,
  bool paramIsMap = false,
  Map<String, IrType> typeRegistry = const {},
}) {
  // Resolve IrTypeRef to its target if it's a OneOf-eligible union (typedef).
  final resolving = <String>{};
  final resolved = _resolveOneOfRef(type, typeRegistry, resolving);

  // For simple cast types (String, num, bool), nullable cast syntax works directly.
  if (isOptional) {
    final simpleCast = _simpleCastFromJson(resolved, accessor, typeRegistry: typeRegistry, resolving: resolving);
    if (simpleCast != null) return simpleCast;
  }

  final expr = _buildFromJsonNonNull(resolved, accessor, paramIsMap: paramIsMap, typeRegistry: typeRegistry, resolving: resolving);
  if (!isOptional) return expr;
  return '$accessor != null ? $expr : null';
}

/// If [type] is an [IrTypeRef] whose target in [registry] is a OneOf-eligible
/// union, return the target type so we emit parse code instead of `.fromJson()`.
/// [resolving] tracks names being resolved to prevent infinite recursion on
/// circular type references.
IrType _resolveOneOfRef(IrType type, Map<String, IrType> registry, [Set<String>? resolving]) {
  if (type is! IrTypeRef) return type;
  resolving ??= {};
  if (!resolving.add(type.name)) return type; // cycle detected
  final target = registry[type.name];
  if (target == null) return type;
  return switch (target) {
    IrUntaggedUnion(:final variants)
        when isOneOfEligible(variants) &&
            !_isSelfReferencingUnion(type.name, variants) => target,
    IrAnyOf(:final variants)
        when isOneOfEligible(variants) &&
            !_isSelfReferencingUnion(type.name, variants) => target,
    _ => type,
  };
}

/// Check if any variant (recursively through List/Map) references [typeName].
bool _isSelfReferencingUnion(String typeName, List<IrType> variants) {
  bool check(IrType type) => switch (type) {
    IrTypeRef(:final name) => name == typeName,
    IrList(:final items) => check(items),
    IrMap(:final values) => check(values),
    _ => false,
  };
  return variants.any(check);
}

/// Nullable-cast shorthand for types where `as Type?` is sufficient.
String? _simpleCastFromJson(IrType type, String accessor, {Map<String, IrType> typeRegistry = const {}, Set<String>? resolving}) {
  return switch (type) {
    IrPrimitive(:final kind) => switch (kind) {
      PrimitiveKind.dynamic_ => accessor,
      PrimitiveKind.string => '$accessor as String?',
      PrimitiveKind.num => '$accessor as num?',
      PrimitiveKind.bool => '$accessor as bool?',
      _ => null, // needs null-check wrapper
    },
    IrList(:final items) =>
      '($accessor as List<dynamic>?)?.map((e) => ${_buildFromJsonNonNull(items, 'e', typeRegistry: typeRegistry, resolving: resolving)}).toList()',
    IrMap(:final values) =>
      '($accessor as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, ${_buildFromJsonNonNull(values, 'v', typeRegistry: typeRegistry, resolving: resolving)}))',
    _ => null,
  };
}

/// Core non-null fromJson expression for a given type.
String _buildFromJsonNonNull(
  IrType type,
  String accessor, {
  bool paramIsMap = false,
  Map<String, IrType> typeRegistry = const {},
  Set<String>? resolving,
}) {
  // Resolve IrTypeRef to OneOf-eligible union before switching.
  final resolved = _resolveOneOfRef(type, typeRegistry, resolving);
  return switch (resolved) {
    IrPrimitive(:final kind) => switch (kind) {
      PrimitiveKind.dynamic_ => accessor,
      PrimitiveKind.string => '$accessor as String',
      PrimitiveKind.int => '($accessor as num).toInt()',
      PrimitiveKind.double => '($accessor as num).toDouble()',
      PrimitiveKind.num => '$accessor as num',
      PrimitiveKind.bool => '$accessor as bool',
      PrimitiveKind.dateTime => 'DateTime.parse($accessor as String)',
      PrimitiveKind.uri => 'Uri.parse($accessor as String)',
      PrimitiveKind.bigInt => 'BigInt.parse($accessor as String)',
      PrimitiveKind.duration =>
        'Duration(milliseconds: ($accessor as num).toInt())',
      PrimitiveKind.bytes => 'base64Decode($accessor as String)',
    },
    IrEnum(:final name) => '$name.fromJson($accessor as String)',
    IrList(:final items) =>
      '($accessor as List<dynamic>).map((e) => ${_buildFromJsonNonNull(items, 'e', typeRegistry: typeRegistry, resolving: resolving)}).toList()',
    IrMap(:final values) =>
      '($accessor as Map<String, dynamic>).map((k, v) => MapEntry(k, ${_buildFromJsonNonNull(values, 'v', typeRegistry: typeRegistry, resolving: resolving)}))',
    IrUntaggedUnion(:final variants)
        when isOneOfEligible(variants) =>
      buildOneOfParseCode(variants, accessor, typeRegistry: typeRegistry, resolving: resolving),
    IrUntaggedUnion(:final name) => '$name.fromJson($accessor)',
    IrExtensionType(:final name, :final inner) =>
      '$name.fromJson(${_extensionTypeJsonCast(inner, accessor)})',
    IrAnyOf(:final variants) when isOneOfEligible(variants) =>
      buildOneOfParseCode(variants, accessor, typeRegistry: typeRegistry, resolving: resolving),
    // Cycle-detected OneOf typedef: use generated parse helper function.
    IrTypeRef(:final name) when _isOneOfInRegistry(name, typeRegistry) =>
      'parse$name($accessor)',
    // Object, TypeRef, DiscriminatedUnion, AnyOf all use .fromJson(map)
    IrObject(:final name) ||
    IrTypeRef(:final name) ||
    IrDiscriminatedUnion(:final name) ||
    IrAnyOf(:final name) =>
      '$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})',
  };
}

/// Build the toJson expression string for a field value.
/// [accessor] is the expression that accesses the Dart value, e.g. "name".
/// If [nullable] is true, uses null-aware access (`?.`) instead of `.`.
String buildToJsonCode(IrType type, String accessor, {bool nullable = false}) {
  final q = nullable ? '?' : '';
  return switch (type) {
    IrPrimitive(:final kind) => switch (kind) {
      PrimitiveKind.dynamic_ => accessor,
      PrimitiveKind.dateTime => '$accessor$q.toIso8601String()',
      PrimitiveKind.uri || PrimitiveKind.bigInt => '$accessor$q.toString()',
      PrimitiveKind.duration => '$accessor$q.inMilliseconds',
      PrimitiveKind.bytes => 'base64Encode($accessor)',
      _ => accessor,
    },
    IrList(:final items) =>
      listItemNeedsToJson(items)
          ? '$accessor$q.map((e) => ${buildToJsonCode(items, 'e', nullable: items.isNullable)}).toList()'
          : accessor,
    IrMap(:final values) =>
      mapValueNeedsToJson(values)
          ? '$accessor$q.map((k, v) => MapEntry(k, ${buildToJsonCode(values, 'v', nullable: values.isNullable)}))'
          : accessor,
    // All named types with .toJson()
    IrEnum() ||
    IrObject() ||
    IrTypeRef() ||
    IrDiscriminatedUnion() ||
    IrUntaggedUnion() ||
    IrAnyOf() ||
    IrExtensionType() => '$accessor$q.toJson()',
  };
}

bool listItemNeedsToJson(IrType type) {
  return switch (type) {
    IrPrimitive(:final kind) => switch (kind) {
      PrimitiveKind.dateTime ||
      PrimitiveKind.uri ||
      PrimitiveKind.bigInt ||
      PrimitiveKind.duration ||
      PrimitiveKind.bytes => true,
      _ => false,
    },
    IrEnum() ||
    IrObject() ||
    IrTypeRef() ||
    IrDiscriminatedUnion() ||
    IrUntaggedUnion() ||
    IrAnyOf() ||
    IrExtensionType() => true,
    IrList() || IrMap() => true,
  };
}

bool mapValueNeedsToJson(IrType type) => listItemNeedsToJson(type);

/// Cast an accessor to the JSON wire type for an extension type's fromJson.
///
/// For most primitives the JSON type matches the Dart type, so a simple cast
/// suffices. For types like DateTime/Uri the JSON wire type is String.
String _extensionTypeJsonCast(IrPrimitive inner, String accessor) {
  final jsonType = switch (inner.kind) {
    PrimitiveKind.dateTime => 'String',
    PrimitiveKind.uri => 'String',
    PrimitiveKind.bigInt => 'String',
    PrimitiveKind.duration => 'num',
    PrimitiveKind.bytes => 'String',
    PrimitiveKind.dynamic_ => 'dynamic',
    PrimitiveKind.int => 'num',
    PrimitiveKind.double => 'num',
    _ => irTypeName(inner),
  };
  return '$accessor as $jsonType';
}

/// Whether a name in the type registry maps to a OneOf-eligible union
/// (excluding self-referencing types which can't be Dart typedefs).
bool _isOneOfInRegistry(String name, Map<String, IrType> registry) {
  final target = registry[name];
  if (target == null) return false;
  return switch (target) {
    IrUntaggedUnion(:final variants)
        when isOneOfEligible(variants) &&
            !_isSelfReferencingUnion(name, variants) => true,
    IrAnyOf(:final variants)
        when isOneOfEligible(variants) &&
            !_isSelfReferencingUnion(name, variants) => true,
    _ => false,
  };
}

/// Check whether an [IrType] represents a list (used for equality checks).
bool isListType(IrType type) => type is IrList;

// ─── OneOf helpers ───────────────────────────────────────────────

const _oneOfLetters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'];

/// Whether a union type should be emitted as a `typedef X = OneOfN<...>`
/// instead of a sealed class hierarchy.
bool isOneOfEligible(List<IrType> variants) =>
    variants.length >= 2 && variants.length <= 9;

/// Build the `OneOfN<A, B, ...>` type reference for a union's variants.
Reference oneOfTypeReference(List<IrType> variants, {bool nullable = false}) {
  final n = variants.length;
  return _maybeNullable(
    TypeReference(
      (b) => b
        ..symbol = 'OneOf$n'
        ..types.addAll(variants.map((v) => irTypeToReference(v))),
    ),
    nullable,
  );
}

/// Build the `OneOfN.parse(json, fromA: ..., fromB: ..., ...)` expression
/// for deserializing a union value.
String buildOneOfParseCode(
  List<IrType> variants,
  String accessor, {
  bool isOptional = false,
  Map<String, IrType> typeRegistry = const {},
  Set<String>? resolving,
}) {
  final n = variants.length;
  final args = <String>[];

  for (var i = 0; i < variants.length; i++) {
    final variant = variants[i];
    // Clone resolving set per variant so sibling branches don't interfere.
    final branchResolving = resolving != null ? Set<String>.from(resolving) : null;
    args.add('from${_oneOfLetters[i]}: (v) => ${_buildFromJsonNonNull(variant, 'v', typeRegistry: typeRegistry, resolving: branchResolving)}');
  }

  final call = 'OneOf$n.parse($accessor, ${args.join(', ')},)';
  if (!isOptional) return call;
  return '$accessor != null ? $call : null';
}

/// Get the variant class name for a discriminated union variant.
String variantClassName(String baseName, String variantKey) {
  return '$baseName${toPascalCase(variantKey)}';
}

/// Escape a string value for use inside a Dart single-quoted string literal.
String escapeDartString(String value) {
  return value
      .replaceAll(r'\', r'\\')
      .replaceAll("'", r"\'")
      .replaceAll(r'$', r'\$');
}

/// Convert an enum string value to a valid Dart enum constant name.
String enumValueName(String value) {
  var name = toCamelCase(value);
  name = sanitizeFieldName(name);
  // Also escape enum-internal reserved names (value, values, json, etc.)
  if (enumReservedNames.contains(name)) {
    name = '\$$name';
  }
  return name;
}

/// Escape `$` in a name for use inside a Dart single-quoted string literal.
///
/// Names like `$0Request` need `$` escaped to avoid string interpolation.
String escapeNameForString(String name) => name.replaceAll(r'$', r'\$');

/// Escape angle brackets in doc comments to prevent unintended HTML interpretation.
/// Wraps `<content>` in backticks: `<content>` → `` `<content>` ``.
/// Skips content already inside backtick-delimited code spans.
String escapeDocComment(String line) {
  // Split on backtick boundaries, alternating between prose and code spans.
  final parts = line.split('`');
  final buf = StringBuffer();
  for (var i = 0; i < parts.length; i++) {
    if (i.isOdd) {
      // Inside backticks - pass through unchanged.
      buf.write('`${parts[i]}`');
    } else {
      // Outside backticks - escape bare <...> tags.
      buf.write(
        parts[i].replaceAllMapped(RegExp(r'<([^>]+)>'), (m) => '`<${m[1]}>`'),
      );
    }
  }
  return buf.toString();
}

/// Format a description string as `///` doc comment lines.
///
/// Splits on newlines, trims trailing whitespace, and escapes HTML-like tags.
List<String> formatDocComment(String description) {
  return description
      .split('\n')
      .map((l) => '/// ${escapeDocComment(l.trimRight())}')
      .toList();
}

/// Convert a field name to a file-system-friendly snake_case name.
String toSnakeCase(String input) {
  if (input.isEmpty) return input;
  // Strip characters that are not valid in file names / Dart identifiers
  // before converting to snake_case. This handles $-prefixed names (from
  // sanitizeDartName) and apostrophes/special chars from spec names.
  final cleaned = input.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '');
  if (cleaned.isEmpty) return 'unnamed';
  final buf = StringBuffer();
  for (var i = 0; i < cleaned.length; i++) {
    final c = cleaned[i];
    if (c == c.toUpperCase() && c != c.toLowerCase() && i > 0) {
      buf.write('_');
    }
    buf.write(c.toLowerCase());
  }
  var result = buf.toString();
  // Ensure the result doesn't start with a digit (for valid Dart file names)
  if (RegExp(r'^[0-9]').hasMatch(result)) {
    result = 'n$result';
  }
  // Avoid _test suffix - dart test would pick up these files as test files.
  if (result.endsWith('_test')) {
    result = '${result}_';
  }
  return result;
}
