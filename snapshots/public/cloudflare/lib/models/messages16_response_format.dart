// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages16ResponseFormatType {const Messages16ResponseFormatType._(this.value);

factory Messages16ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages16ResponseFormatType._(json),
}; }

static const Messages16ResponseFormatType jsonObject = Messages16ResponseFormatType._('json_object');

static const Messages16ResponseFormatType jsonSchema = Messages16ResponseFormatType._('json_schema');

static const List<Messages16ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages16ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages16ResponseFormatType($value)'; } 
 }
final class Messages16ResponseFormat {const Messages16ResponseFormat({this.jsonSchema, this.type, });

factory Messages16ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages16ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages16ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages16ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages16ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages16ResponseFormatType Function()? type, }) { return Messages16ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages16ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages16ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
