// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_membership.dart';@immutable final class WebhookOrganizationMemberAddedAction {const WebhookOrganizationMemberAddedAction._(this.value);

factory WebhookOrganizationMemberAddedAction.fromJson(String json) { return switch (json) {
  'member_added' => memberAdded,
  _ => WebhookOrganizationMemberAddedAction._(json),
}; }

static const WebhookOrganizationMemberAddedAction memberAdded = WebhookOrganizationMemberAddedAction._('member_added');

static const List<WebhookOrganizationMemberAddedAction> values = [memberAdded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookOrganizationMemberAddedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookOrganizationMemberAddedAction($value)'; } 
 }
@immutable final class WebhookOrganizationMemberAdded {const WebhookOrganizationMemberAdded({required this.action, required this.membership, required this.organization, required this.sender, this.enterprise, this.installation, this.repository, });

factory WebhookOrganizationMemberAdded.fromJson(Map<String, dynamic> json) { return WebhookOrganizationMemberAdded(
  action: WebhookOrganizationMemberAddedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  membership: WebhooksMembership.fromJson(json['membership'] as Map<String, dynamic>),
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookOrganizationMemberAddedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksMembership membership;

final OrganizationSimpleWebhooks organization;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'membership': membership.toJson(),
  'organization': organization.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('membership') &&
      json.containsKey('organization') &&
      json.containsKey('sender'); } 
WebhookOrganizationMemberAdded copyWith({WebhookOrganizationMemberAddedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksMembership? membership, OrganizationSimpleWebhooks? organization, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookOrganizationMemberAdded(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  membership: membership ?? this.membership,
  organization: organization ?? this.organization,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookOrganizationMemberAdded &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          membership == other.membership &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, membership, organization, repository, sender); } 
@override String toString() { return 'WebhookOrganizationMemberAdded(action: $action, enterprise: $enterprise, installation: $installation, membership: $membership, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
