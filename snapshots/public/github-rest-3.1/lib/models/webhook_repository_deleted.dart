// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';@immutable final class WebhookRepositoryDeletedAction {const WebhookRepositoryDeletedAction._(this.value);

factory WebhookRepositoryDeletedAction.fromJson(String json) { return switch (json) {
  'deleted' => deleted,
  _ => WebhookRepositoryDeletedAction._(json),
}; }

static const WebhookRepositoryDeletedAction deleted = WebhookRepositoryDeletedAction._('deleted');

static const List<WebhookRepositoryDeletedAction> values = [deleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookRepositoryDeletedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookRepositoryDeletedAction($value)'; } 
 }
@immutable final class WebhookRepositoryDeleted {const WebhookRepositoryDeleted({required this.action, required this.repository, required this.sender, this.enterprise, this.installation, this.organization, });

factory WebhookRepositoryDeleted.fromJson(Map<String, dynamic> json) { return WebhookRepositoryDeleted(
  action: WebhookRepositoryDeletedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookRepositoryDeletedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookRepositoryDeleted copyWith({WebhookRepositoryDeletedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookRepositoryDeleted(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryDeleted &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookRepositoryDeleted(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
