// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages40ResponseFormatType {const Messages40ResponseFormatType._(this.value);

factory Messages40ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages40ResponseFormatType._(json),
}; }

static const Messages40ResponseFormatType jsonObject = Messages40ResponseFormatType._('json_object');

static const Messages40ResponseFormatType jsonSchema = Messages40ResponseFormatType._('json_schema');

static const List<Messages40ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages40ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages40ResponseFormatType($value)'; } 
 }
@immutable final class Messages40ResponseFormat {const Messages40ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages40ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages40ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages40ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages40ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages40ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages40ResponseFormatType? Function()? type, }) { return Messages40ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages40ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages40ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
