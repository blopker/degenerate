// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_messages2.dart';import 'email_rule_properties.dart';@immutable final class EmailRuleResponseSingle {const EmailRuleResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory EmailRuleResponseSingle.fromJson(Map<String, dynamic> json) { return EmailRuleResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => EmailMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => EmailMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? EmailRuleProperties.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<EmailMessages2> errors;

final List<EmailMessages2> messages;

/// Whether the API call was successful.
final bool success;

final EmailRuleProperties? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
EmailRuleResponseSingle copyWith({List<EmailMessages2>? errors, List<EmailMessages2>? messages, bool? success, EmailRuleProperties Function()? result, }) { return EmailRuleResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailRuleResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'EmailRuleResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
