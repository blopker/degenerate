// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt36ResponseFormatType {const Prompt36ResponseFormatType._(this.value);

factory Prompt36ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt36ResponseFormatType._(json),
}; }

static const Prompt36ResponseFormatType jsonObject = Prompt36ResponseFormatType._('json_object');

static const Prompt36ResponseFormatType jsonSchema = Prompt36ResponseFormatType._('json_schema');

static const List<Prompt36ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt36ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt36ResponseFormatType($value)'; } 
 }
@immutable final class Prompt36ResponseFormat {const Prompt36ResponseFormat({this.jsonSchema, this.type, });

factory Prompt36ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt36ResponseFormat(
  jsonSchema: json['json_schema'],
  type: json['type'] != null ? Prompt36ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final dynamic jsonSchema;

final Prompt36ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  'json_schema': ?jsonSchema,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt36ResponseFormat copyWith({dynamic Function()? jsonSchema, Prompt36ResponseFormatType Function()? type, }) { return Prompt36ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt36ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt36ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
