// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'simple_user.dart';/// Organization Invitation
@immutable final class OrganizationInvitation {const OrganizationInvitation({required this.id, required this.login, required this.email, required this.role, required this.createdAt, required this.inviter, required this.teamCount, required this.nodeId, required this.invitationTeamsUrl, this.failedAt, this.failedReason, this.invitationSource, });

factory OrganizationInvitation.fromJson(Map<String, dynamic> json) { return OrganizationInvitation(
  id: (json['id'] as num).toInt(),
  login: json['login'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String,
  createdAt: json['created_at'] as String,
  failedAt: json['failed_at'] as String?,
  failedReason: json['failed_reason'] as String?,
  inviter: SimpleUser.fromJson(json['inviter'] as Map<String, dynamic>),
  teamCount: (json['team_count'] as num).toInt(),
  nodeId: json['node_id'] as String,
  invitationTeamsUrl: json['invitation_teams_url'] as String,
  invitationSource: json['invitation_source'] as String?,
); }

final int id;

final String? login;

final String? email;

final String role;

final String createdAt;

final String? failedAt;

final String? failedReason;

final SimpleUser inviter;

final int teamCount;

final String nodeId;

final String invitationTeamsUrl;

final String? invitationSource;

Map<String, dynamic> toJson() { return {
  'id': id,
  'login': ?login,
  'email': ?email,
  'role': role,
  'created_at': createdAt,
  'failed_at': ?failedAt,
  'failed_reason': ?failedReason,
  'inviter': inviter.toJson(),
  'team_count': teamCount,
  'node_id': nodeId,
  'invitation_teams_url': invitationTeamsUrl,
  'invitation_source': ?invitationSource,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('login') && json['login'] is String &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('role') && json['role'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('inviter') &&
      json.containsKey('team_count') && json['team_count'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('invitation_teams_url') && json['invitation_teams_url'] is String; } 
OrganizationInvitation copyWith({int? id, String? Function()? login, String? Function()? email, String? role, String? createdAt, String? Function()? failedAt, String? Function()? failedReason, SimpleUser? inviter, int? teamCount, String? nodeId, String? invitationTeamsUrl, String Function()? invitationSource, }) { return OrganizationInvitation(
  id: id ?? this.id,
  login: login != null ? login() : this.login,
  email: email != null ? email() : this.email,
  role: role ?? this.role,
  createdAt: createdAt ?? this.createdAt,
  failedAt: failedAt != null ? failedAt() : this.failedAt,
  failedReason: failedReason != null ? failedReason() : this.failedReason,
  inviter: inviter ?? this.inviter,
  teamCount: teamCount ?? this.teamCount,
  nodeId: nodeId ?? this.nodeId,
  invitationTeamsUrl: invitationTeamsUrl ?? this.invitationTeamsUrl,
  invitationSource: invitationSource != null ? invitationSource() : this.invitationSource,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationInvitation &&
          id == other.id &&
          login == other.login &&
          email == other.email &&
          role == other.role &&
          createdAt == other.createdAt &&
          failedAt == other.failedAt &&
          failedReason == other.failedReason &&
          inviter == other.inviter &&
          teamCount == other.teamCount &&
          nodeId == other.nodeId &&
          invitationTeamsUrl == other.invitationTeamsUrl &&
          invitationSource == other.invitationSource; } 
@override int get hashCode { return Object.hash(id, login, email, role, createdAt, failedAt, failedReason, inviter, teamCount, nodeId, invitationTeamsUrl, invitationSource); } 
@override String toString() { return 'OrganizationInvitation(id: $id, login: $login, email: $email, role: $role, createdAt: $createdAt, failedAt: $failedAt, failedReason: $failedReason, inviter: $inviter, teamCount: $teamCount, nodeId: $nodeId, invitationTeamsUrl: $invitationTeamsUrl, invitationSource: $invitationSource)'; } 
 }
