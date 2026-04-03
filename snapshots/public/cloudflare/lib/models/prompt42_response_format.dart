// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt42ResponseFormatType {const Prompt42ResponseFormatType._(this.value);

factory Prompt42ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt42ResponseFormatType._(json),
}; }

static const Prompt42ResponseFormatType jsonObject = Prompt42ResponseFormatType._('json_object');

static const Prompt42ResponseFormatType jsonSchema = Prompt42ResponseFormatType._('json_schema');

static const List<Prompt42ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt42ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt42ResponseFormatType($value)'; } 
 }
@immutable final class Prompt42ResponseFormat {const Prompt42ResponseFormat({this.jsonSchema, this.type, });

factory Prompt42ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt42ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt42ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt42ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt42ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt42ResponseFormatType Function()? type, }) { return Prompt42ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt42ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt42ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
