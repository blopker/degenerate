// GENERATED CODE - DO NOT MODIFY BY HAND

import 'repository_ruleset_conditions.dart';import 'webhook_repository_ruleset_edited_changes_conditions_updated_changes.dart';final class WebhookRepositoryRulesetEditedChangesConditionsUpdated {const WebhookRepositoryRulesetEditedChangesConditionsUpdated({this.condition, this.changes, });

factory WebhookRepositoryRulesetEditedChangesConditionsUpdated.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesConditionsUpdated(
  condition: json['condition'] != null ? RepositoryRulesetConditions.fromJson(json['condition'] as Map<String, dynamic>) : null,
  changes: json['changes'] != null ? WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges.fromJson(json['changes'] as Map<String, dynamic>) : null,
); }

final RepositoryRulesetConditions? condition;

final WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges? changes;

Map<String, dynamic> toJson() { return {
  if (condition != null) 'condition': condition?.toJson(),
  if (changes != null) 'changes': changes?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'condition', 'changes'}.contains(key)); } 
WebhookRepositoryRulesetEditedChangesConditionsUpdated copyWith({RepositoryRulesetConditions Function()? condition, WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges Function()? changes, }) { return WebhookRepositoryRulesetEditedChangesConditionsUpdated(
  condition: condition != null ? condition() : this.condition,
  changes: changes != null ? changes() : this.changes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesConditionsUpdated &&
          condition == other.condition &&
          changes == other.changes; } 
@override int get hashCode { return Object.hash(condition, changes); } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesConditionsUpdated(condition: $condition, changes: $changes)'; } 
 }
