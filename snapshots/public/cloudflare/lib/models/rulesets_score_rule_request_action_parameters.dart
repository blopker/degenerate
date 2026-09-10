// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_score_increment.dart';@immutable final class RulesetsScoreRuleRequestActionParameters {const RulesetsScoreRuleRequestActionParameters({required this.increment});

factory RulesetsScoreRuleRequestActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsScoreRuleRequestActionParameters(
  increment: RulesetsScoreIncrement.fromJson(json['increment'] as num),
); }

/// A delta to change the score by, which can be either positive or negative.
final RulesetsScoreIncrement increment;

Map<String, dynamic> toJson() { return {
  'increment': increment.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('increment'); } 
RulesetsScoreRuleRequestActionParameters copyWith({RulesetsScoreIncrement? increment}) { return RulesetsScoreRuleRequestActionParameters(
  increment: increment ?? this.increment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsScoreRuleRequestActionParameters &&
          increment == other.increment; } 
@override int get hashCode { return increment.hashCode; } 
@override String toString() { return 'RulesetsScoreRuleRequestActionParameters(increment: $increment)'; } 
 }
