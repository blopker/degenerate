// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages56ResponseFormatType {const Messages56ResponseFormatType._(this.value);

factory Messages56ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages56ResponseFormatType._(json),
}; }

static const Messages56ResponseFormatType jsonObject = Messages56ResponseFormatType._('json_object');

static const Messages56ResponseFormatType jsonSchema = Messages56ResponseFormatType._('json_schema');

static const List<Messages56ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages56ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages56ResponseFormatType($value)'; } 
 }
@immutable final class Messages56ResponseFormat {const Messages56ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages56ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages56ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages56ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages56ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages56ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages56ResponseFormatType? Function()? type, }) { return Messages56ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages56ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages56ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
