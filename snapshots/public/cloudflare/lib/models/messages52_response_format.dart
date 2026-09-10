// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages52ResponseFormatType {const Messages52ResponseFormatType._(this.value);

factory Messages52ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages52ResponseFormatType._(json),
}; }

static const Messages52ResponseFormatType jsonObject = Messages52ResponseFormatType._('json_object');

static const Messages52ResponseFormatType jsonSchema = Messages52ResponseFormatType._('json_schema');

static const List<Messages52ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages52ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages52ResponseFormatType($value)'; } 
 }
@immutable final class Messages52ResponseFormat {const Messages52ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages52ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages52ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages52ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages52ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages52ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages52ResponseFormatType? Function()? type, }) { return Messages52ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages52ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages52ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
