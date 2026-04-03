// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages17ResponseFormatType {const Messages17ResponseFormatType._(this.value);

factory Messages17ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages17ResponseFormatType._(json),
}; }

static const Messages17ResponseFormatType jsonObject = Messages17ResponseFormatType._('json_object');

static const Messages17ResponseFormatType jsonSchema = Messages17ResponseFormatType._('json_schema');

static const List<Messages17ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages17ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages17ResponseFormatType($value)'; } 
 }
@immutable final class Messages17ResponseFormat {const Messages17ResponseFormat({this.jsonSchema, this.type, });

factory Messages17ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages17ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages17ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages17ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages17ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages17ResponseFormatType Function()? type, }) { return Messages17ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages17ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages17ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
