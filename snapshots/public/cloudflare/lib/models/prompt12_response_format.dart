// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt12ResponseFormatType {const Prompt12ResponseFormatType._(this.value);

factory Prompt12ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt12ResponseFormatType._(json),
}; }

static const Prompt12ResponseFormatType jsonObject = Prompt12ResponseFormatType._('json_object');

static const Prompt12ResponseFormatType jsonSchema = Prompt12ResponseFormatType._('json_schema');

static const List<Prompt12ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt12ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt12ResponseFormatType($value)'; } 
 }
@immutable final class Prompt12ResponseFormat {const Prompt12ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Prompt12ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt12ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Prompt12ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Prompt12ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt12ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Prompt12ResponseFormatType? Function()? type, }) { return Prompt12ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt12ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt12ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
