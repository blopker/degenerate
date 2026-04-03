// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt52ResponseFormatType {const Prompt52ResponseFormatType._(this.value);

factory Prompt52ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt52ResponseFormatType._(json),
}; }

static const Prompt52ResponseFormatType jsonObject = Prompt52ResponseFormatType._('json_object');

static const Prompt52ResponseFormatType jsonSchema = Prompt52ResponseFormatType._('json_schema');

static const List<Prompt52ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt52ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt52ResponseFormatType($value)'; } 
 }
@immutable final class Prompt52ResponseFormat {const Prompt52ResponseFormat({this.jsonSchema, this.type, });

factory Prompt52ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt52ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt52ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt52ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt52ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt52ResponseFormatType Function()? type, }) { return Prompt52ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt52ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt52ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
