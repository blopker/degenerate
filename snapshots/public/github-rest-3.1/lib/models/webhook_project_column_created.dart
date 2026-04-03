// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_project_column.dart';@immutable final class WebhookProjectColumnCreatedAction {const WebhookProjectColumnCreatedAction._(this.value);

factory WebhookProjectColumnCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookProjectColumnCreatedAction._(json),
}; }

static const WebhookProjectColumnCreatedAction created = WebhookProjectColumnCreatedAction._('created');

static const List<WebhookProjectColumnCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookProjectColumnCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookProjectColumnCreatedAction($value)'; } 
 }
@immutable final class WebhookProjectColumnCreated {const WebhookProjectColumnCreated({required this.action, required this.projectColumn, this.enterprise, this.installation, this.organization, this.repository, this.sender, });

factory WebhookProjectColumnCreated.fromJson(Map<String, dynamic> json) { return WebhookProjectColumnCreated(
  action: WebhookProjectColumnCreatedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  projectColumn: WebhooksProjectColumn.fromJson(json['project_column'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
); }

final WebhookProjectColumnCreatedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final WebhooksProjectColumn projectColumn;

final RepositoryWebhooks? repository;

final SimpleUser? sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'project_column': projectColumn.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('project_column'); } 
WebhookProjectColumnCreated copyWith({WebhookProjectColumnCreatedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhooksProjectColumn? projectColumn, RepositoryWebhooks Function()? repository, SimpleUser Function()? sender, }) { return WebhookProjectColumnCreated(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  projectColumn: projectColumn ?? this.projectColumn,
  repository: repository != null ? repository() : this.repository,
  sender: sender != null ? sender() : this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectColumnCreated &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          projectColumn == other.projectColumn &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, projectColumn, repository, sender); } 
@override String toString() { return 'WebhookProjectColumnCreated(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, projectColumn: $projectColumn, repository: $repository, sender: $sender)'; } 
 }
