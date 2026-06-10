// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_passive_dns_by_ip.dart';import 'intel_schemas_messages2.dart';import 'intel_schemas_result_info.dart';@immutable final class IntelComponentsSchemasSingleResponse {const IntelComponentsSchemasSingleResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory IntelComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return IntelComponentsSchemasSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => IntelSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IntelSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? IntelSchemasResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? IntelPassiveDnsByIp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<IntelSchemasMessages2> errors;

final List<IntelSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final IntelSchemasResultInfo? resultInfo;

final IntelPassiveDnsByIp? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
IntelComponentsSchemasSingleResponse copyWith({List<IntelSchemasMessages2>? errors, List<IntelSchemasMessages2>? messages, bool? success, IntelSchemasResultInfo Function()? resultInfo, IntelPassiveDnsByIp Function()? result, }) { return IntelComponentsSchemasSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelComponentsSchemasSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'IntelComponentsSchemasSingleResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
