// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages14ResponseFormatType {const Messages14ResponseFormatType._(this.value);

factory Messages14ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages14ResponseFormatType._(json),
}; }

static const Messages14ResponseFormatType jsonObject = Messages14ResponseFormatType._('json_object');

static const Messages14ResponseFormatType jsonSchema = Messages14ResponseFormatType._('json_schema');

static const List<Messages14ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages14ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages14ResponseFormatType($value)'; } 
 }
@immutable final class Messages14ResponseFormat {const Messages14ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages14ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages14ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages14ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages14ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages14ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages14ResponseFormatType? Function()? type, }) { return Messages14ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages14ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages14ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
