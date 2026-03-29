// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt5ResponseFormatType {const Prompt5ResponseFormatType._(this.value);

factory Prompt5ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt5ResponseFormatType._(json),
}; }

static const Prompt5ResponseFormatType jsonObject = Prompt5ResponseFormatType._('json_object');

static const Prompt5ResponseFormatType jsonSchema = Prompt5ResponseFormatType._('json_schema');

static const List<Prompt5ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt5ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt5ResponseFormatType($value)'; } 
 }
final class Prompt5ResponseFormat {const Prompt5ResponseFormat({this.jsonSchema, this.type, });

factory Prompt5ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt5ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt5ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt5ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Prompt5ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt5ResponseFormatType Function()? type, }) { return Prompt5ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt5ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt5ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
