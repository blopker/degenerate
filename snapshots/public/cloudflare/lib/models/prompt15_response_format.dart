// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt15ResponseFormatType {const Prompt15ResponseFormatType._(this.value);

factory Prompt15ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt15ResponseFormatType._(json),
}; }

static const Prompt15ResponseFormatType jsonObject = Prompt15ResponseFormatType._('json_object');

static const Prompt15ResponseFormatType jsonSchema = Prompt15ResponseFormatType._('json_schema');

static const List<Prompt15ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt15ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt15ResponseFormatType($value)'; } 
 }
final class Prompt15ResponseFormat {const Prompt15ResponseFormat({this.jsonSchema, this.type, });

factory Prompt15ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt15ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt15ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt15ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt15ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt15ResponseFormatType Function()? type, }) { return Prompt15ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt15ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt15ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
