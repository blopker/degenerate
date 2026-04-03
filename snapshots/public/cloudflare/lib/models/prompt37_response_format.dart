// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt37ResponseFormatType {const Prompt37ResponseFormatType._(this.value);

factory Prompt37ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt37ResponseFormatType._(json),
}; }

static const Prompt37ResponseFormatType jsonObject = Prompt37ResponseFormatType._('json_object');

static const Prompt37ResponseFormatType jsonSchema = Prompt37ResponseFormatType._('json_schema');

static const List<Prompt37ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt37ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt37ResponseFormatType($value)'; } 
 }
@immutable final class Prompt37ResponseFormat {const Prompt37ResponseFormat({this.jsonSchema, this.type, });

factory Prompt37ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt37ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt37ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt37ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt37ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt37ResponseFormatType Function()? type, }) { return Prompt37ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt37ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt37ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
