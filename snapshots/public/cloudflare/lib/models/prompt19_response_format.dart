// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt19ResponseFormatType {const Prompt19ResponseFormatType._(this.value);

factory Prompt19ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt19ResponseFormatType._(json),
}; }

static const Prompt19ResponseFormatType jsonObject = Prompt19ResponseFormatType._('json_object');

static const Prompt19ResponseFormatType jsonSchema = Prompt19ResponseFormatType._('json_schema');

static const List<Prompt19ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt19ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt19ResponseFormatType($value)'; } 
 }
@immutable final class Prompt19ResponseFormat {const Prompt19ResponseFormat({this.jsonSchema, this.type, });

factory Prompt19ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt19ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt19ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt19ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt19ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt19ResponseFormatType Function()? type, }) { return Prompt19ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt19ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt19ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
