// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_repository_ruleset_edited_changes_conditions_updated_changes_condition_type.dart';import 'webhook_repository_ruleset_edited_changes_conditions_updated_changes_exclude.dart';import 'webhook_repository_ruleset_edited_changes_conditions_updated_changes_include.dart';import 'webhook_repository_ruleset_edited_changes_conditions_updated_changes_target.dart';final class WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges {const WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges({this.conditionType, this.target, this.include, this.exclude, });

factory WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges(
  conditionType: json['condition_type'] != null ? WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType.fromJson(json['condition_type'] as Map<String, dynamic>) : null,
  target: json['target'] != null ? WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget.fromJson(json['target'] as Map<String, dynamic>) : null,
  include: json['include'] != null ? WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude.fromJson(json['include'] as Map<String, dynamic>) : null,
  exclude: json['exclude'] != null ? WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesExclude.fromJson(json['exclude'] as Map<String, dynamic>) : null,
); }

final WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType? conditionType;

final WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget? target;

final WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude? include;

final WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesExclude? exclude;

Map<String, dynamic> toJson() { return {
  if (conditionType != null) 'condition_type': conditionType?.toJson(),
  if (target != null) 'target': target?.toJson(),
  if (include != null) 'include': include?.toJson(),
  if (exclude != null) 'exclude': exclude?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'condition_type', 'target', 'include', 'exclude'}.contains(key)); } 
WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges copyWith({WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType Function()? conditionType, WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget Function()? target, WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude Function()? include, WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesExclude Function()? exclude, }) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges(
  conditionType: conditionType != null ? conditionType() : this.conditionType,
  target: target != null ? target() : this.target,
  include: include != null ? include() : this.include,
  exclude: exclude != null ? exclude() : this.exclude,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges &&
          conditionType == other.conditionType &&
          target == other.target &&
          include == other.include &&
          exclude == other.exclude; } 
@override int get hashCode { return Object.hash(conditionType, target, include, exclude); } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesConditionsUpdatedChanges(conditionType: $conditionType, target: $target, include: $include, exclude: $exclude)'; } 
 }
