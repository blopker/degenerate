import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/response_codegen.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// Emits a sealed class hierarchy from an [IrStatusUnion].
///
/// An operation with multiple distinct response body types gets a sealed
/// union over its status codes (issue #5): one variant per exact code,
/// relational-pattern variants for `2XX`-style ranges, and a fallback —
/// the `default` response when declared, otherwise a generated `$Unknown`
/// variant carrying the raw response.
class StatusUnionEmitter {
  /// Creates an emitter for the given status [union].
  const StatusUnionEmitter(this.union, {this.typeRegistry = const {}});

  /// The status union IR to emit.
  final IrStatusUnion union;

  /// Registry of all known IR types for resolution.
  final Map<String, IrType> typeRegistry;

  String get _unknownClassName => '${union.name}\$Unknown';

  IrStatusVariant? get _defaultVariant =>
      union.variants.where((v) => v.key == 'default').firstOrNull;

  /// Emit the sealed class hierarchy as code_builder specs.
  List<Spec> emit() {
    return [
      _buildBase(),
      for (final variant in union.variants) _buildVariant(variant),
      if (_defaultVariant == null) _buildUnknownVariant(),
    ];
  }

  Class _buildBase() {
    return Class(
      (b) => b
        ..name = union.name
        ..sealed = true
        ..docs.addAll(
          union.description != null
              ? formatDocComment(union.description!)
              : const [],
        )
        ..constructors.add(Constructor((c) => c..constant = true))
        ..constructors.add(_buildParse()),
    );
  }

  Constructor _buildParse() {
    final cases = <String>[];
    // Exact codes first, then ranges, then the fallback — switch
    // expression cases match in order.
    for (final v in union.variants.where((v) => _isExactCode(v.key))) {
      cases.add('  ${v.key} => ${v.className}.parse(response),');
    }
    for (final v in union.variants.where((v) => _isRange(v.key))) {
      final low = int.parse(v.key[0]) * 100;
      cases.add('  >= $low && <= ${low + 99} => ${v.className}.parse(response),');
    }
    final fallback = _defaultVariant != null
        ? '  _ => ${_defaultVariant!.className}.parse(response),'
        : '  _ => $_unknownClassName(response.statusCode, response.body),';
    cases.add(fallback);

    return Constructor(
      (c) => c
        ..name = 'parse'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'response'
              ..type = refer('ApiResponse'),
          ),
        )
        ..docs.add(
          '/// Parse the variant matching the response status code.',
        )
        ..body = Code(
          'return switch (response.statusCode) {\n'
          '${cases.join('\n')}\n'
          '};',
        ),
    );
  }

  Class _buildVariant(IrStatusVariant variant) {
    final schema = variant.schema;
    if (schema == null || variant.mediaType == null) {
      return _buildNoContentVariant(variant);
    }

    final deserialize = buildResponseDeserialize(
      variant.mediaType!,
      schema,
      typeRegistry: typeRegistry,
    );
    final parseBody = StringBuffer();
    if (deserialize.preamble != null) {
      parseBody.writeln(deserialize.preamble);
    }
    parseBody.write(
      'return ${variant.className}(${deserialize.expression});',
    );

    return Class(
      (b) => b
        ..name = variant.className
        ..modifier = ClassModifier.final$
        ..annotations.add(refer('immutable'))
        ..extend = refer(union.name)
        ..docs.add(_variantDoc(variant))
        ..constructors.add(
          Constructor(
            (c) => c
              ..constant = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'data'
                    ..toThis = true,
                ),
              ),
          ),
        )
        ..constructors.add(
          Constructor(
            (c) => c
              ..name = 'parse'
              ..factory = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'response'
                    ..type = refer('ApiResponse'),
                ),
              )
              ..body = Code(parseBody.toString()),
          ),
        )
        ..fields.add(
          Field(
            (f) => f
              ..name = 'data'
              ..modifier = FieldModifier.final$
              ..type = irTypeToReference(schema),
          ),
        )
        ..methods.add(
          buildEqualsOverride(
            'return identical(this, other) ||\n'
            '    other is ${variant.className} && data == other.data;',
          ),
        )
        ..methods.add(buildHashCodeOverride('return data.hashCode;'))
        ..methods.add(
          buildToStringOverride(
            "return '${escapeNameForString(variant.className)}(\$data)';",
          ),
        ),
    );
  }

  Class _buildNoContentVariant(IrStatusVariant variant) {
    return Class(
      (b) => b
        ..name = variant.className
        ..modifier = ClassModifier.final$
        ..annotations.add(refer('immutable'))
        ..extend = refer(union.name)
        ..docs.add(_variantDoc(variant))
        ..constructors.add(Constructor((c) => c..constant = true))
        ..constructors.add(
          Constructor(
            (c) => c
              ..name = 'parse'
              ..factory = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = '_'
                    ..type = refer('ApiResponse'),
                ),
              )
              ..body = Code('return const ${variant.className}();'),
          ),
        )
        ..methods.add(
          buildEqualsOverride(
            'return identical(this, other) || other is ${variant.className};',
          ),
        )
        ..methods.add(
          buildHashCodeOverride('return (${variant.className}).hashCode;'),
        )
        ..methods.add(
          buildToStringOverride(
            "return '${escapeNameForString(variant.className)}()';",
          ),
        ),
    );
  }

  Class _buildUnknownVariant() {
    return Class(
      (b) => b
        ..name = _unknownClassName
        ..modifier = ClassModifier.final$
        ..annotations.add(refer('immutable'))
        ..extend = refer(union.name)
        ..docs.add('/// A response with a status code not declared in the '
            'OpenAPI spec.')
        ..constructors.add(
          Constructor(
            (c) => c
              ..constant = true
              ..requiredParameters.addAll([
                Parameter(
                  (p) => p
                    ..name = 'statusCode'
                    ..toThis = true,
                ),
                Parameter(
                  (p) => p
                    ..name = 'body'
                    ..toThis = true,
                ),
              ]),
          ),
        )
        ..fields.addAll([
          Field(
            (f) => f
              ..name = 'statusCode'
              ..modifier = FieldModifier.final$
              ..type = refer('int'),
          ),
          Field(
            (f) => f
              ..name = 'body'
              ..modifier = FieldModifier.final$
              ..type = refer('String'),
          ),
        ])
        ..methods.add(
          buildEqualsOverride(
            'return identical(this, other) ||\n'
            '    other is $_unknownClassName && statusCode == other.statusCode && body == other.body;',
          ),
        )
        ..methods.add(
          buildHashCodeOverride('return Object.hash(statusCode, body);'),
        )
        ..methods.add(
          buildToStringOverride(
            "return '${escapeNameForString(union.name)}.unknown(\$statusCode)';",
          ),
        ),
    );
  }

  String _variantDoc(IrStatusVariant variant) => switch (variant.key) {
    'default' => '/// The `default` response.',
    _ when _isRange(variant.key) =>
      '/// The `${variant.key}` range response.',
    _ => '/// The `${variant.key}` response.',
  };

  static bool _isExactCode(String key) => int.tryParse(key) != null;

  static bool _isRange(String key) => RegExp(r'^[1-5]XX$').hasMatch(key);
}
