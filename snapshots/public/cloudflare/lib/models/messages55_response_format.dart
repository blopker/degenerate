// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages55ResponseFormatType {const Messages55ResponseFormatType._(this.value);

factory Messages55ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages55ResponseFormatType._(json),
}; }

static const Messages55ResponseFormatType jsonObject = Messages55ResponseFormatType._('json_object');

static const Messages55ResponseFormatType jsonSchema = Messages55ResponseFormatType._('json_schema');

static const List<Messages55ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages55ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages55ResponseFormatType($value)'; } 
 }
@immutable final class Messages55ResponseFormat {const Messages55ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages55ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages55ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages55ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages55ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages55ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages55ResponseFormatType? Function()? type, }) { return Messages55ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages55ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages55ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
