// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages25ResponseFormatType {const Messages25ResponseFormatType._(this.value);

factory Messages25ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages25ResponseFormatType._(json),
}; }

static const Messages25ResponseFormatType jsonObject = Messages25ResponseFormatType._('json_object');

static const Messages25ResponseFormatType jsonSchema = Messages25ResponseFormatType._('json_schema');

static const List<Messages25ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages25ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages25ResponseFormatType($value)'; } 
 }
final class Messages25ResponseFormat {const Messages25ResponseFormat({this.jsonSchema, this.type, });

factory Messages25ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages25ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages25ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages25ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages25ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages25ResponseFormatType Function()? type, }) { return Messages25ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages25ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages25ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
