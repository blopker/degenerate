// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_repository_ruleset_edited_changes_conditions.dart';import 'webhook_repository_ruleset_edited_changes_enforcement.dart';import 'webhook_repository_ruleset_edited_changes_name.dart';import 'webhook_repository_ruleset_edited_changes_rules.dart';final class WebhookRepositoryRulesetEditedChanges {const WebhookRepositoryRulesetEditedChanges({this.name, this.enforcement, this.conditions, this.rules, });

factory WebhookRepositoryRulesetEditedChanges.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChanges(
  name: json['name'] != null ? WebhookRepositoryRulesetEditedChangesName.fromJson(json['name'] as Map<String, dynamic>) : null,
  enforcement: json['enforcement'] != null ? WebhookRepositoryRulesetEditedChangesEnforcement.fromJson(json['enforcement'] as Map<String, dynamic>) : null,
  conditions: json['conditions'] != null ? WebhookRepositoryRulesetEditedChangesConditions.fromJson(json['conditions'] as Map<String, dynamic>) : null,
  rules: json['rules'] != null ? WebhookRepositoryRulesetEditedChangesRules.fromJson(json['rules'] as Map<String, dynamic>) : null,
); }

final WebhookRepositoryRulesetEditedChangesName? name;

final WebhookRepositoryRulesetEditedChangesEnforcement? enforcement;

final WebhookRepositoryRulesetEditedChangesConditions? conditions;

final WebhookRepositoryRulesetEditedChangesRules? rules;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  if (enforcement != null) 'enforcement': enforcement?.toJson(),
  if (conditions != null) 'conditions': conditions?.toJson(),
  if (rules != null) 'rules': rules?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'enforcement', 'conditions', 'rules'}.contains(key)); } 
WebhookRepositoryRulesetEditedChanges copyWith({WebhookRepositoryRulesetEditedChangesName Function()? name, WebhookRepositoryRulesetEditedChangesEnforcement Function()? enforcement, WebhookRepositoryRulesetEditedChangesConditions Function()? conditions, WebhookRepositoryRulesetEditedChangesRules Function()? rules, }) { return WebhookRepositoryRulesetEditedChanges(
  name: name != null ? name() : this.name,
  enforcement: enforcement != null ? enforcement() : this.enforcement,
  conditions: conditions != null ? conditions() : this.conditions,
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChanges &&
          name == other.name &&
          enforcement == other.enforcement &&
          conditions == other.conditions &&
          rules == other.rules; } 
@override int get hashCode { return Object.hash(name, enforcement, conditions, rules); } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChanges(name: $name, enforcement: $enforcement, conditions: $conditions, rules: $rules)'; } 
 }
