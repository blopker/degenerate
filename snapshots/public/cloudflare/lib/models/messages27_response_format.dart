// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages27ResponseFormatType {const Messages27ResponseFormatType._(this.value);

factory Messages27ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages27ResponseFormatType._(json),
}; }

static const Messages27ResponseFormatType jsonObject = Messages27ResponseFormatType._('json_object');

static const Messages27ResponseFormatType jsonSchema = Messages27ResponseFormatType._('json_schema');

static const List<Messages27ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages27ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages27ResponseFormatType($value)'; } 
 }
@immutable final class Messages27ResponseFormat {const Messages27ResponseFormat({this.jsonSchema, this.type, });

factory Messages27ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages27ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages27ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages27ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages27ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages27ResponseFormatType Function()? type, }) { return Messages27ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages27ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages27ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
