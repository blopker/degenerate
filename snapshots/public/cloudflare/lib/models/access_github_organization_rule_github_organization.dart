// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessGithubOrganizationRuleGithubOrganization {const AccessGithubOrganizationRuleGithubOrganization({required this.identityProviderId, required this.name, this.team, });

factory AccessGithubOrganizationRuleGithubOrganization.fromJson(Map<String, dynamic> json) { return AccessGithubOrganizationRuleGithubOrganization(
  identityProviderId: json['identity_provider_id'] as String,
  name: json['name'] as String,
  team: json['team'] as String?,
); }

/// The ID of your Github identity provider.
final String identityProviderId;

/// The name of the organization.
final String name;

/// The name of the team
final String? team;

Map<String, dynamic> toJson() { return {
  'identity_provider_id': identityProviderId,
  'name': name,
  'team': ?team,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('identity_provider_id') && json['identity_provider_id'] is String &&
      json.containsKey('name') && json['name'] is String; } 
AccessGithubOrganizationRuleGithubOrganization copyWith({String? identityProviderId, String? name, String Function()? team, }) { return AccessGithubOrganizationRuleGithubOrganization(
  identityProviderId: identityProviderId ?? this.identityProviderId,
  name: name ?? this.name,
  team: team != null ? team() : this.team,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGithubOrganizationRuleGithubOrganization &&
          identityProviderId == other.identityProviderId &&
          name == other.name &&
          team == other.team; } 
@override int get hashCode { return Object.hash(identityProviderId, name, team); } 
@override String toString() { return 'AccessGithubOrganizationRuleGithubOrganization(identityProviderId: $identityProviderId, name: $name, team: $team)'; } 
 }
