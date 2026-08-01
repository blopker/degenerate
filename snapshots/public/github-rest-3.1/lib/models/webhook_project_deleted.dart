// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_project.dart';@immutable final class WebhookProjectDeletedAction {const WebhookProjectDeletedAction._(this.value);

factory WebhookProjectDeletedAction.fromJson(String json) { return switch (json) {
  'deleted' => deleted,
  _ => WebhookProjectDeletedAction._(json),
}; }

static const WebhookProjectDeletedAction deleted = WebhookProjectDeletedAction._('deleted');

static const List<WebhookProjectDeletedAction> values = [deleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookProjectDeletedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookProjectDeletedAction($value)'; } 
 }
@immutable final class WebhookProjectDeleted {const WebhookProjectDeleted({required this.action, required this.project, this.enterprise, this.installation, this.organization, this.repository = const Omittable.absent(), this.sender, });

factory WebhookProjectDeleted.fromJson(Map<String, dynamic> json) { return WebhookProjectDeleted(
  action: WebhookProjectDeletedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  project: WebhooksProject.fromJson(json['project'] as Map<String, dynamic>),
  repository: json.containsKey('repository') ? Omittable(json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
); }

final WebhookProjectDeletedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final WebhooksProject project;

final Omittable<RepositoryWebhooks?> repository;

final SimpleUser? sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'project': project.toJson(),
  if (repository.isPresent) 'repository': repository.value?.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('project'); } 
WebhookProjectDeleted copyWith({WebhookProjectDeletedAction? action, EnterpriseWebhooks? Function()? enterprise, SimpleInstallation? Function()? installation, OrganizationSimpleWebhooks? Function()? organization, WebhooksProject? project, Omittable<RepositoryWebhooks?>? repository, SimpleUser? Function()? sender, }) { return WebhookProjectDeleted(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  project: project ?? this.project,
  repository: repository ?? this.repository,
  sender: sender != null ? sender() : this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectDeleted &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          project == other.project &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, project, repository, sender); } 
@override String toString() { return 'WebhookProjectDeleted(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, project: $project, repository: $repository, sender: $sender)'; } 
 }
