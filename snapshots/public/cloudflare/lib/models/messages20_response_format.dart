// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages20ResponseFormatType {const Messages20ResponseFormatType._(this.value);

factory Messages20ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages20ResponseFormatType._(json),
}; }

static const Messages20ResponseFormatType jsonObject = Messages20ResponseFormatType._('json_object');

static const Messages20ResponseFormatType jsonSchema = Messages20ResponseFormatType._('json_schema');

static const List<Messages20ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages20ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages20ResponseFormatType($value)'; } 
 }
final class Messages20ResponseFormat {const Messages20ResponseFormat({this.jsonSchema, this.type, });

factory Messages20ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages20ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages20ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages20ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages20ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages20ResponseFormatType Function()? type, }) { return Messages20ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages20ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages20ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
