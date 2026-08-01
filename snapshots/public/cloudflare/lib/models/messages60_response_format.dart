// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages60ResponseFormatType {const Messages60ResponseFormatType._(this.value);

factory Messages60ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages60ResponseFormatType._(json),
}; }

static const Messages60ResponseFormatType jsonObject = Messages60ResponseFormatType._('json_object');

static const Messages60ResponseFormatType jsonSchema = Messages60ResponseFormatType._('json_schema');

static const List<Messages60ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages60ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages60ResponseFormatType($value)'; } 
 }
@immutable final class Messages60ResponseFormat {const Messages60ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages60ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages60ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages60ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages60ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages60ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages60ResponseFormatType? Function()? type, }) { return Messages60ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages60ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages60ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
