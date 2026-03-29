// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt34ResponseFormatType {const Prompt34ResponseFormatType._(this.value);

factory Prompt34ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt34ResponseFormatType._(json),
}; }

static const Prompt34ResponseFormatType jsonObject = Prompt34ResponseFormatType._('json_object');

static const Prompt34ResponseFormatType jsonSchema = Prompt34ResponseFormatType._('json_schema');

static const List<Prompt34ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt34ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt34ResponseFormatType($value)'; } 
 }
final class Prompt34ResponseFormat {const Prompt34ResponseFormat({this.jsonSchema, this.type, });

factory Prompt34ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt34ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt34ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt34ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt34ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt34ResponseFormatType Function()? type, }) { return Prompt34ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt34ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt34ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
