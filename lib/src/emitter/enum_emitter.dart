import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import '../naming.dart';
import 'emit_utils.dart';

/// Emits a `final class` from an [IrEnum] that behaves like an enhanced enum.
///
/// Generates: static const values, const constructor, fromJson factory,
/// toJson method. Unknown server values are preserved via the raw `value`
/// field, enabling round-trip fidelity.
class EnumEmitter {
  final IrEnum irEnum;
  const EnumEmitter(this.irEnum);

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

  List<Spec> emit() {
    final deduped = _deduplicatedValues();
    final className = irEnum.name;

    return [
      Class(
        (b) => b
          ..name = className
          ..modifier = ClassModifier.final$
          ..docs.addAll(_buildDocs())
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
                    "$className._('${escapeDartString(pair.$1)}')",
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
                ..type = refer('String')
                ..modifier = FieldModifier.final$,
            ),
          )
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
    final cases = deduped
        .map((pair) => "  '${_escape(pair.$1)}' => ${pair.$2},")
        .join('\n');

    return Constructor(
      (c) => c
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'json'
              ..type = refer('String'),
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
    return Method(
      (m) => m
        ..name = 'toJson'
        ..returns = refer('String')
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

  Method _buildEquals(String className) {
    return Method(
      (m) => m
        ..name = 'operator =='
        ..annotations.add(refer('override'))
        ..returns = refer('bool')
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'other'
              ..type = refer('Object'),
          ),
        )
        ..body = Code(
          'return identical(this, other) ||\n'
          '    other is $className && other.value == value;',
        ),
    );
  }

  Method _buildHashCode() {
    return Method(
      (m) => m
        ..name = 'hashCode'
        ..type = MethodType.getter
        ..annotations.add(refer('override'))
        ..returns = refer('int')
        ..body = const Code('return value.hashCode;'),
    );
  }

  Method _buildToString(String className) {
    return Method(
      (m) => m
        ..name = 'toString'
        ..annotations.add(refer('override'))
        ..returns = refer('String')
        ..body = Code("return '${escapeNameForString(className)}(\$value)';"),
    );
  }

  String _valueName(String value) => enumValueName(value);

  String _escape(String v) => escapeDartString(v);
}
