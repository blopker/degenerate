// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_organization_member_invited_invitation.dart';import 'webhooks_user.dart';final class WebhookOrganizationMemberInvitedAction {const WebhookOrganizationMemberInvitedAction._(this.value);

factory WebhookOrganizationMemberInvitedAction.fromJson(String json) { return switch (json) {
  'member_invited' => memberInvited,
  _ => WebhookOrganizationMemberInvitedAction._(json),
}; }

static const WebhookOrganizationMemberInvitedAction memberInvited = WebhookOrganizationMemberInvitedAction._('member_invited');

static const List<WebhookOrganizationMemberInvitedAction> values = [memberInvited];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookOrganizationMemberInvitedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookOrganizationMemberInvitedAction($value)'; } 
 }
final class WebhookOrganizationMemberInvited {const WebhookOrganizationMemberInvited({required this.action, this.enterprise, this.installation, required this.invitation, required this.organization, this.repository, required this.sender, this.user, });

factory WebhookOrganizationMemberInvited.fromJson(Map<String, dynamic> json) { return WebhookOrganizationMemberInvited(
  action: WebhookOrganizationMemberInvitedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  invitation: WebhookOrganizationMemberInvitedInvitation.fromJson(json['invitation'] as Map<String, dynamic>),
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
  user: json['user'] != null ? WebhooksUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final WebhookOrganizationMemberInvitedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

/// The invitation for the user or email if the action is `member_invited`.
final WebhookOrganizationMemberInvitedInvitation invitation;

final OrganizationSimpleWebhooks organization;

final RepositoryWebhooks? repository;

final SimpleUser sender;

final WebhooksUser? user;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'invitation': invitation.toJson(),
  'organization': organization.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('invitation') &&
      json.containsKey('organization') &&
      json.containsKey('sender'); } 
WebhookOrganizationMemberInvited copyWith({WebhookOrganizationMemberInvitedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhookOrganizationMemberInvitedInvitation? invitation, OrganizationSimpleWebhooks? organization, RepositoryWebhooks Function()? repository, SimpleUser? sender, WebhooksUser Function()? user, }) { return WebhookOrganizationMemberInvited(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  invitation: invitation ?? this.invitation,
  organization: organization ?? this.organization,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookOrganizationMemberInvited &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          invitation == other.invitation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender &&
          user == other.user; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, invitation, organization, repository, sender, user); } 
@override String toString() { return 'WebhookOrganizationMemberInvited(action: $action, enterprise: $enterprise, installation: $installation, invitation: $invitation, organization: $organization, repository: $repository, sender: $sender, user: $user)'; } 
 }
