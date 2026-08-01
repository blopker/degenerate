// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PromptInnerResponseFormatType {const PromptInnerResponseFormatType._(this.value);

factory PromptInnerResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => PromptInnerResponseFormatType._(json),
}; }

static const PromptInnerResponseFormatType jsonObject = PromptInnerResponseFormatType._('json_object');

static const PromptInnerResponseFormatType jsonSchema = PromptInnerResponseFormatType._('json_schema');

static const List<PromptInnerResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PromptInnerResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PromptInnerResponseFormatType($value)'; } 
 }
@immutable final class PromptInnerResponseFormat {const PromptInnerResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory PromptInnerResponseFormat.fromJson(Map<String, dynamic> json) { return PromptInnerResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? PromptInnerResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final PromptInnerResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
PromptInnerResponseFormat copyWith({Omittable<dynamic>? jsonSchema, PromptInnerResponseFormatType? Function()? type, }) { return PromptInnerResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PromptInnerResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'PromptInnerResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
