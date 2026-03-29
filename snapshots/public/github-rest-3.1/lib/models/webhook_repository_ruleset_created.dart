// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_ruleset.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';final class WebhookRepositoryRulesetCreatedAction {const WebhookRepositoryRulesetCreatedAction._(this.value);

factory WebhookRepositoryRulesetCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookRepositoryRulesetCreatedAction._(json),
}; }

static const WebhookRepositoryRulesetCreatedAction created = WebhookRepositoryRulesetCreatedAction._('created');

static const List<WebhookRepositoryRulesetCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookRepositoryRulesetCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookRepositoryRulesetCreatedAction($value)'; } 
 }
final class WebhookRepositoryRulesetCreated {const WebhookRepositoryRulesetCreated({required this.action, this.enterprise, this.installation, this.organization, this.repository, required this.repositoryRuleset, required this.sender, });

factory WebhookRepositoryRulesetCreated.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetCreated(
  action: WebhookRepositoryRulesetCreatedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  repositoryRuleset: RepositoryRuleset.fromJson(json['repository_ruleset'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookRepositoryRulesetCreatedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks? repository;

final RepositoryRuleset repositoryRuleset;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'repository_ruleset': repositoryRuleset.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('repository_ruleset') &&
      json.containsKey('sender'); } 
WebhookRepositoryRulesetCreated copyWith({WebhookRepositoryRulesetCreatedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks Function()? repository, RepositoryRuleset? repositoryRuleset, SimpleUser? sender, }) { return WebhookRepositoryRulesetCreated(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository != null ? repository() : this.repository,
  repositoryRuleset: repositoryRuleset ?? this.repositoryRuleset,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetCreated &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          repositoryRuleset == other.repositoryRuleset &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, repositoryRuleset, sender); } 
@override String toString() { return 'WebhookRepositoryRulesetCreated(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, repositoryRuleset: $repositoryRuleset, sender: $sender)'; } 
 }
