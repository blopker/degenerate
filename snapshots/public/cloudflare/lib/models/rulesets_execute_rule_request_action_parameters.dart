// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_execute_matched_data.dart';import 'rulesets_execute_overrides.dart';import 'rulesets_ruleset_id.dart';@immutable final class RulesetsExecuteRuleRequestActionParameters {const RulesetsExecuteRuleRequestActionParameters({required this.id, this.matchedData, this.overrides, });

factory RulesetsExecuteRuleRequestActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsExecuteRuleRequestActionParameters(
  id: RulesetsRulesetId.fromJson(json['id'] as String),
  matchedData: json['matched_data'] != null ? RulesetsExecuteMatchedData.fromJson(json['matched_data'] as Map<String, dynamic>) : null,
  overrides: json['overrides'] != null ? RulesetsExecuteOverrides.fromJson(json['overrides'] as Map<String, dynamic>) : null,
); }

/// The unique ID of the ruleset.
final RulesetsRulesetId id;

final RulesetsExecuteMatchedData? matchedData;

final RulesetsExecuteOverrides? overrides;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (matchedData != null) 'matched_data': matchedData?.toJson(),
  if (overrides != null) 'overrides': overrides?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
RulesetsExecuteRuleRequestActionParameters copyWith({RulesetsRulesetId? id, RulesetsExecuteMatchedData? Function()? matchedData, RulesetsExecuteOverrides? Function()? overrides, }) { return RulesetsExecuteRuleRequestActionParameters(
  id: id ?? this.id,
  matchedData: matchedData != null ? matchedData() : this.matchedData,
  overrides: overrides != null ? overrides() : this.overrides,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsExecuteRuleRequestActionParameters &&
          id == other.id &&
          matchedData == other.matchedData &&
          overrides == other.overrides; } 
@override int get hashCode { return Object.hash(id, matchedData, overrides); } 
@override String toString() { return 'RulesetsExecuteRuleRequestActionParameters(id: $id, matchedData: $matchedData, overrides: $overrides)'; } 
 }
