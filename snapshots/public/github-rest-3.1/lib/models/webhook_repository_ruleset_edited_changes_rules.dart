// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule.dart';import 'webhook_repository_ruleset_edited_changes_rules_updated.dart';final class WebhookRepositoryRulesetEditedChangesRules {const WebhookRepositoryRulesetEditedChangesRules({this.added, this.deleted, this.updated, });

factory WebhookRepositoryRulesetEditedChangesRules.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesRules(
  added: (json['added'] as List<dynamic>?)?.map((e) => RepositoryRule.fromJson(e as Map<String, dynamic>)).toList(),
  deleted: (json['deleted'] as List<dynamic>?)?.map((e) => RepositoryRule.fromJson(e as Map<String, dynamic>)).toList(),
  updated: (json['updated'] as List<dynamic>?)?.map((e) => WebhookRepositoryRulesetEditedChangesRulesUpdated.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RepositoryRule>? added;

final List<RepositoryRule>? deleted;

final List<WebhookRepositoryRulesetEditedChangesRulesUpdated>? updated;

Map<String, dynamic> toJson() { return {
  if (added != null) 'added': added?.map((e) => e.toJson()).toList(),
  if (deleted != null) 'deleted': deleted?.map((e) => e.toJson()).toList(),
  if (updated != null) 'updated': updated?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookRepositoryRulesetEditedChangesRules copyWith({List<RepositoryRule> Function()? added, List<RepositoryRule> Function()? deleted, List<WebhookRepositoryRulesetEditedChangesRulesUpdated> Function()? updated, }) { return WebhookRepositoryRulesetEditedChangesRules(
  added: added != null ? added() : this.added,
  deleted: deleted != null ? deleted() : this.deleted,
  updated: updated != null ? updated() : this.updated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesRules &&
          listEquals(added, other.added) &&
          listEquals(deleted, other.deleted) &&
          listEquals(updated, other.updated); } 
@override int get hashCode { return Object.hash(Object.hashAll(added ?? const []), Object.hashAll(deleted ?? const []), Object.hashAll(updated ?? const [])); } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesRules(added: $added, deleted: $deleted, updated: $updated)'; } 
 }
