// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt47ResponseFormatType {const Prompt47ResponseFormatType._(this.value);

factory Prompt47ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt47ResponseFormatType._(json),
}; }

static const Prompt47ResponseFormatType jsonObject = Prompt47ResponseFormatType._('json_object');

static const Prompt47ResponseFormatType jsonSchema = Prompt47ResponseFormatType._('json_schema');

static const List<Prompt47ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt47ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt47ResponseFormatType($value)'; } 
 }
final class Prompt47ResponseFormat {const Prompt47ResponseFormat({this.jsonSchema, this.type, });

factory Prompt47ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt47ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt47ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt47ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt47ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt47ResponseFormatType Function()? type, }) { return Prompt47ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt47ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt47ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
