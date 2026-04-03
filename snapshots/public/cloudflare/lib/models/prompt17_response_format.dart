// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt17ResponseFormatType {const Prompt17ResponseFormatType._(this.value);

factory Prompt17ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt17ResponseFormatType._(json),
}; }

static const Prompt17ResponseFormatType jsonObject = Prompt17ResponseFormatType._('json_object');

static const Prompt17ResponseFormatType jsonSchema = Prompt17ResponseFormatType._('json_schema');

static const List<Prompt17ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt17ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt17ResponseFormatType($value)'; } 
 }
@immutable final class Prompt17ResponseFormat {const Prompt17ResponseFormat({this.jsonSchema, this.type, });

factory Prompt17ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt17ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt17ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt17ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt17ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt17ResponseFormatType Function()? type, }) { return Prompt17ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt17ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt17ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
