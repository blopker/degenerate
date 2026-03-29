// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages46ResponseFormatType {const Messages46ResponseFormatType._(this.value);

factory Messages46ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages46ResponseFormatType._(json),
}; }

static const Messages46ResponseFormatType jsonObject = Messages46ResponseFormatType._('json_object');

static const Messages46ResponseFormatType jsonSchema = Messages46ResponseFormatType._('json_schema');

static const List<Messages46ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages46ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages46ResponseFormatType($value)'; } 
 }
final class Messages46ResponseFormat {const Messages46ResponseFormat({this.jsonSchema, this.type, });

factory Messages46ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages46ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages46ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages46ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages46ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages46ResponseFormatType Function()? type, }) { return Messages46ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages46ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages46ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
