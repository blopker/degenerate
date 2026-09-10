// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_message.dart';import 'update_account_entrypoint_ruleset_response_result.dart';@immutable final class UpdateAccountEntrypointRulesetResponse {const UpdateAccountEntrypointRulesetResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory UpdateAccountEntrypointRulesetResponse.fromJson(Map<String, dynamic> json) { return UpdateAccountEntrypointRulesetResponse(
  errors: json['errors'],
  messages: (json['messages'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: UpdateAccountEntrypointRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'],
); }

final dynamic errors;

/// A list of warning messages.
final List<RulesetsMessage> messages;

final UpdateAccountEntrypointRulesetResponseResult result;

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
UpdateAccountEntrypointRulesetResponse copyWith({dynamic Function()? errors, List<RulesetsMessage>? messages, UpdateAccountEntrypointRulesetResponseResult? result, dynamic Function()? success, }) { return UpdateAccountEntrypointRulesetResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateAccountEntrypointRulesetResponse &&
          errors == other.errors &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(errors, Object.hashAll(messages), result, success); } 
@override String toString() { return 'UpdateAccountEntrypointRulesetResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
