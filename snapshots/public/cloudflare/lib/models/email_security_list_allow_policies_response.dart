// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_allow_policy.dart';import 'email_security_message.dart';import 'email_security_result_info.dart';@immutable final class EmailSecurityListAllowPoliciesResponse {const EmailSecurityListAllowPoliciesResponse({required this.errors, required this.messages, required this.success, required this.result, required this.resultInfo, });

factory EmailSecurityListAllowPoliciesResponse.fromJson(Map<String, dynamic> json) { return EmailSecurityListAllowPoliciesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>).map((e) => EmailSecurityAllowPolicy.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: EmailSecurityResultInfo.fromJson(json['result_info'] as Map<String, dynamic>),
); }

final List<EmailSecurityMessage> errors;

final List<EmailSecurityMessage> messages;

final bool success;

final List<EmailSecurityAllowPolicy> result;

final EmailSecurityResultInfo resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((e) => e.toJson()).toList(),
  'result_info': resultInfo.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result') &&
      json.containsKey('result_info'); } 
EmailSecurityListAllowPoliciesResponse copyWith({List<EmailSecurityMessage>? errors, List<EmailSecurityMessage>? messages, bool? success, List<EmailSecurityAllowPolicy>? result, EmailSecurityResultInfo? resultInfo, }) { return EmailSecurityListAllowPoliciesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
  resultInfo: resultInfo ?? this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityListAllowPoliciesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result), resultInfo); } 
@override String toString() { return 'EmailSecurityListAllowPoliciesResponse(errors: $errors, messages: $messages, success: $success, result: $result, resultInfo: $resultInfo)'; } 
 }
