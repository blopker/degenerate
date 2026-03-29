// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages8ResponseFormatType {const Messages8ResponseFormatType._(this.value);

factory Messages8ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages8ResponseFormatType._(json),
}; }

static const Messages8ResponseFormatType jsonObject = Messages8ResponseFormatType._('json_object');

static const Messages8ResponseFormatType jsonSchema = Messages8ResponseFormatType._('json_schema');

static const List<Messages8ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages8ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages8ResponseFormatType($value)'; } 
 }
final class Messages8ResponseFormat {const Messages8ResponseFormat({this.jsonSchema, this.type, });

factory Messages8ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages8ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages8ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages8ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages8ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages8ResponseFormatType Function()? type, }) { return Messages8ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages8ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages8ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
