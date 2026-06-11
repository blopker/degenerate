// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_compress_response_rule_action_parameters_algorithms.dart';@immutable final class RulesetsCompressResponseRuleActionParameters {const RulesetsCompressResponseRuleActionParameters({required this.algorithms});

factory RulesetsCompressResponseRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsCompressResponseRuleActionParameters(
  algorithms: (json['algorithms'] as List<dynamic>).map((e) => RulesetsCompressResponseRuleActionParametersAlgorithms.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Custom order for compression algorithms.
final List<RulesetsCompressResponseRuleActionParametersAlgorithms> algorithms;

Map<String, dynamic> toJson() { return {
  'algorithms': algorithms.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('algorithms'); } 
RulesetsCompressResponseRuleActionParameters copyWith({List<RulesetsCompressResponseRuleActionParametersAlgorithms>? algorithms}) { return RulesetsCompressResponseRuleActionParameters(
  algorithms: algorithms ?? this.algorithms,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsCompressResponseRuleActionParameters &&
          listEquals(algorithms, other.algorithms); } 
@override int get hashCode { return Object.hashAll(algorithms).hashCode; } 
@override String toString() { return 'RulesetsCompressResponseRuleActionParameters(algorithms: $algorithms)'; } 
 }
