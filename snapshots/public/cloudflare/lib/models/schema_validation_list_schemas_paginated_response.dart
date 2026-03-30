// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_public_schema.dart';final class SchemaValidationListSchemasPaginatedResponse {const SchemaValidationListSchemasPaginatedResponse({required this.result});

factory SchemaValidationListSchemasPaginatedResponse.fromJson(Map<String, dynamic> json) { return SchemaValidationListSchemasPaginatedResponse(
  result: (json['result'] as List<dynamic>).map((e) => ShieldPublicSchema.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldPublicSchema> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
SchemaValidationListSchemasPaginatedResponse copyWith({List<ShieldPublicSchema>? result}) { return SchemaValidationListSchemasPaginatedResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationListSchemasPaginatedResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'SchemaValidationListSchemasPaginatedResponse(result: $result)'; } 
 }
