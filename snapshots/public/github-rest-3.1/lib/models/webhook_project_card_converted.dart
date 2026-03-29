// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_project_card_converted_changes.dart';import 'webhooks_project_card.dart';final class WebhookProjectCardConvertedAction {const WebhookProjectCardConvertedAction._(this.value);

factory WebhookProjectCardConvertedAction.fromJson(String json) { return switch (json) {
  'converted' => converted,
  _ => WebhookProjectCardConvertedAction._(json),
}; }

static const WebhookProjectCardConvertedAction converted = WebhookProjectCardConvertedAction._('converted');

static const List<WebhookProjectCardConvertedAction> values = [converted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookProjectCardConvertedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookProjectCardConvertedAction($value)'; } 
 }
final class WebhookProjectCardConverted {const WebhookProjectCardConverted({required this.action, required this.changes, this.enterprise, this.installation, this.organization, required this.projectCard, this.repository, required this.sender, });

factory WebhookProjectCardConverted.fromJson(Map<String, dynamic> json) { return WebhookProjectCardConverted(
  action: WebhookProjectCardConvertedAction.fromJson(json['action'] as String),
  changes: WebhookProjectCardConvertedChanges.fromJson(json['changes'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  projectCard: WebhooksProjectCard.fromJson(json['project_card'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookProjectCardConvertedAction action;

final WebhookProjectCardConvertedChanges changes;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final WebhooksProjectCard projectCard;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'changes': changes.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'project_card': projectCard.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('changes') &&
      json.containsKey('project_card') &&
      json.containsKey('sender'); } 
WebhookProjectCardConverted copyWith({WebhookProjectCardConvertedAction? action, WebhookProjectCardConvertedChanges? changes, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhooksProjectCard? projectCard, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookProjectCardConverted(
  action: action ?? this.action,
  changes: changes ?? this.changes,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  projectCard: projectCard ?? this.projectCard,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectCardConverted &&
          action == other.action &&
          changes == other.changes &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          projectCard == other.projectCard &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, changes, enterprise, installation, organization, projectCard, repository, sender); } 
@override String toString() { return 'WebhookProjectCardConverted(action: $action, changes: $changes, enterprise: $enterprise, installation: $installation, organization: $organization, projectCard: $projectCard, repository: $repository, sender: $sender)'; } 
 }
