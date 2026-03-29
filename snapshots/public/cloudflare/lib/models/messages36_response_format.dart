// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages36ResponseFormatType {const Messages36ResponseFormatType._(this.value);

factory Messages36ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages36ResponseFormatType._(json),
}; }

static const Messages36ResponseFormatType jsonObject = Messages36ResponseFormatType._('json_object');

static const Messages36ResponseFormatType jsonSchema = Messages36ResponseFormatType._('json_schema');

static const List<Messages36ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages36ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages36ResponseFormatType($value)'; } 
 }
final class Messages36ResponseFormat {const Messages36ResponseFormat({this.jsonSchema, this.type, });

factory Messages36ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages36ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages36ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages36ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages36ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages36ResponseFormatType Function()? type, }) { return Messages36ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages36ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages36ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
