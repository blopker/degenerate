import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/naming.dart';

/// Dart type name for an enum's value kind.
String _dartValueType(PrimitiveKind kind) => switch (kind) {
  PrimitiveKind.int => 'int',
  PrimitiveKind.double => 'double',
  _ => 'String',
};

/// Dart type name for the JSON parameter in fromJson.
String _jsonParamType(PrimitiveKind kind) => switch (kind) {
  PrimitiveKind.int => 'int',
  PrimitiveKind.double => 'double',
  _ => 'String',
};

/// Emits a `final class` from an [IrEnum] that behaves like an enhanced enum.
///
/// Generates: static const values, const constructor, fromJson factory,
/// toJson method. Unknown server values are preserved via the raw `value`
/// field, enabling round-trip fidelity.
class EnumEmitter {
  /// Creates an emitter for the given [irEnum].
  const EnumEmitter(this.irEnum);

  /// The enum IR to emit.
  final IrEnum irEnum;

  /// Computes deduplicated (originalValue, dartName) pairs for all enum values.
  List<(String, String)> _deduplicatedValues() {
    final usedNames = <String>{};
    final result = <(String, String)>[];
    for (final v in irEnum.values) {
      var name = _valueName(v);
      name = deduplicateName(name, usedNames);
      usedNames.add(name);
      result.add((v, name));
    }
    return result;
  }

  /// Emit the enum class as code_builder specs.
  List<Spec> emit() {
    final deduped = _deduplicatedValues();
    final className = irEnum.name;
    final isString = irEnum.valueKind == PrimitiveKind.string;
    final dartType = _dartValueType(irEnum.valueKind);

    return [
      Class(
        (b) => b
          ..name = className
          ..modifier = ClassModifier.final$
          ..annotations.add(refer('immutable'))
          ..docs.addAll(_buildDocs())
          // Private const constructor
          ..constructors.add(
            Constructor(
              (c) => c
                ..name = '_'
                ..constant = true
                ..requiredParameters.add(
                  Parameter(
                    (p) => p
                      ..name = 'value'
                      ..toThis = true,
                  ),
                ),
            ),
          )
          // fromJson factory
          ..constructors.add(_buildFromJson(className, deduped))
          // Static const instances for each known value
          ..fields.addAll(
            deduped.map(
              (pair) => Field(
                (f) => f
                  ..name = pair.$2
                  ..static = true
                  ..modifier = FieldModifier.constant
                  ..type = refer(className)
                  ..assignment = Code(
                    isString
                        ? "$className._('${escapeDartString(pair.$1)}')"
                        : '$className._(${pair.$1})',
                  ),
              ),
            ),
          )
          // Static const list of all known values
          ..fields.add(
            Field(
              (f) => f
                ..name = 'values'
                ..static = true
                ..modifier = FieldModifier.constant
                ..type = refer('List<$className>')
                ..assignment = Code('[${deduped.map((p) => p.$2).join(', ')}]'),
            ),
          )
          // Instance value field
          ..fields.add(
            Field(
              (f) => f
                ..name = 'value'
                ..type = refer(dartType)
                ..modifier = FieldModifier.final$,
            ),
          )
          ..methods.add(_buildToJson())
          ..methods.add(_buildIsUnknown())
          ..methods.add(_buildEquals(className))
          ..methods.add(_buildHashCode())
          ..methods.add(_buildToString(className)),
      ),
    ];
  }

  List<String> _buildDocs() {
    if (irEnum.description == null) return [];
    return formatDocComment(irEnum.description!);
  }

  Constructor _buildFromJson(String className, List<(String, String)> deduped) {
    final isString = irEnum.valueKind == PrimitiveKind.string;
    final jsonType = _jsonParamType(irEnum.valueKind);
    // For non-string enums, deduplicate switch cases (e.g. 0 and -0 both → 0).
    final seenCaseKeys = <String>{};
    final cases = deduped
        .where((pair) {
          final key = isString ? "'${_escape(pair.$1)}'" : pair.$1;
          return seenCaseKeys.add(key);
        })
        .map(
          (pair) => isString
              ? "  '${_escape(pair.$1)}' => ${pair.$2},"
              : '  ${pair.$1} => ${pair.$2},',
        )
        .join('\n');

    return Constructor(
      (c) => c
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'json'
              ..type = refer(jsonType),
          ),
        )
        ..body = Code(
          'return switch (json) {\n'
          '$cases\n'
          '  _ => $className._(json),\n'
          '};',
        ),
    );
  }

  Method _buildToJson() {
    final dartType = _dartValueType(irEnum.valueKind);
    return Method(
      (m) => m
        ..name = 'toJson'
        ..returns = refer(dartType)
        ..body = const Code('return value;'),
    );
  }

  Method _buildIsUnknown() {
    return Method(
      (m) => m
        ..name = 'isUnknown'
        ..type = MethodType.getter
        ..returns = refer('bool')
        ..docs.add(
          '/// Whether this value is unknown (not defined in the OpenAPI spec).',
        )
        ..body = const Code('return !values.contains(this);'),
    );
  }

  Method _buildEquals(String className) => buildEqualsOverride(
    'return identical(this, other) ||\n'
    '    other is $className && other.value == value;',
  );

  Method _buildHashCode() => buildHashCodeOverride('return value.hashCode;');

  Method _buildToString(String className) => buildToStringOverride(
    "return '${escapeNameForString(className)}(\$value)';",
  );

  String _valueName(String value) => enumValueName(value);

  String _escape(String v) => escapeDartString(v);
}
