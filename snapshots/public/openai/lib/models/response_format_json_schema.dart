// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_format_json_schema_json_schema.dart';/// The type of response format being defined. Always `json_schema`.
@immutable final class ResponseFormatJsonSchemaType {const ResponseFormatJsonSchemaType._(this.value);

factory ResponseFormatJsonSchemaType.fromJson(String json) { return switch (json) {
  'json_schema' => jsonSchema,
  _ => ResponseFormatJsonSchemaType._(json),
}; }

static const ResponseFormatJsonSchemaType jsonSchema = ResponseFormatJsonSchemaType._('json_schema');

static const List<ResponseFormatJsonSchemaType> values = [jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseFormatJsonSchemaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseFormatJsonSchemaType($value)'; } 
 }
/// JSON Schema response format. Used to generate structured JSON responses.
/// Learn more about [Structured Outputs](/docs/guides/structured-outputs).
/// 
@immutable final class ResponseFormatJsonSchema {const ResponseFormatJsonSchema({required this.type, required this.jsonSchema, });

factory ResponseFormatJsonSchema.fromJson(Map<String, dynamic> json) { return ResponseFormatJsonSchema(
  type: ResponseFormatJsonSchemaType.fromJson(json['type'] as String),
  jsonSchema: ResponseFormatJsonSchemaJsonSchema.fromJson(json['json_schema'] as Map<String, dynamic>),
); }

/// The type of response format being defined. Always `json_schema`.
final ResponseFormatJsonSchemaType type;

/// Structured Outputs configuration options, including a JSON Schema.
/// 
final ResponseFormatJsonSchemaJsonSchema jsonSchema;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'json_schema': jsonSchema.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('json_schema'); } 
ResponseFormatJsonSchema copyWith({ResponseFormatJsonSchemaType? type, ResponseFormatJsonSchemaJsonSchema? jsonSchema, }) { return ResponseFormatJsonSchema(
  type: type ?? this.type,
  jsonSchema: jsonSchema ?? this.jsonSchema,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseFormatJsonSchema &&
          type == other.type &&
          jsonSchema == other.jsonSchema; } 
@override int get hashCode { return Object.hash(type, jsonSchema); } 
@override String toString() { return 'ResponseFormatJsonSchema(type: $type, jsonSchema: $jsonSchema)'; } 
 }
