// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_messages2.dart';import 'dos_syn_protection_rule.dart';import 'dos_syn_protection_rule_list_response_result_info.dart';@immutable final class DosSynProtectionRuleListResponse {const DosSynProtectionRuleListResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DosSynProtectionRuleListResponse.fromJson(Map<String, dynamic> json) { return DosSynProtectionRuleListResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DosMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DosMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DosSynProtectionRuleListResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => DosSynProtectionRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosMessages2> errors;

final List<DosMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DosSynProtectionRuleListResponseResultInfo? resultInfo;

final List<DosSynProtectionRule>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DosSynProtectionRuleListResponse copyWith({List<DosMessages2>? errors, List<DosMessages2>? messages, bool? success, DosSynProtectionRuleListResponseResultInfo Function()? resultInfo, List<DosSynProtectionRule> Function()? result, }) { return DosSynProtectionRuleListResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosSynProtectionRuleListResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DosSynProtectionRuleListResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
