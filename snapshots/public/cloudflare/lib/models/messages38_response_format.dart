// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages38ResponseFormatType {const Messages38ResponseFormatType._(this.value);

factory Messages38ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages38ResponseFormatType._(json),
}; }

static const Messages38ResponseFormatType jsonObject = Messages38ResponseFormatType._('json_object');

static const Messages38ResponseFormatType jsonSchema = Messages38ResponseFormatType._('json_schema');

static const List<Messages38ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages38ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages38ResponseFormatType($value)'; } 
 }
final class Messages38ResponseFormat {const Messages38ResponseFormat({this.jsonSchema, this.type, });

factory Messages38ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages38ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages38ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages38ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages38ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages38ResponseFormatType Function()? type, }) { return Messages38ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages38ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages38ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
