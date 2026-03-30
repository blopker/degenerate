// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt10ResponseFormatType {const Prompt10ResponseFormatType._(this.value);

factory Prompt10ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt10ResponseFormatType._(json),
}; }

static const Prompt10ResponseFormatType jsonObject = Prompt10ResponseFormatType._('json_object');

static const Prompt10ResponseFormatType jsonSchema = Prompt10ResponseFormatType._('json_schema');

static const List<Prompt10ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt10ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt10ResponseFormatType($value)'; } 
 }
final class Prompt10ResponseFormat {const Prompt10ResponseFormat({this.jsonSchema, this.type, });

factory Prompt10ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt10ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt10ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt10ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt10ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt10ResponseFormatType Function()? type, }) { return Prompt10ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt10ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt10ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
