// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_repository_ruleset_edited_changes_rules_updated_changes_configuration.dart';import 'webhook_repository_ruleset_edited_changes_rules_updated_changes_pattern.dart';import 'webhook_repository_ruleset_edited_changes_rules_updated_changes_rule_type.dart';final class WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges {const WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges({this.configuration, this.ruleType, this.pattern, });

factory WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges(
  configuration: json['configuration'] != null ? WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesConfiguration.fromJson(json['configuration'] as Map<String, dynamic>) : null,
  ruleType: json['rule_type'] != null ? WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType.fromJson(json['rule_type'] as Map<String, dynamic>) : null,
  pattern: json['pattern'] != null ? WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern.fromJson(json['pattern'] as Map<String, dynamic>) : null,
); }

final WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesConfiguration? configuration;

final WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType? ruleType;

final WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern? pattern;

Map<String, dynamic> toJson() { return {
  if (configuration != null) 'configuration': configuration?.toJson(),
  if (ruleType != null) 'rule_type': ruleType?.toJson(),
  if (pattern != null) 'pattern': pattern?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges copyWith({WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesConfiguration Function()? configuration, WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType Function()? ruleType, WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern Function()? pattern, }) { return WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges(
  configuration: configuration != null ? configuration() : this.configuration,
  ruleType: ruleType != null ? ruleType() : this.ruleType,
  pattern: pattern != null ? pattern() : this.pattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges &&
          configuration == other.configuration &&
          ruleType == other.ruleType &&
          pattern == other.pattern; } 
@override int get hashCode { return Object.hash(configuration, ruleType, pattern); } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesRulesUpdatedChanges(configuration: $configuration, ruleType: $ruleType, pattern: $pattern)'; } 
 }
