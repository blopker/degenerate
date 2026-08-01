// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt2ResponseFormatType {const Prompt2ResponseFormatType._(this.value);

factory Prompt2ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt2ResponseFormatType._(json),
}; }

static const Prompt2ResponseFormatType jsonObject = Prompt2ResponseFormatType._('json_object');

static const Prompt2ResponseFormatType jsonSchema = Prompt2ResponseFormatType._('json_schema');

static const List<Prompt2ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt2ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt2ResponseFormatType($value)'; } 
 }
@immutable final class Prompt2ResponseFormat {const Prompt2ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Prompt2ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt2ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Prompt2ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Prompt2ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt2ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Prompt2ResponseFormatType? Function()? type, }) { return Prompt2ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt2ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt2ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
