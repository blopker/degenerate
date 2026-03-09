import 'dart:io' show Platform;
import 'dart:isolate';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

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

/// Emit and format a [Library] in one step (convenience for tests/single files).
String emitAndFormat(Library library) {
  final formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );
  return formatter.format(emitRaw(library));
}

/// Format all files in parallel using isolates.
///
/// Takes a map of file path -> raw Dart source and returns the same map
/// with values formatted by dart_style. Files that fail to format are
/// kept as-is.
Future<Map<String, String>> formatAllParallel(
  Map<String, String> files, {
  int? concurrency,
}) async {
  concurrency ??= Platform.numberOfProcessors.clamp(1, 16);
  // Only format .dart files; pass through everything else unchanged.
  final dartEntries = <MapEntry<String, String>>[];
  final result = <String, String>{};
  for (final entry in files.entries) {
    if (entry.key.endsWith('.dart')) {
      dartEntries.add(entry);
    } else {
      result[entry.key] = entry.value;
    }
  }
  if (dartEntries.isEmpty) return files;
  final entries = dartEntries;
  final chunkSize = (entries.length / concurrency).ceil();
  final chunks = <List<MapEntry<String, String>>>[];
  for (var i = 0; i < entries.length; i += chunkSize) {
    final end = (i + chunkSize).clamp(0, entries.length);
    chunks.add(entries.sublist(i, end));
  }

  final futures = chunks.map((chunk) {
    final map = {for (final e in chunk) e.key: e.value};
    return Isolate.run(() => _formatChunk(map));
  });

  final formatted = await Future.wait(futures);
  for (final chunk in formatted) {
    result.addAll(chunk);
  }
  return result;
}

/// Format a chunk of files (runs in an isolate).
Map<String, String> _formatChunk(Map<String, String> files) {
  final formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );
  final result = <String, String>{};
  for (final entry in files.entries) {
    try {
      result[entry.key] = formatter.format(entry.value);
    } catch (_) {
      result[entry.key] = entry.value; // keep raw on failure
    }
  }
  return result;
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
  };
}

Reference _primitiveRef(PrimitiveKind kind, bool nullable) {
  final symbol = switch (kind) {
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
  };
}

