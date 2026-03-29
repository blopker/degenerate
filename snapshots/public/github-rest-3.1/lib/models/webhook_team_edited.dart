// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_team_edited_changes.dart';import 'webhook_team_edited_repository.dart';import 'webhooks_team1.dart';final class WebhookTeamEditedAction {const WebhookTeamEditedAction._(this.value);

factory WebhookTeamEditedAction.fromJson(String json) { return switch (json) {
  'edited' => edited,
  _ => WebhookTeamEditedAction._(json),
}; }

static const WebhookTeamEditedAction edited = WebhookTeamEditedAction._('edited');

static const List<WebhookTeamEditedAction> values = [edited];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookTeamEditedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookTeamEditedAction($value)'; } 
 }
final class WebhookTeamEdited {const WebhookTeamEdited({required this.action, required this.changes, this.enterprise, this.installation, required this.organization, this.repository, required this.sender, required this.team, });

factory WebhookTeamEdited.fromJson(Map<String, dynamic> json) { return WebhookTeamEdited(
  action: WebhookTeamEditedAction.fromJson(json['action'] as String),
  changes: WebhookTeamEditedChanges.fromJson(json['changes'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  repository: json['repository'] != null ? WebhookTeamEditedRepository.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
  team: WebhooksTeam1.fromJson(json['team'] as Map<String, dynamic>),
); }

final WebhookTeamEditedAction action;

/// The changes to the team if the action was `edited`.
final WebhookTeamEditedChanges changes;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks organization;

/// A git repository
final WebhookTeamEditedRepository? repository;

final SimpleUser sender;

final WebhooksTeam1 team;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'changes': changes.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'organization': organization.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
  'team': team.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('changes') &&
      json.containsKey('organization') &&
      json.containsKey('sender') &&
      json.containsKey('team'); } 
WebhookTeamEdited copyWith({WebhookTeamEditedAction? action, WebhookTeamEditedChanges? changes, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks? organization, WebhookTeamEditedRepository Function()? repository, SimpleUser? sender, WebhooksTeam1? team, }) { return WebhookTeamEdited(
  action: action ?? this.action,
  changes: changes ?? this.changes,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization ?? this.organization,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
  team: team ?? this.team,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookTeamEdited &&
          action == other.action &&
          changes == other.changes &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender &&
          team == other.team; } 
@override int get hashCode { return Object.hash(action, changes, enterprise, installation, organization, repository, sender, team); } 
@override String toString() { return 'WebhookTeamEdited(action: $action, changes: $changes, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender, team: $team)'; } 
 }
