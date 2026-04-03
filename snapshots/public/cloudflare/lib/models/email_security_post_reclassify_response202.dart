// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_message.dart';@immutable final class EmailSecurityPostReclassifyResponse202 {const EmailSecurityPostReclassifyResponse202({required this.errors, required this.messages, required this.success, required this.result, });

factory EmailSecurityPostReclassifyResponse202.fromJson(Map<String, dynamic> json) { return EmailSecurityPostReclassifyResponse202(
  errors: (json['errors'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => EmailSecurityMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
); }

final List<EmailSecurityMessage> errors;

final List<EmailSecurityMessage> messages;

final bool success;

final Map<String,dynamic> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
EmailSecurityPostReclassifyResponse202 copyWith({List<EmailSecurityMessage>? errors, List<EmailSecurityMessage>? messages, bool? success, Map<String,dynamic>? result, }) { return EmailSecurityPostReclassifyResponse202(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityPostReclassifyResponse202 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'EmailSecurityPostReclassifyResponse202(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
