// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_message.dart';import 'email_security_update_trusted_domain_response_result.dart';final class EmailSecurityUpdateTrustedDomainResponse {const EmailSecurityUpdateTrustedDomainResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory EmailSecurityUpdateTrustedDomainResponse.fromJson(Map<String, dynamic> json) { return EmailSecurityUpdateTrustedDomainResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: EmailSecurityUpdateTrustedDomainResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<EmailSecurityMessage> errors;

final List<EmailSecurityMessage> messages;

final bool success;

final EmailSecurityUpdateTrustedDomainResponseResult result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
EmailSecurityUpdateTrustedDomainResponse copyWith({List<EmailSecurityMessage>? errors, List<EmailSecurityMessage>? messages, bool? success, EmailSecurityUpdateTrustedDomainResponseResult? result, }) { return EmailSecurityUpdateTrustedDomainResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityUpdateTrustedDomainResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'EmailSecurityUpdateTrustedDomainResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
