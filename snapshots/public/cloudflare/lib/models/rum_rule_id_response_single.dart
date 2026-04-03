// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rum_messages2.dart';import 'rum_rule_id_response_single_result.dart';@immutable final class RumRuleIdResponseSingle {const RumRuleIdResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory RumRuleIdResponseSingle.fromJson(Map<String, dynamic> json) { return RumRuleIdResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => RumMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => RumMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? RumRuleIdResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<RumMessages2> errors;

final List<RumMessages2> messages;

/// Whether the API call was successful.
final bool success;

final RumRuleIdResponseSingleResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
RumRuleIdResponseSingle copyWith({List<RumMessages2>? errors, List<RumMessages2>? messages, bool? success, RumRuleIdResponseSingleResult Function()? result, }) { return RumRuleIdResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumRuleIdResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'RumRuleIdResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
