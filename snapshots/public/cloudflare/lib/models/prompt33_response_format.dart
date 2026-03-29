// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt33ResponseFormatType {const Prompt33ResponseFormatType._(this.value);

factory Prompt33ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt33ResponseFormatType._(json),
}; }

static const Prompt33ResponseFormatType jsonObject = Prompt33ResponseFormatType._('json_object');

static const Prompt33ResponseFormatType jsonSchema = Prompt33ResponseFormatType._('json_schema');

static const List<Prompt33ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt33ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt33ResponseFormatType($value)'; } 
 }
final class Prompt33ResponseFormat {const Prompt33ResponseFormat({this.jsonSchema, this.type, });

factory Prompt33ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt33ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt33ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt33ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt33ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt33ResponseFormatType Function()? type, }) { return Prompt33ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt33ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt33ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
