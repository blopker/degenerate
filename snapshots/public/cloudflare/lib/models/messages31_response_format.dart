// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages31ResponseFormatType {const Messages31ResponseFormatType._(this.value);

factory Messages31ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages31ResponseFormatType._(json),
}; }

static const Messages31ResponseFormatType jsonObject = Messages31ResponseFormatType._('json_object');

static const Messages31ResponseFormatType jsonSchema = Messages31ResponseFormatType._('json_schema');

static const List<Messages31ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages31ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages31ResponseFormatType($value)'; } 
 }
@immutable final class Messages31ResponseFormat {const Messages31ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages31ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages31ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages31ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages31ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages31ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages31ResponseFormatType? Function()? type, }) { return Messages31ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages31ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages31ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
