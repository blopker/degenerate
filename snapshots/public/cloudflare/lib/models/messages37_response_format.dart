// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages37ResponseFormatType {const Messages37ResponseFormatType._(this.value);

factory Messages37ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages37ResponseFormatType._(json),
}; }

static const Messages37ResponseFormatType jsonObject = Messages37ResponseFormatType._('json_object');

static const Messages37ResponseFormatType jsonSchema = Messages37ResponseFormatType._('json_schema');

static const List<Messages37ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages37ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages37ResponseFormatType($value)'; } 
 }
@immutable final class Messages37ResponseFormat {const Messages37ResponseFormat({this.jsonSchema, this.type, });

factory Messages37ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages37ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Messages37ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Messages37ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages37ResponseFormat copyWith({dynamic Function()? jsonSchema, Messages37ResponseFormatType Function()? type, }) { return Messages37ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages37ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages37ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
