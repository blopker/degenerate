// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages51_response_format_variant1_json_schema_json_schema.dart';final class Messages51ResponseFormatVariant1JsonSchemaType {const Messages51ResponseFormatVariant1JsonSchemaType._(this.value);

factory Messages51ResponseFormatVariant1JsonSchemaType.fromJson(String json) { return switch (json) {
  'json_schema' => jsonSchema,
  _ => Messages51ResponseFormatVariant1JsonSchemaType._(json),
}; }

static const Messages51ResponseFormatVariant1JsonSchemaType jsonSchema = Messages51ResponseFormatVariant1JsonSchemaType._('json_schema');

static const List<Messages51ResponseFormatVariant1JsonSchemaType> values = [jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51ResponseFormatVariant1JsonSchemaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51ResponseFormatVariant1JsonSchemaType($value)'; } 
 }
final class Messages51ResponseFormatVariant1JsonSchema {const Messages51ResponseFormatVariant1JsonSchema({required this.jsonSchema, required this.type, });

factory Messages51ResponseFormatVariant1JsonSchema.fromJson(Map<String, dynamic> json) { return Messages51ResponseFormatVariant1JsonSchema(
  jsonSchema: Messages51ResponseFormatVariant1JsonSchemaJsonSchema.fromJson(json['json_schema'] as Map<String, dynamic>),
  type: Messages51ResponseFormatVariant1JsonSchemaType.fromJson(json['type'] as String),
); }

final Messages51ResponseFormatVariant1JsonSchemaJsonSchema jsonSchema;

final Messages51ResponseFormatVariant1JsonSchemaType type;

Map<String, dynamic> toJson() { return {
  'json_schema': jsonSchema.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('json_schema') &&
      json.containsKey('type'); } 
Messages51ResponseFormatVariant1JsonSchema copyWith({Messages51ResponseFormatVariant1JsonSchemaJsonSchema? jsonSchema, Messages51ResponseFormatVariant1JsonSchemaType? type, }) { return Messages51ResponseFormatVariant1JsonSchema(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ResponseFormatVariant1JsonSchema &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages51ResponseFormatVariant1JsonSchema(jsonSchema: $jsonSchema, type: $type)'; } 
 }
