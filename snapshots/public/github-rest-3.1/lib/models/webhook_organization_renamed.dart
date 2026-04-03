// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_organization_renamed_changes.dart';import 'webhooks_membership.dart';@immutable final class WebhookOrganizationRenamedAction {const WebhookOrganizationRenamedAction._(this.value);

factory WebhookOrganizationRenamedAction.fromJson(String json) { return switch (json) {
  'renamed' => renamed,
  _ => WebhookOrganizationRenamedAction._(json),
}; }

static const WebhookOrganizationRenamedAction renamed = WebhookOrganizationRenamedAction._('renamed');

static const List<WebhookOrganizationRenamedAction> values = [renamed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookOrganizationRenamedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookOrganizationRenamedAction($value)'; } 
 }
@immutable final class WebhookOrganizationRenamed {const WebhookOrganizationRenamed({required this.action, required this.organization, required this.sender, this.changes, this.enterprise, this.installation, this.membership, this.repository, });

factory WebhookOrganizationRenamed.fromJson(Map<String, dynamic> json) { return WebhookOrganizationRenamed(
  action: WebhookOrganizationRenamedAction.fromJson(json['action'] as String),
  changes: json['changes'] != null ? WebhookOrganizationRenamedChanges.fromJson(json['changes'] as Map<String, dynamic>) : null,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  membership: json['membership'] != null ? WebhooksMembership.fromJson(json['membership'] as Map<String, dynamic>) : null,
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookOrganizationRenamedAction action;

final WebhookOrganizationRenamedChanges? changes;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksMembership? membership;

final OrganizationSimpleWebhooks organization;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (changes != null) 'changes': changes?.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (membership != null) 'membership': membership?.toJson(),
  'organization': organization.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('organization') &&
      json.containsKey('sender'); } 
WebhookOrganizationRenamed copyWith({WebhookOrganizationRenamedAction? action, WebhookOrganizationRenamedChanges Function()? changes, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksMembership Function()? membership, OrganizationSimpleWebhooks? organization, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookOrganizationRenamed(
  action: action ?? this.action,
  changes: changes != null ? changes() : this.changes,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  membership: membership != null ? membership() : this.membership,
  organization: organization ?? this.organization,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookOrganizationRenamed &&
          action == other.action &&
          changes == other.changes &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          membership == other.membership &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, changes, enterprise, installation, membership, organization, repository, sender); } 
@override String toString() { return 'WebhookOrganizationRenamed(action: $action, changes: $changes, enterprise: $enterprise, installation: $installation, membership: $membership, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
