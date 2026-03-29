// GENERATED CODE - DO NOT MODIFY BY HAND

import 'rulesets_execute_sensitivity_level.dart';import 'rulesets_rule_action.dart';import 'rulesets_rule_enabled.dart';import 'rulesets_rule_id.dart';/// A rule-level override.
final class RulesetsExecuteRuleOverrides2 {const RulesetsExecuteRuleOverrides2({this.action, this.enabled, required this.id, this.scoreThreshold, this.sensitivityLevel, });

factory RulesetsExecuteRuleOverrides2.fromJson(Map<String, dynamic> json) { return RulesetsExecuteRuleOverrides2(
  action: json['action'] != null ? RulesetsRuleAction.fromJson(json['action'] as String) : null,
  enabled: json['enabled'] != null ? RulesetsRuleEnabled.fromJson(json['enabled'] as bool) : null,
  id: RulesetsRuleId.fromJson(json['id'] as String),
  scoreThreshold: json['score_threshold'] != null ? (json['score_threshold'] as num).toInt() : null,
  sensitivityLevel: json['sensitivity_level'] != null ? RulesetsExecuteSensitivityLevel.fromJson(json['sensitivity_level'] as String) : null,
); }

/// The action to override the rule with.
final RulesetsRuleAction? action;

/// Whether to enable execution of the rule.
final RulesetsRuleEnabled? enabled;

/// The ID of the rule to override.
final RulesetsRuleId id;

/// The score threshold to use for the rule.
final int? scoreThreshold;

/// The sensitivity level to use for the rule. This option is only applicable for DDoS phases.
final RulesetsExecuteSensitivityLevel? sensitivityLevel;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  'id': id.toJson(),
  'score_threshold': ?scoreThreshold,
  if (sensitivityLevel != null) 'sensitivity_level': sensitivityLevel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
RulesetsExecuteRuleOverrides2 copyWith({RulesetsRuleAction Function()? action, RulesetsRuleEnabled Function()? enabled, RulesetsRuleId? id, int Function()? scoreThreshold, RulesetsExecuteSensitivityLevel Function()? sensitivityLevel, }) { return RulesetsExecuteRuleOverrides2(
  action: action != null ? action() : this.action,
  enabled: enabled != null ? enabled() : this.enabled,
  id: id ?? this.id,
  scoreThreshold: scoreThreshold != null ? scoreThreshold() : this.scoreThreshold,
  sensitivityLevel: sensitivityLevel != null ? sensitivityLevel() : this.sensitivityLevel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsExecuteRuleOverrides2 &&
          action == other.action &&
          enabled == other.enabled &&
          id == other.id &&
          scoreThreshold == other.scoreThreshold &&
          sensitivityLevel == other.sensitivityLevel; } 
@override int get hashCode { return Object.hash(action, enabled, id, scoreThreshold, sensitivityLevel); } 
@override String toString() { return 'RulesetsExecuteRuleOverrides2(action: $action, enabled: $enabled, id: $id, scoreThreshold: $scoreThreshold, sensitivityLevel: $sensitivityLevel)'; } 
 }
