// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt4ResponseFormatType {const Prompt4ResponseFormatType._(this.value);

factory Prompt4ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt4ResponseFormatType._(json),
}; }

static const Prompt4ResponseFormatType jsonObject = Prompt4ResponseFormatType._('json_object');

static const Prompt4ResponseFormatType jsonSchema = Prompt4ResponseFormatType._('json_schema');

static const List<Prompt4ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt4ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt4ResponseFormatType($value)'; } 
 }
final class Prompt4ResponseFormat {const Prompt4ResponseFormat({this.jsonSchema, this.type, });

factory Prompt4ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt4ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt4ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt4ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt4ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt4ResponseFormatType Function()? type, }) { return Prompt4ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt4ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt4ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
