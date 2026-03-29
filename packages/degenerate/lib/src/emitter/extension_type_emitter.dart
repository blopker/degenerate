import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import 'emit_utils.dart';

/// Emits a Dart extension type for a named primitive schema.
///
/// Given `IrExtensionType('UserId', IrPrimitive(string))`, produces:
/// ```dart
/// extension type const UserId(String value) {
///   factory UserId.fromJson(String json) => UserId(json);
///   String toJson() => value;
/// }
/// ```
///
/// For types with parsing (e.g. DateTime from string), the `fromJson`
/// accepts the JSON wire type and parses, while `toJson` serializes back:
/// ```dart
/// extension type const Timestamp(DateTime value) {
///   factory Timestamp.fromJson(String json) => Timestamp(DateTime.parse(json));
///   String toJson() => value.toIso8601String();
/// }
/// ```
class ExtensionTypeEmitter {
  final IrExtensionType type;
  const ExtensionTypeEmitter(this.type);

  List<Spec> emit() {
    final innerRef = irTypeToReference(type.inner);
    final name = type.name;
    final jsonTypeName = _jsonTypeName(type.inner.kind);
    final jsonTypeRef = refer(jsonTypeName);

    final ext = ExtensionType((b) {
      if (type.description != null) {
        b.docs.addAll(formatDocComment(type.description!));
      }
      b
        ..name = name
        ..constant = _canBeConst(type.inner.kind)
        ..primaryConstructorName = ''
        ..representationDeclaration = RepresentationDeclaration((r) {
          r
            ..name = 'value'
            ..declaredRepresentationType = innerRef;
        })
        ..constructors.add(
          Constructor((c) {
            c
              ..factory = true
              ..name = 'fromJson'
              ..requiredParameters.add(
                Parameter((p) {
                  p
                    ..name = 'json'
                    ..type = jsonTypeRef;
                }),
              )
              ..lambda = true
              ..body = Code(_fromJsonBody(type.inner, name));
          }),
        )
        ..methods.add(
          Method((m) {
            m
              ..name = 'toJson'
              ..returns = jsonTypeRef
              ..lambda = true
              ..body = Code(_toJsonBody(type.inner));
          }),
        );
    });

    return [ext];
  }

  /// The JSON wire type for a primitive kind.
  /// Most map to themselves, but DateTime/Uri/BigInt are strings in JSON,
  /// and Duration/bytes are num/string respectively.
  String _jsonTypeName(PrimitiveKind kind) {
    return switch (kind) {
      PrimitiveKind.dynamic_ => 'dynamic',
      PrimitiveKind.dateTime => 'String',
      PrimitiveKind.uri => 'String',
      PrimitiveKind.bigInt => 'String',
      PrimitiveKind.duration => 'num',
      PrimitiveKind.bytes => 'String',
      PrimitiveKind.int || PrimitiveKind.double => 'num',
      _ => irTypeName(IrPrimitive(kind)),
    };
  }

  /// Whether the extension type can use `const` (types with object
  /// representation like DateTime cannot be const).
  bool _canBeConst(PrimitiveKind kind) {
    return switch (kind) {
      PrimitiveKind.string ||
      PrimitiveKind.int ||
      PrimitiveKind.double ||
      PrimitiveKind.num ||
      PrimitiveKind.bool => true,
      PrimitiveKind.dynamic_ => false,
      _ => false,
    };
  }

  /// Build the fromJson body. For simple types just wraps;
  /// for parsed types (DateTime, Uri, etc.) parses from the JSON wire type.
  String _fromJsonBody(IrPrimitive inner, String typeName) {
    // Extension type fromJson params are already typed (String, num, etc.),
    // so use 'json' directly instead of going through primitiveFromJsonExpr
    // which adds casts for untyped accessors.
    return switch (inner.kind) {
      PrimitiveKind.dateTime => '$typeName(DateTime.parse(json))',
      PrimitiveKind.uri => '$typeName(Uri.parse(json))',
      PrimitiveKind.bigInt => '$typeName(BigInt.parse(json))',
      PrimitiveKind.duration =>
        '$typeName(Duration(milliseconds: json.toInt()))',
      PrimitiveKind.bytes => '$typeName(base64Decode(json))',
      PrimitiveKind.int => '$typeName(json.toInt())',
      PrimitiveKind.double => '$typeName(json.toDouble())',
      _ => '$typeName(json)',
    };
  }

  /// Build the toJson body. Serializes back to the JSON wire type.
  String _toJsonBody(IrPrimitive inner) =>
      primitiveToJsonExpr(inner.kind, 'value');
}
