// GENERATED CODE - DO NOT MODIFY BY HAND

final class MessagesInnerResponseFormatType {const MessagesInnerResponseFormatType._(this.value);

factory MessagesInnerResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => MessagesInnerResponseFormatType._(json),
}; }

static const MessagesInnerResponseFormatType jsonObject = MessagesInnerResponseFormatType._('json_object');

static const MessagesInnerResponseFormatType jsonSchema = MessagesInnerResponseFormatType._('json_schema');

static const List<MessagesInnerResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessagesInnerResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessagesInnerResponseFormatType($value)'; } 
 }
final class MessagesInnerResponseFormat {const MessagesInnerResponseFormat({this.jsonSchema, this.type, });

factory MessagesInnerResponseFormat.fromJson(Map<String, dynamic> json) { return MessagesInnerResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? MessagesInnerResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final MessagesInnerResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MessagesInnerResponseFormat copyWith({dynamic Function()? jsonSchema, MessagesInnerResponseFormatType Function()? type, }) { return MessagesInnerResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessagesInnerResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'MessagesInnerResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
