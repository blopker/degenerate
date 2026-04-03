// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_project.dart';@immutable final class WebhookProjectCreatedAction {const WebhookProjectCreatedAction._(this.value);

factory WebhookProjectCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookProjectCreatedAction._(json),
}; }

static const WebhookProjectCreatedAction created = WebhookProjectCreatedAction._('created');

static const List<WebhookProjectCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookProjectCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookProjectCreatedAction($value)'; } 
 }
@immutable final class WebhookProjectCreated {const WebhookProjectCreated({required this.action, required this.project, required this.sender, this.enterprise, this.installation, this.organization, this.repository, });

factory WebhookProjectCreated.fromJson(Map<String, dynamic> json) { return WebhookProjectCreated(
  action: WebhookProjectCreatedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  project: WebhooksProject.fromJson(json['project'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookProjectCreatedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final WebhooksProject project;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'project': project.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('project') &&
      json.containsKey('sender'); } 
WebhookProjectCreated copyWith({WebhookProjectCreatedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhooksProject? project, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookProjectCreated(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  project: project ?? this.project,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectCreated &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          project == other.project &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, project, repository, sender); } 
@override String toString() { return 'WebhookProjectCreated(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, project: $project, repository: $repository, sender: $sender)'; } 
 }
