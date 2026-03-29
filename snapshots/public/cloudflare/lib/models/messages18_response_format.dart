// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages18ResponseFormatType {const Messages18ResponseFormatType._(this.value);

factory Messages18ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages18ResponseFormatType._(json),
}; }

static const Messages18ResponseFormatType jsonObject = Messages18ResponseFormatType._('json_object');

static const Messages18ResponseFormatType jsonSchema = Messages18ResponseFormatType._('json_schema');

static const List<Messages18ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages18ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages18ResponseFormatType($value)'; } 
 }
final class Messages18ResponseFormat {const Messages18ResponseFormat({this.jsonSchema, this.type, });

factory Messages18ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages18ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages18ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages18ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages18ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages18ResponseFormatType Function()? type, }) { return Messages18ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages18ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages18ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
