// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_basic_operation.dart';import 'shield_messages2.dart';import 'shield_operation.dart';import 'shield_schema_validation_extract_operations_from_schema_response_result.dart';import 'shield_schema_validation_extract_operations_from_schema_response_result_info.dart';@immutable final class ShieldSchemaValidationExtractOperationsFromSchemaResponse {const ShieldSchemaValidationExtractOperationsFromSchemaResponse({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory ShieldSchemaValidationExtractOperationsFromSchemaResponse.fromJson(Map<String, dynamic> json) { return ShieldSchemaValidationExtractOperationsFromSchemaResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ShieldSchemaValidationExtractOperationsFromSchemaResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => ShieldOperation.fromJson(v as Map<String, dynamic>), fromB: (v) => ShieldBasicOperation.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ShieldSchemaValidationExtractOperationsFromSchemaResponseResultInfo? resultInfo;

final List<ShieldSchemaValidationExtractOperationsFromSchemaResponseResult> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
ShieldSchemaValidationExtractOperationsFromSchemaResponse copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, ShieldSchemaValidationExtractOperationsFromSchemaResponseResultInfo Function()? resultInfo, List<ShieldSchemaValidationExtractOperationsFromSchemaResponseResult>? result, }) { return ShieldSchemaValidationExtractOperationsFromSchemaResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaValidationExtractOperationsFromSchemaResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result)); } 
@override String toString() { return 'ShieldSchemaValidationExtractOperationsFromSchemaResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