/// Build the fromJson expression string for a given [IrType].
/// [accessor] is the expression that accesses the JSON value, e.g. "json['key']".
String buildFromJsonCode(
  IrType type,
  String accessor, {
  bool isOptional = false,
  bool paramIsMap = false,
}) {
  final nullSuffix = isOptional ? '?' : '';
  final nullCheck = isOptional ? '$accessor != null\n        ? ' : '';
  final nullElse = isOptional ? '\n        : null' : '';

  return switch (type) {
    IrPrimitive(:final kind) => switch (kind) {
      PrimitiveKind.string => '$accessor as String$nullSuffix',
      PrimitiveKind.int when isOptional =>
        '$accessor != null ? ($accessor as num).toInt() : null',
      PrimitiveKind.int => '($accessor as num).toInt()',
      PrimitiveKind.double when isOptional =>
        '$accessor != null ? ($accessor as num).toDouble() : null',
      PrimitiveKind.double => '($accessor as num).toDouble()',
      PrimitiveKind.num => '$accessor as num$nullSuffix',
      PrimitiveKind.bool => '$accessor as bool$nullSuffix',
      PrimitiveKind.dateTime when isOptional =>
        '$accessor != null ? DateTime.parse($accessor as String) : null',
      PrimitiveKind.dateTime => 'DateTime.parse($accessor as String)',
      PrimitiveKind.uri when isOptional =>
        '$accessor != null ? Uri.parse($accessor as String) : null',
      PrimitiveKind.uri => 'Uri.parse($accessor as String)',
      PrimitiveKind.bigInt when isOptional =>
        '$accessor != null ? BigInt.parse($accessor as String) : null',
      PrimitiveKind.bigInt => 'BigInt.parse($accessor as String)',
      PrimitiveKind.duration when isOptional =>
        '$accessor != null ? Duration(milliseconds: ($accessor as num).toInt()) : null',
      PrimitiveKind.duration =>
        'Duration(milliseconds: ($accessor as num).toInt())',
      PrimitiveKind.bytes when isOptional =>
        '$accessor != null ? base64Decode($accessor as String) : null',
      PrimitiveKind.bytes => 'base64Decode($accessor as String)',
    },
    IrEnum(:final name) when isOptional =>
      '$accessor != null ? $name.fromJson($accessor as String) : null',
    IrEnum(:final name) => '$name.fromJson($accessor as String)',
    IrList(:final items) when isOptional =>
      '($accessor as List<dynamic>$nullSuffix)$nullSuffix.map((e) => ${buildFromJsonCode(items, 'e')}).toList()',
    IrList(:final items) =>
      '($accessor as List<dynamic>).map((e) => ${buildFromJsonCode(items, 'e')}).toList()',
    IrMap(:final values) when isOptional =>
      '($accessor as Map<String, dynamic>$nullSuffix)$nullSuffix.map((k, v) => MapEntry(k, ${buildFromJsonCode(values, 'v')}))',
    IrMap(:final values) =>
      '($accessor as Map<String, dynamic>).map((k, v) => MapEntry(k, ${buildFromJsonCode(values, 'v')}))',
    IrObject(:final name) when isOptional =>
      '$nullCheck$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})$nullElse',
    IrObject(:final name) =>
      '$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})',
    IrTypeRef(:final name) when isOptional =>
      '$nullCheck$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})$nullElse',
    IrTypeRef(:final name) =>
      '$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})',
    IrDiscriminatedUnion(:final name) when isOptional =>
      '$nullCheck$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})$nullElse',
    IrDiscriminatedUnion(:final name) =>
      '$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})',
    IrUntaggedUnion(:final name) when isOptional =>
      '$nullCheck$name.fromJson($accessor)$nullElse',
    IrUntaggedUnion(:final name) => '$name.fromJson($accessor)',
    IrAnyOf(:final name) when isOptional =>
      '$nullCheck$name.fromJson(${paramIsMap ? accessor : '$accessor as Map<String, dynamic>'})$nullElse',
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
      PrimitiveKind.dateTime => '$accessor$q.toIso8601String()',
      PrimitiveKind.uri => '$accessor$q.toString()',
      PrimitiveKind.bigInt => '$accessor$q.toString()',
      PrimitiveKind.duration => '$accessor$q.inMilliseconds',
      PrimitiveKind.bytes => 'base64Encode($accessor)',
      _ => accessor,
    },
    IrEnum() => '$accessor$q.toJson()',
    IrList(:final items) =>
      listItemNeedsToJson(items)
          ? '$accessor$q.map((e) => ${buildToJsonCode(items, 'e', nullable: items.isNullable)}).toList()'
          : accessor,
    IrMap(:final values) =>
      mapValueNeedsToJson(values)
          ? '$accessor$q.map((k, v) => MapEntry(k, ${buildToJsonCode(values, 'v', nullable: values.isNullable)}))'
          : accessor,
    IrObject() => '$accessor$q.toJson()',
    IrTypeRef() => '$accessor$q.toJson()',
    IrDiscriminatedUnion() => '$accessor$q.toJson()',
    IrUntaggedUnion() => '$accessor$q.toJson()',
    IrAnyOf() => '$accessor$q.toJson()',
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
    IrAnyOf() => true,
    IrList() || IrMap() => true,
  };
}

bool mapValueNeedsToJson(IrType type) => listItemNeedsToJson(type);

/// Check whether an [IrType] represents a list (used for equality checks).
bool isListType(IrType type) => type is IrList;

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

/// Reserved names that would shadow identifiers in the enum context.
const enumReservedNames = {
  'json',
  'value',
  'values',
  'index',
  'name',
  'identical',
  'other',
  'hashCode',
  'toString',
  'runtimeType',
  'noSuchMethod',
};

/// Convert an enum string value to a valid Dart enum constant name.
String enumValueName(String value) {
  var name = toCamelCase(value);
  name = sanitizeDartName(name);
  // Escape names that shadow enum-internal identifiers or Dart core types
  // (which would break type annotations in the enum body like `bool get isUnknown`).
  if (enumReservedNames.contains(name) || dartCoreTypeNames.contains(name)) {
    name = '$name\$';
  }
  return name;
}

/// Escape `$` in a name for use inside a Dart single-quoted string literal.
///
/// Names like `$0Request` need `$` escaped to avoid string interpolation.
String escapeNameForString(String name) => name.replaceAll(r'$', r'\$');

/// Escape angle brackets in doc comments to prevent unintended HTML interpretation.
/// Wraps `<content>` in backticks: `<content>` → `` `<content>` ``.
String escapeDocComment(String line) {
  return line.replaceAllMapped(RegExp(r'<(\w+)>'), (m) => '`<${m[1]}>`');
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
  // Ensure the result doesn't start with a digit (for valid Dart file names)
  final result = buf.toString();
  if (RegExp(r'^[0-9]').hasMatch(result)) {
    return 'n$result';
  }
  return result;
}
