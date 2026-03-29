// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_team1.dart';final class WebhookTeamAdd {const WebhookTeamAdd({this.enterprise, this.installation, this.organization, required this.repository, required this.sender, required this.team, });

factory WebhookTeamAdd.fromJson(Map<String, dynamic> json) { return WebhookTeamAdd(
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
  team: WebhooksTeam1.fromJson(json['team'] as Map<String, dynamic>),
); }

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

final WebhooksTeam1 team;

Map<String, dynamic> toJson() { return {
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
  'team': team.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('repository') &&
      json.containsKey('sender') &&
      json.containsKey('team'); } 
WebhookTeamAdd copyWith({EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, WebhooksTeam1? team, }) { return WebhookTeamAdd(
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
  team: team ?? this.team,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookTeamAdd &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender &&
          team == other.team; } 
@override int get hashCode { return Object.hash(enterprise, installation, organization, repository, sender, team); } 
@override String toString() { return 'WebhookTeamAdd(enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender, team: $team)'; } 
 }
