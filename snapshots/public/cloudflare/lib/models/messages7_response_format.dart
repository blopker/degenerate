// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages7ResponseFormatType {const Messages7ResponseFormatType._(this.value);

factory Messages7ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Messages7ResponseFormatType._(json),
}; }

static const Messages7ResponseFormatType jsonObject = Messages7ResponseFormatType._('json_object');

static const Messages7ResponseFormatType jsonSchema = Messages7ResponseFormatType._('json_schema');

static const List<Messages7ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages7ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages7ResponseFormatType($value)'; } 
 }
@immutable final class Messages7ResponseFormat {const Messages7ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Messages7ResponseFormat.fromJson(Map<String, dynamic> json) { return Messages7ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Messages7ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Messages7ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Messages7ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Messages7ResponseFormatType? Function()? type, }) { return Messages7ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages7ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Messages7ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
