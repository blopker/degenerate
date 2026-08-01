// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AsyncBatch2RequestsResponseFormatType {const AsyncBatch2RequestsResponseFormatType._(this.value);

factory AsyncBatch2RequestsResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => AsyncBatch2RequestsResponseFormatType._(json),
}; }

static const AsyncBatch2RequestsResponseFormatType jsonObject = AsyncBatch2RequestsResponseFormatType._('json_object');

static const AsyncBatch2RequestsResponseFormatType jsonSchema = AsyncBatch2RequestsResponseFormatType._('json_schema');

static const List<AsyncBatch2RequestsResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AsyncBatch2RequestsResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AsyncBatch2RequestsResponseFormatType($value)'; } 
 }
@immutable final class AsyncBatch2RequestsResponseFormat {const AsyncBatch2RequestsResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory AsyncBatch2RequestsResponseFormat.fromJson(Map<String, dynamic> json) { return AsyncBatch2RequestsResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? AsyncBatch2RequestsResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final AsyncBatch2RequestsResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
AsyncBatch2RequestsResponseFormat copyWith({Omittable<dynamic>? jsonSchema, AsyncBatch2RequestsResponseFormatType? Function()? type, }) { return AsyncBatch2RequestsResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AsyncBatch2RequestsResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'AsyncBatch2RequestsResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
