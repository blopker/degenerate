// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PromptResponseFormatType {const PromptResponseFormatType._(this.value);

factory PromptResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => PromptResponseFormatType._(json),
}; }

static const PromptResponseFormatType jsonObject = PromptResponseFormatType._('json_object');

static const PromptResponseFormatType jsonSchema = PromptResponseFormatType._('json_schema');

static const List<PromptResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PromptResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PromptResponseFormatType($value)'; } 
 }
@immutable final class PromptResponseFormat {const PromptResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory PromptResponseFormat.fromJson(Map<String, dynamic> json) { return PromptResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? PromptResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final PromptResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
PromptResponseFormat copyWith({Omittable<dynamic>? jsonSchema, PromptResponseFormatType? Function()? type, }) { return PromptResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PromptResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'PromptResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
