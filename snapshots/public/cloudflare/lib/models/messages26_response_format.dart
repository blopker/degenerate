// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages26ResponseFormatType {const Messages26ResponseFormatType._(this.value);

factory Messages26ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages26ResponseFormatType._(json),
}; }

static const Messages26ResponseFormatType jsonObject = Messages26ResponseFormatType._('json_object');

static const Messages26ResponseFormatType jsonSchema = Messages26ResponseFormatType._('json_schema');

static const List<Messages26ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages26ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages26ResponseFormatType($value)'; } 
 }
@immutable final class Messages26ResponseFormat {const Messages26ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages26ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages26ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages26ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages26ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages26ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages26ResponseFormatType? Function()? type, }) { return Messages26ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages26ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages26ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
