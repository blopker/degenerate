// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages33ResponseFormatType {const Messages33ResponseFormatType._(this.value);

factory Messages33ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages33ResponseFormatType._(json),
}; }

static const Messages33ResponseFormatType jsonObject = Messages33ResponseFormatType._('json_object');

static const Messages33ResponseFormatType jsonSchema = Messages33ResponseFormatType._('json_schema');

static const List<Messages33ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages33ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages33ResponseFormatType($value)'; } 
 }
@immutable final class Messages33ResponseFormat {const Messages33ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages33ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages33ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages33ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages33ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages33ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages33ResponseFormatType? Function()? type, }) { return Messages33ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages33ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages33ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
