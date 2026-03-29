// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages53ResponseFormatType {const Messages53ResponseFormatType._(this.value);

factory Messages53ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages53ResponseFormatType._(json),
}; }

static const Messages53ResponseFormatType jsonObject = Messages53ResponseFormatType._('json_object');

static const Messages53ResponseFormatType jsonSchema = Messages53ResponseFormatType._('json_schema');

static const List<Messages53ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages53ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages53ResponseFormatType($value)'; } 
 }
final class Messages53ResponseFormat {const Messages53ResponseFormat({this.jsonSchema, this.type, });

factory Messages53ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages53ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages53ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages53ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages53ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages53ResponseFormatType Function()? type, }) { return Messages53ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages53ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages53ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
