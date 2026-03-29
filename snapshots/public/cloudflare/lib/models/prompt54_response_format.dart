// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt54ResponseFormatType {const Prompt54ResponseFormatType._(this.value);

factory Prompt54ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt54ResponseFormatType._(json),
}; }

static const Prompt54ResponseFormatType jsonObject = Prompt54ResponseFormatType._('json_object');

static const Prompt54ResponseFormatType jsonSchema = Prompt54ResponseFormatType._('json_schema');

static const List<Prompt54ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt54ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt54ResponseFormatType($value)'; } 
 }
final class Prompt54ResponseFormat {const Prompt54ResponseFormat({this.jsonSchema, this.type, });

factory Prompt54ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt54ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt54ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt54ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt54ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt54ResponseFormatType Function()? type, }) { return Prompt54ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt54ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt54ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
