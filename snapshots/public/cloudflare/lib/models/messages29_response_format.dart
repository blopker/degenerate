// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages29ResponseFormatType {const Messages29ResponseFormatType._(this.value);

factory Messages29ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages29ResponseFormatType._(json),
}; }

static const Messages29ResponseFormatType jsonObject = Messages29ResponseFormatType._('json_object');

static const Messages29ResponseFormatType jsonSchema = Messages29ResponseFormatType._('json_schema');

static const List<Messages29ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages29ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages29ResponseFormatType($value)'; } 
 }
final class Messages29ResponseFormat {const Messages29ResponseFormat({this.jsonSchema, this.type, });

factory Messages29ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages29ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages29ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages29ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages29ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages29ResponseFormatType Function()? type, }) { return Messages29ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages29ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages29ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
