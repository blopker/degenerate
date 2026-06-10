// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_messages2.dart';import 'dos_tcp_flow_protection_rule.dart';import 'dos_tcp_flow_protection_rule_list_response_result_info.dart';@immutable final class DosTcpFlowProtectionRuleListResponse {const DosTcpFlowProtectionRuleListResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DosTcpFlowProtectionRuleListResponse.fromJson(Map<String, dynamic> json) { return DosTcpFlowProtectionRuleListResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DosMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DosMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DosTcpFlowProtectionRuleListResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => DosTcpFlowProtectionRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosMessages2> errors;

final List<DosMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DosTcpFlowProtectionRuleListResponseResultInfo? resultInfo;

final List<DosTcpFlowProtectionRule>? result;

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
DosTcpFlowProtectionRuleListResponse copyWith({List<DosMessages2>? errors, List<DosMessages2>? messages, bool? success, DosTcpFlowProtectionRuleListResponseResultInfo Function()? resultInfo, List<DosTcpFlowProtectionRule> Function()? result, }) { return DosTcpFlowProtectionRuleListResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosTcpFlowProtectionRuleListResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DosTcpFlowProtectionRuleListResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
