// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_project_card.dart';@immutable final class WebhookProjectCardCreatedAction {const WebhookProjectCardCreatedAction._(this.value);

factory WebhookProjectCardCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookProjectCardCreatedAction._(json),
}; }

static const WebhookProjectCardCreatedAction created = WebhookProjectCardCreatedAction._('created');

static const List<WebhookProjectCardCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookProjectCardCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookProjectCardCreatedAction($value)'; } 
 }
@immutable final class WebhookProjectCardCreated {const WebhookProjectCardCreated({required this.action, required this.projectCard, required this.sender, this.enterprise, this.installation, this.organization, this.repository, });

factory WebhookProjectCardCreated.fromJson(Map<String, dynamic> json) { return WebhookProjectCardCreated(
  action: WebhookProjectCardCreatedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  projectCard: WebhooksProjectCard.fromJson(json['project_card'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookProjectCardCreatedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final WebhooksProjectCard projectCard;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'project_card': projectCard.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('project_card') &&
      json.containsKey('sender'); } 
WebhookProjectCardCreated copyWith({WebhookProjectCardCreatedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhooksProjectCard? projectCard, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookProjectCardCreated(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  projectCard: projectCard ?? this.projectCard,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectCardCreated &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          projectCard == other.projectCard &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, projectCard, repository, sender); } 
@override String toString() { return 'WebhookProjectCardCreated(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, projectCard: $projectCard, repository: $repository, sender: $sender)'; } 
 }
