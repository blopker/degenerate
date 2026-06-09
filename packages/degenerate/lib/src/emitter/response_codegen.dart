import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// A response body deserialization, split into an optional `preamble`
/// statement and the final `expression` producing the typed value.
///
/// Callers operating on a `response` variable (`ApiResponse`) render this
/// either as `return <expression>;` or wrapped in a constructor call.
typedef ResponseDeserialize = ({String? preamble, String expression});

/// Build the deserialization of an `ApiResponse` body into [type].
///
/// [isError] selects the error-side behavior: unsupported non-JSON error
/// schemas deserialize to `null` (surfaced via `ApiError.rawError`) instead
/// of throwing, and enums parse from a JSON-encoded string.
ResponseDeserialize buildResponseDeserialize(
  String mediaType,
  IrType type, {
  bool isError = false,
  Map<String, IrType> typeRegistry = const {},
}) {
  String fromJson(IrType t, String accessor) =>
      buildFromJsonCode(t, accessor, typeRegistry: typeRegistry);

  if (isJsonLikeMediaType(mediaType)) {
    return switch (type) {
      IrList(:final items) => (
        preamble: 'final json = jsonDecode(response.body) as List<dynamic>;',
        expression: 'json.map((e) => ${fromJson(items, 'e')}).toList()',
      ),
      IrMap(:final values) => () {
        final valueExpr = fromJson(values, 'v');
        if (valueExpr == 'v') {
          return (
            preamble: null,
            expression: 'jsonDecode(response.body) as Map<String, dynamic>',
          );
        }
        return (
          preamble: null,
          expression:
              '(jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, $valueExpr))',
        );
      }(),
      IrPrimitive(:final kind) => (
        preamble: null,
        expression: switch (kind) {
          PrimitiveKind.string => 'response.body',
          PrimitiveKind.int => 'int.parse(response.body)',
          PrimitiveKind.double => 'double.parse(response.body)',
          PrimitiveKind.bool => 'jsonDecode(response.body) as bool',
          PrimitiveKind.bytes => fromJson(type, 'jsonDecode(response.body)'),
          _ => 'jsonDecode(response.body)',
        },
      ),
      IrEnum(:final name) when isError => (
        preamble: null,
        expression: '$name.fromJson(jsonDecode(response.body) as String)',
      ),
      // All named types with .fromJson (and extension types).
      _ => (
        preamble: null,
        expression: fromJson(type, 'jsonDecode(response.body)'),
      ),
    };
  }

  final unsupportedMessage =
      'Cannot decode $mediaType '
      '${isError ? 'error' : 'response'} into ${irTypeName(type)}';
  return switch (type) {
    IrPrimitive(:final kind) => (
      preamble: null,
      expression: switch (kind) {
        PrimitiveKind.dynamic_ || PrimitiveKind.string => 'response.body',
        PrimitiveKind.int => 'int.parse(response.body)',
        PrimitiveKind.double => 'double.parse(response.body)',
        PrimitiveKind.bool => "response.body.toLowerCase() == 'true'",
        PrimitiveKind.bytes => 'Uint8List.fromList(response.bodyBytes)',
        _ when isError => 'null',
        _ => "throw UnsupportedError('$unsupportedMessage')",
      },
    ),
    IrEnum(:final name) => (
      preamble: null,
      expression: '$name.fromJson(response.body)',
    ),
    IrExtensionType() when !isError => (
      preamble: null,
      expression: buildFromJsonCode(
        type,
        'response.body',
        typeRegistry: typeRegistry,
      ),
    ),
    _ when isError => (
      preamble:
          '// TODO: Unsupported non-JSON error schema $unsupportedMessage',
      expression: 'null',
    ),
    _ => (
      preamble:
          '// TODO: Unsupported non-JSON response schema $unsupportedMessage',
      expression: "throw UnsupportedError('$unsupportedMessage')",
    ),
  };
}

/// Render a [ResponseDeserialize] as statements ending in a `return` (or a
/// bare `throw` for unsupported schemas).
String renderDeserializeStatements(
  ResponseDeserialize d, {
  String indent = '',
}) {
  final ret = d.expression.startsWith('throw ')
      ? '${d.expression};'
      : 'return ${d.expression};';
  if (d.preamble == null) return ret;
  return '${d.preamble}\n$indent$ret';
}
