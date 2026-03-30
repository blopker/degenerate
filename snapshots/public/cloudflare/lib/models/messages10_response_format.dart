// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages10ResponseFormatType {const Messages10ResponseFormatType._(this.value);

factory Messages10ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages10ResponseFormatType._(json),
}; }

static const Messages10ResponseFormatType jsonObject = Messages10ResponseFormatType._('json_object');

static const Messages10ResponseFormatType jsonSchema = Messages10ResponseFormatType._('json_schema');

static const List<Messages10ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages10ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages10ResponseFormatType($value)'; } 
 }
final class Messages10ResponseFormat {const Messages10ResponseFormat({this.jsonSchema, this.type, });

factory Messages10ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages10ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages10ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages10ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages10ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages10ResponseFormatType Function()? type, }) { return Messages10ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages10ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages10ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
