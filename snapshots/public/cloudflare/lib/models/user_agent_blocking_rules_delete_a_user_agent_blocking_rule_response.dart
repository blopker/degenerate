// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_messages2.dart';import 'user_agent_blocking_rules_delete_a_user_agent_blocking_rule_response_result.dart';@immutable final class UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse {const UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse({required this.result, required this.errors, required this.messages, required this.success, });

factory UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse.fromJson(Map<String, dynamic> json) { return UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse(
  result: UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  errors: (json['errors'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult result;

final List<FirewallMessages2> errors;

final List<FirewallMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse copyWith({UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult? result, List<FirewallMessages2>? errors, List<FirewallMessages2>? messages, bool? success, }) { return UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse(
  result: result ?? this.result,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse &&
          result == other.result &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse(result: $result, errors: $errors, messages: $messages, success: $success)'; } 
 }
