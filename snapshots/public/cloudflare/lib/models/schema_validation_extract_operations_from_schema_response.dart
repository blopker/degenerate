// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'schema_validation_extract_operations_from_schema_response_result.dart';import 'shield_basic_operation.dart';import 'shield_operation.dart';@immutable final class SchemaValidationExtractOperationsFromSchemaResponse {const SchemaValidationExtractOperationsFromSchemaResponse({required this.result});

factory SchemaValidationExtractOperationsFromSchemaResponse.fromJson(Map<String, dynamic> json) { return SchemaValidationExtractOperationsFromSchemaResponse(
  result: (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => ShieldOperation.fromJson(v as Map<String, dynamic>), fromB: (v) => ShieldBasicOperation.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<SchemaValidationExtractOperationsFromSchemaResponseResult> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
SchemaValidationExtractOperationsFromSchemaResponse copyWith({List<SchemaValidationExtractOperationsFromSchemaResponseResult>? result}) { return SchemaValidationExtractOperationsFromSchemaResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationExtractOperationsFromSchemaResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'SchemaValidationExtractOperationsFromSchemaResponse(result: $result)'; } 
 }
