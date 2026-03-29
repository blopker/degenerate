// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages56ResponseFormatType {const Messages56ResponseFormatType._(this.value);

factory Messages56ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages56ResponseFormatType._(json),
}; }

static const Messages56ResponseFormatType jsonObject = Messages56ResponseFormatType._('json_object');

static const Messages56ResponseFormatType jsonSchema = Messages56ResponseFormatType._('json_schema');

static const List<Messages56ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages56ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages56ResponseFormatType($value)'; } 
 }
final class Messages56ResponseFormat {const Messages56ResponseFormat({this.jsonSchema, this.type, });

factory Messages56ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages56ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages56ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages56ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages56ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages56ResponseFormatType Function()? type, }) { return Messages56ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages56ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages56ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
