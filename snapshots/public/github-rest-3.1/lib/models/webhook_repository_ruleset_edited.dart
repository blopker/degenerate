// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_ruleset.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_repository_ruleset_edited_changes.dart';@immutable final class WebhookRepositoryRulesetEditedAction {const WebhookRepositoryRulesetEditedAction._(this.value);

factory WebhookRepositoryRulesetEditedAction.fromJson(String json) { return switch (json) {
  'edited' => edited,
  _ => WebhookRepositoryRulesetEditedAction._(json),
}; }

static const WebhookRepositoryRulesetEditedAction edited = WebhookRepositoryRulesetEditedAction._('edited');

static const List<WebhookRepositoryRulesetEditedAction> values = [edited];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookRepositoryRulesetEditedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookRepositoryRulesetEditedAction($value)'; } 
 }
@immutable final class WebhookRepositoryRulesetEdited {const WebhookRepositoryRulesetEdited({required this.action, required this.repositoryRuleset, required this.sender, this.enterprise, this.installation, this.organization, this.repository, this.changes, });

factory WebhookRepositoryRulesetEdited.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEdited(
  action: WebhookRepositoryRulesetEditedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  repositoryRuleset: RepositoryRuleset.fromJson(json['repository_ruleset'] as Map<String, dynamic>),
  changes: json['changes'] != null ? WebhookRepositoryRulesetEditedChanges.fromJson(json['changes'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookRepositoryRulesetEditedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks? repository;

final RepositoryRuleset repositoryRuleset;

final WebhookRepositoryRulesetEditedChanges? changes;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'repository_ruleset': repositoryRuleset.toJson(),
  if (changes != null) 'changes': changes?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('repository_ruleset') &&
      json.containsKey('sender'); } 
WebhookRepositoryRulesetEdited copyWith({WebhookRepositoryRulesetEditedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks Function()? repository, RepositoryRuleset? repositoryRuleset, WebhookRepositoryRulesetEditedChanges Function()? changes, SimpleUser? sender, }) { return WebhookRepositoryRulesetEdited(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository != null ? repository() : this.repository,
  repositoryRuleset: repositoryRuleset ?? this.repositoryRuleset,
  changes: changes != null ? changes() : this.changes,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEdited &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          repositoryRuleset == other.repositoryRuleset &&
          changes == other.changes &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, repositoryRuleset, changes, sender); } 
@override String toString() { return 'WebhookRepositoryRulesetEdited(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, repositoryRuleset: $repositoryRuleset, changes: $changes, sender: $sender)'; } 
 }
