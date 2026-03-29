// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt30ResponseFormatType {const Prompt30ResponseFormatType._(this.value);

factory Prompt30ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt30ResponseFormatType._(json),
}; }

static const Prompt30ResponseFormatType jsonObject = Prompt30ResponseFormatType._('json_object');

static const Prompt30ResponseFormatType jsonSchema = Prompt30ResponseFormatType._('json_schema');

static const List<Prompt30ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt30ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt30ResponseFormatType($value)'; } 
 }
final class Prompt30ResponseFormat {const Prompt30ResponseFormat({this.jsonSchema, this.type, });

factory Prompt30ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt30ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt30ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt30ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt30ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt30ResponseFormatType Function()? type, }) { return Prompt30ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt30ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt30ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
