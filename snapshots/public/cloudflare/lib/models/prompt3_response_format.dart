// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt3ResponseFormatType {const Prompt3ResponseFormatType._(this.value);

factory Prompt3ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt3ResponseFormatType._(json),
}; }

static const Prompt3ResponseFormatType jsonObject = Prompt3ResponseFormatType._('json_object');

static const Prompt3ResponseFormatType jsonSchema = Prompt3ResponseFormatType._('json_schema');

static const List<Prompt3ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt3ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt3ResponseFormatType($value)'; } 
 }
final class Prompt3ResponseFormat {const Prompt3ResponseFormat({this.jsonSchema, this.type, });

factory Prompt3ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt3ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt3ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt3ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt3ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt3ResponseFormatType Function()? type, }) { return Prompt3ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt3ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt3ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
