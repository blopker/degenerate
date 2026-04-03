// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt7ResponseFormatType {const Prompt7ResponseFormatType._(this.value);

factory Prompt7ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt7ResponseFormatType._(json),
}; }

static const Prompt7ResponseFormatType jsonObject = Prompt7ResponseFormatType._('json_object');

static const Prompt7ResponseFormatType jsonSchema = Prompt7ResponseFormatType._('json_schema');

static const List<Prompt7ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt7ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt7ResponseFormatType($value)'; } 
 }
@immutable final class Prompt7ResponseFormat {const Prompt7ResponseFormat({this.jsonSchema, this.type, });

factory Prompt7ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt7ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt7ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt7ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt7ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt7ResponseFormatType Function()? type, }) { return Prompt7ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt7ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt7ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
