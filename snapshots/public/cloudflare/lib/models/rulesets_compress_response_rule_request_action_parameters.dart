// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_compress_response_rule_request_action_parameters_algorithms.dart';@immutable final class RulesetsCompressResponseRuleRequestActionParameters {const RulesetsCompressResponseRuleRequestActionParameters({required this.algorithms});

factory RulesetsCompressResponseRuleRequestActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsCompressResponseRuleRequestActionParameters(
  algorithms: (json['algorithms'] as List<dynamic>).map((e) => RulesetsCompressResponseRuleRequestActionParametersAlgorithms.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Custom order for compression algorithms.
final List<RulesetsCompressResponseRuleRequestActionParametersAlgorithms> algorithms;

Map<String, dynamic> toJson() { return {
  'algorithms': algorithms.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('algorithms'); } 
RulesetsCompressResponseRuleRequestActionParameters copyWith({List<RulesetsCompressResponseRuleRequestActionParametersAlgorithms>? algorithms}) { return RulesetsCompressResponseRuleRequestActionParameters(
  algorithms: algorithms ?? this.algorithms,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsCompressResponseRuleRequestActionParameters &&
          listEquals(algorithms, other.algorithms); } 
@override int get hashCode { return Object.hashAll(algorithms).hashCode; } 
@override String toString() { return 'RulesetsCompressResponseRuleRequestActionParameters(algorithms: $algorithms)'; } 
 }
