// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt26ResponseFormatType {const Prompt26ResponseFormatType._(this.value);

factory Prompt26ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt26ResponseFormatType._(json),
}; }

static const Prompt26ResponseFormatType jsonObject = Prompt26ResponseFormatType._('json_object');

static const Prompt26ResponseFormatType jsonSchema = Prompt26ResponseFormatType._('json_schema');

static const List<Prompt26ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt26ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt26ResponseFormatType($value)'; } 
 }
@immutable final class Prompt26ResponseFormat {const Prompt26ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Prompt26ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt26ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Prompt26ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Prompt26ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt26ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Prompt26ResponseFormatType? Function()? type, }) { return Prompt26ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt26ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt26ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
