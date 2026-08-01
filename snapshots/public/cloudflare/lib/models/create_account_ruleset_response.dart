// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_account_ruleset_response_result.dart';import 'rulesets_message.dart';@immutable final class CreateAccountRulesetResponse {const CreateAccountRulesetResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory CreateAccountRulesetResponse.fromJson(Map<String, dynamic> json) { return CreateAccountRulesetResponse(
  errors: json['errors'],
  messages: (json['messages'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: CreateAccountRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'],
); }

final dynamic errors;

/// A list of warning messages.
final List<RulesetsMessage> messages;

final CreateAccountRulesetResponseResult result;

final dynamic success;

Map<String, dynamic> toJson() { return {
  'errors': errors,
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success'); } 
CreateAccountRulesetResponse copyWith({dynamic Function()? errors, List<RulesetsMessage>? messages, CreateAccountRulesetResponseResult? result, dynamic Function()? success, }) { return CreateAccountRulesetResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAccountRulesetResponse &&
          errors == other.errors &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(errors, Object.hashAll(messages), result, success); } 
@override String toString() { return 'CreateAccountRulesetResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
