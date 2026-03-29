// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt11ResponseFormatType {const Prompt11ResponseFormatType._(this.value);

factory Prompt11ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt11ResponseFormatType._(json),
}; }

static const Prompt11ResponseFormatType jsonObject = Prompt11ResponseFormatType._('json_object');

static const Prompt11ResponseFormatType jsonSchema = Prompt11ResponseFormatType._('json_schema');

static const List<Prompt11ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt11ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt11ResponseFormatType($value)'; } 
 }
final class Prompt11ResponseFormat {const Prompt11ResponseFormat({this.jsonSchema, this.type, });

factory Prompt11ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt11ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt11ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt11ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt11ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt11ResponseFormatType Function()? type, }) { return Prompt11ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt11ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt11ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
