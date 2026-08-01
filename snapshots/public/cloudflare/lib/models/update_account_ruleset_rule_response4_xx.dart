// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_message.dart';@immutable final class UpdateAccountRulesetRuleResponse4Xx {const UpdateAccountRulesetRuleResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, });

factory UpdateAccountRulesetRuleResponse4Xx.fromJson(Map<String, dynamic> json) { return UpdateAccountRulesetRuleResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'],
  success: json['success'],
); }

/// A list of error messages.
final List<RulesetsMessage> errors;

/// A list of warning messages.
final List<RulesetsMessage> messages;

final dynamic result;

final dynamic success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success'); } 
UpdateAccountRulesetRuleResponse4Xx copyWith({List<RulesetsMessage>? errors, List<RulesetsMessage>? messages, dynamic Function()? result, dynamic Function()? success, }) { return UpdateAccountRulesetRuleResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateAccountRulesetRuleResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'UpdateAccountRulesetRuleResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
