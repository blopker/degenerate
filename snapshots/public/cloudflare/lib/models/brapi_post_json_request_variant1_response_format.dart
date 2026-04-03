// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_json_request_variant1_response_format_json_schema_value.dart';@immutable final class BrapiPostJsonRequestVariant1ResponseFormat {const BrapiPostJsonRequestVariant1ResponseFormat({required this.type, this.jsonSchema, });

factory BrapiPostJsonRequestVariant1ResponseFormat.fromJson(Map<String, dynamic> json) { return BrapiPostJsonRequestVariant1ResponseFormat(
  jsonSchema: (json['json_schema'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, OneOf5.parse(v, fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(), fromC: (v) => v as bool, fromD: (v) => v as Map<String, dynamic>, fromE: (v) => (v as List<dynamic>).map((e) => e as String).toList(),))),
  type: json['type'] as String,
); }

/// Schema for the response format. More information here: https://developers.cloudflare.com/workers-ai/json-mode/
final Map<String,BrapiPostJsonRequestVariant1ResponseFormatJsonSchemaValue>? jsonSchema;

final String type;

Map<String, dynamic> toJson() { return {
  if (jsonSchema != null) 'json_schema': jsonSchema?.map((k, v) => MapEntry(k, v.toJson())),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
BrapiPostJsonRequestVariant1ResponseFormat copyWith({Map<String, BrapiPostJsonRequestVariant1ResponseFormatJsonSchemaValue>? Function()? jsonSchema, String? type, }) { return BrapiPostJsonRequestVariant1ResponseFormat(
  jsonSchema: jsonSchema != null ? jsonSchema() : this.jsonSchema,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostJsonRequestVariant1ResponseFormat &&
          jsonSchema == other.jsonSchema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(jsonSchema, type); } 
@override String toString() { return 'BrapiPostJsonRequestVariant1ResponseFormat(jsonSchema: $jsonSchema, type: $type)'; } 
 }
