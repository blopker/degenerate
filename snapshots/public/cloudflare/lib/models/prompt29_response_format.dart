// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt29ResponseFormatType {const Prompt29ResponseFormatType._(this.value);

factory Prompt29ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt29ResponseFormatType._(json),
}; }

static const Prompt29ResponseFormatType jsonObject = Prompt29ResponseFormatType._('json_object');

static const Prompt29ResponseFormatType jsonSchema = Prompt29ResponseFormatType._('json_schema');

static const List<Prompt29ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt29ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt29ResponseFormatType($value)'; } 
 }
@immutable final class Prompt29ResponseFormat {const Prompt29ResponseFormat({this.jsonSchema, this.type, });

factory Prompt29ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt29ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt29ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt29ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt29ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt29ResponseFormatType Function()? type, }) { return Prompt29ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt29ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt29ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
