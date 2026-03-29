// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt27ResponseFormatType {const Prompt27ResponseFormatType._(this.value);

factory Prompt27ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt27ResponseFormatType._(json),
}; }

static const Prompt27ResponseFormatType jsonObject = Prompt27ResponseFormatType._('json_object');

static const Prompt27ResponseFormatType jsonSchema = Prompt27ResponseFormatType._('json_schema');

static const List<Prompt27ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt27ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt27ResponseFormatType($value)'; } 
 }
final class Prompt27ResponseFormat {const Prompt27ResponseFormat({this.jsonSchema, this.type, });

factory Prompt27ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt27ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt27ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt27ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt27ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt27ResponseFormatType Function()? type, }) { return Prompt27ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt27ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt27ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
