// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages21ResponseFormatType {const Messages21ResponseFormatType._(this.value);

factory Messages21ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages21ResponseFormatType._(json),
}; }

static const Messages21ResponseFormatType jsonObject = Messages21ResponseFormatType._('json_object');

static const Messages21ResponseFormatType jsonSchema = Messages21ResponseFormatType._('json_schema');

static const List<Messages21ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages21ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages21ResponseFormatType($value)'; } 
 }
final class Messages21ResponseFormat {const Messages21ResponseFormat({this.jsonSchema, this.type, });

factory Messages21ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages21ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages21ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages21ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages21ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages21ResponseFormatType Function()? type, }) { return Messages21ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages21ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages21ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
