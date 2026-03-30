// GENERATED CODE - DO NOT MODIFY BY HAND

import 'user_agent_blocking_rules_delete_a_user_agent_blocking_rule_response_result.dart';final class UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse {const UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse({this.result});

factory UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse.fromJson(Map<String, dynamic> json) { return UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse(
  result: json['result'] != null ? UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse copyWith({UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult Function()? result}) { return UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponse(result: $result)'; } 
 }
