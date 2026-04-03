// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt18ResponseFormatType {const Prompt18ResponseFormatType._(this.value);

factory Prompt18ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt18ResponseFormatType._(json),
}; }

static const Prompt18ResponseFormatType jsonObject = Prompt18ResponseFormatType._('json_object');

static const Prompt18ResponseFormatType jsonSchema = Prompt18ResponseFormatType._('json_schema');

static const List<Prompt18ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt18ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt18ResponseFormatType($value)'; } 
 }
@immutable final class Prompt18ResponseFormat {const Prompt18ResponseFormat({this.jsonSchema, this.type, });

factory Prompt18ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt18ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt18ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt18ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt18ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt18ResponseFormatType Function()? type, }) { return Prompt18ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt18ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt18ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
