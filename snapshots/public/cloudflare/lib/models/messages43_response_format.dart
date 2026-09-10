// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages43ResponseFormatType {const Messages43ResponseFormatType._(this.value);

factory Messages43ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages43ResponseFormatType._(json),
}; }

static const Messages43ResponseFormatType jsonObject = Messages43ResponseFormatType._('json_object');

static const Messages43ResponseFormatType jsonSchema = Messages43ResponseFormatType._('json_schema');

static const List<Messages43ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages43ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages43ResponseFormatType($value)'; } 
 }
@immutable final class Messages43ResponseFormat {const Messages43ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages43ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages43ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages43ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages43ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages43ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages43ResponseFormatType? Function()? type, }) { return Messages43ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages43ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages43ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
