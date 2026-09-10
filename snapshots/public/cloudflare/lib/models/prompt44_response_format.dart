// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt44ResponseFormatType {const Prompt44ResponseFormatType._(this.value);

factory Prompt44ResponseFormatType.fromJson(String json) { return switch (json) {
  'json_object' => jsonObject,
  'json_schema' => jsonSchema,
  _ => Prompt44ResponseFormatType._(json),
}; }

static const Prompt44ResponseFormatType jsonObject = Prompt44ResponseFormatType._('json_object');

static const Prompt44ResponseFormatType jsonSchema = Prompt44ResponseFormatType._('json_schema');

static const List<Prompt44ResponseFormatType> values = [jsonObject, jsonSchema];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt44ResponseFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt44ResponseFormatType($value)'; } 
 }
@immutable final class Prompt44ResponseFormat {const Prompt44ResponseFormat({this.jsonSchema = const Omittable.absent(), this.type, });

factory Prompt44ResponseFormat.fromJson(Map<String, dynamic> json) { return Prompt44ResponseFormat(
  jsonSchema: json.containsKey('json_schema') ? Omittable(json['json_schema']) : const Omittable.absent(),
  type: json['type'] != null ? Prompt44ResponseFormatType.fromJson(json['type'] as String) : null,
); }

final Omittable<dynamic> jsonSchema;

final Prompt44ResponseFormatType? type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema.isPresent) 'json_schema': jsonSchema.value,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'json_schema', 'type'}.contains(key)); } 
Prompt44ResponseFormat copyWith({Omittable<dynamic>? jsonSchema, Prompt44ResponseFormatType? Function()? type, }) { return Prompt44ResponseFormat(
  jsonSchema: jsonSchema ?? this.jsonSchema,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt44ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'Prompt44ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
