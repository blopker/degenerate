// GENERATED CODE - DO NOT MODIFY BY HAND

import 'schema_validation_delete_schema_response_result.dart';final class SchemaValidationDeleteSchemaResponse {const SchemaValidationDeleteSchemaResponse({required this.result});

factory SchemaValidationDeleteSchemaResponse.fromJson(Map<String, dynamic> json) { return SchemaValidationDeleteSchemaResponse(
  result: SchemaValidationDeleteSchemaResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final SchemaValidationDeleteSchemaResponseResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
SchemaValidationDeleteSchemaResponse copyWith({SchemaValidationDeleteSchemaResponseResult? result}) { return SchemaValidationDeleteSchemaResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationDeleteSchemaResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SchemaValidationDeleteSchemaResponse(result: $result)'; } 
 }
