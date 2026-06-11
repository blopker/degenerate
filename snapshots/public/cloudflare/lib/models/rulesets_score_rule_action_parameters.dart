// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A delta to change the score by, which can be either positive or negative.
extension type const RulesetsScoreIncrement(int value) {
factory RulesetsScoreIncrement.fromJson(num json) => RulesetsScoreIncrement(json.toInt());

num toJson() => value;

}
@immutable final class RulesetsScoreRuleActionParameters {const RulesetsScoreRuleActionParameters({required this.increment});

factory RulesetsScoreRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsScoreRuleActionParameters(
  increment: RulesetsScoreIncrement.fromJson(json['increment'] as num),
); }

/// A delta to change the score by, which can be either positive or negative.
final RulesetsScoreIncrement increment;

Map<String, dynamic> toJson() { return {
  'increment': increment.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('increment'); } 
RulesetsScoreRuleActionParameters copyWith({RulesetsScoreIncrement? increment}) { return RulesetsScoreRuleActionParameters(
  increment: increment ?? this.increment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsScoreRuleActionParameters &&
          increment == other.increment; } 
@override int get hashCode { return increment.hashCode; } 
@override String toString() { return 'RulesetsScoreRuleActionParameters(increment: $increment)'; } 
 }
