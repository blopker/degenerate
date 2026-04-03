// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages50ResponseFormatType {const Messages50ResponseFormatType._(this.value);

factory Messages50ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages50ResponseFormatType._(json),
}; }

static const Messages50ResponseFormatType jsonObject = Messages50ResponseFormatType._('json_object');

static const Messages50ResponseFormatType jsonSchema = Messages50ResponseFormatType._('json_schema');

static const List<Messages50ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages50ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages50ResponseFormatType($value)'; } 
 }
@immutable final class Messages50ResponseFormat {const Messages50ResponseFormat({this.jsonSchema, this.type, });

factory Messages50ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages50ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages50ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages50ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages50ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages50ResponseFormatType Function()? type, }) { return Messages50ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages50ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages50ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
