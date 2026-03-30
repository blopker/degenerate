// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_delete_domains_response_result.dart';import 'email_security_message.dart';final class EmailSecurityDeleteDomainsResponse {const EmailSecurityDeleteDomainsResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory EmailSecurityDeleteDomainsResponse.fromJson(Map<String, dynamic> json) { return EmailSecurityDeleteDomainsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>).map((e) => EmailSecurityDeleteDomainsResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSecurityMessage> errors;

final List<EmailSecurityMessage> messages;

final bool success;

final List<EmailSecurityDeleteDomainsResponseResult> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
EmailSecurityDeleteDomainsResponse copyWith({List<EmailSecurityMessage>? errors, List<EmailSecurityMessage>? messages, bool? success, List<EmailSecurityDeleteDomainsResponseResult>? result, }) { return EmailSecurityDeleteDomainsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDeleteDomainsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result)); } 
@override String toString() { return 'EmailSecurityDeleteDomainsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
