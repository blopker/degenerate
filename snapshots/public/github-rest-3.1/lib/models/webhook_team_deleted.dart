// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_team_deleted_repository.dart';import 'webhooks_team1.dart';@immutable final class WebhookTeamDeletedAction {const WebhookTeamDeletedAction._(this.value);

factory WebhookTeamDeletedAction.fromJson(String json) { return switch (json) {
  'deleted' => deleted,
  _ => WebhookTeamDeletedAction._(json),
}; }

static const WebhookTeamDeletedAction deleted = WebhookTeamDeletedAction._('deleted');

static const List<WebhookTeamDeletedAction> values = [deleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookTeamDeletedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookTeamDeletedAction($value)'; } 
 }
@immutable final class WebhookTeamDeleted {const WebhookTeamDeleted({required this.action, required this.organization, required this.team, this.enterprise, this.installation, this.repository, this.sender, });

factory WebhookTeamDeleted.fromJson(Map<String, dynamic> json) { return WebhookTeamDeleted(
  action: WebhookTeamDeletedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  repository: json['repository'] != null ? WebhookTeamDeletedRepository.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
  team: WebhooksTeam1.fromJson(json['team'] as Map<String, dynamic>),
); }

final WebhookTeamDeletedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks organization;

/// A git repository
final WebhookTeamDeletedRepository? repository;

final SimpleUser? sender;

final WebhooksTeam1 team;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'organization': organization.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
  'team': team.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('organization') &&
      json.containsKey('team'); } 
WebhookTeamDeleted copyWith({WebhookTeamDeletedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks? organization, WebhookTeamDeletedRepository Function()? repository, SimpleUser Function()? sender, WebhooksTeam1? team, }) { return WebhookTeamDeleted(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization ?? this.organization,
  repository: repository != null ? repository() : this.repository,
  sender: sender != null ? sender() : this.sender,
  team: team ?? this.team,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookTeamDeleted &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender &&
          team == other.team; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, sender, team); } 
@override String toString() { return 'WebhookTeamDeleted(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender, team: $team)'; } 
 }
