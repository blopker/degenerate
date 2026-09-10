// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_block_rule_action_parameters_response.dart';@immutable final class RulesetsBlockRuleActionParameters {const RulesetsBlockRuleActionParameters({this.response});

factory RulesetsBlockRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsBlockRuleActionParameters(
  response: json['response'] != null ? RulesetsBlockRuleActionParametersResponse.fromJson(json['response'] as Map<String, dynamic>) : null,
); }

/// The response to show when the block is applied.
final RulesetsBlockRuleActionParametersResponse? response;

Map<String, dynamic> toJson() { return {
  if (response != null) 'response': response?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'response'}.contains(key)); } 
RulesetsBlockRuleActionParameters copyWith({RulesetsBlockRuleActionParametersResponse? Function()? response}) { return RulesetsBlockRuleActionParameters(
  response: response != null ? response() : this.response,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsBlockRuleActionParameters &&
          response == other.response; } 
@override int get hashCode { return response.hashCode; } 
@override String toString() { return 'RulesetsBlockRuleActionParameters(response: $response)'; } 
 }
