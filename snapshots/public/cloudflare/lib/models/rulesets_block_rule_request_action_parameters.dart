// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_block_rule_request_action_parameters_response.dart';@immutable final class RulesetsBlockRuleRequestActionParameters {const RulesetsBlockRuleRequestActionParameters({this.response});

factory RulesetsBlockRuleRequestActionParameters.fromJson(Map<String, dynamic> json) {return RulesetsBlockRuleRequestActionParameters(
  response: json['response'] != null ? RulesetsBlockRuleRequestActionParametersResponse.fromJson(json['response'] as Map<String, dynamic>) : null,
);}

/// The response to show when the block is applied.
final RulesetsBlockRuleRequestActionParametersResponse? response;

Map<String, dynamic> toJson() {return {
  if (response != null) 'response': response?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'response'}.contains(key));}
RulesetsBlockRuleRequestActionParameters copyWith({RulesetsBlockRuleRequestActionParametersResponse? Function()? response}) {return RulesetsBlockRuleRequestActionParameters(
  response: response != null ? response() : this.response,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RulesetsBlockRuleRequestActionParameters &&
          response == other.response;}
@override int get hashCode {return response.hashCode;}
@override String toString() {return 'RulesetsBlockRuleRequestActionParameters(response: $response)';}
}
