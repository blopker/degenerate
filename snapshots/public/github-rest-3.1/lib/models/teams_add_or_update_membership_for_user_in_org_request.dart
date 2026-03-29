// GENERATED CODE - DO NOT MODIFY BY HAND

/// The role that this user should have in the team.
final class TeamsAddOrUpdateMembershipForUserInOrgRequestRole {const TeamsAddOrUpdateMembershipForUserInOrgRequestRole._(this.value);

factory TeamsAddOrUpdateMembershipForUserInOrgRequestRole.fromJson(String json) { return switch (json) {
  'member' => member,
  'maintainer' => maintainer,
  _ => TeamsAddOrUpdateMembershipForUserInOrgRequestRole._(json),
}; }

static const TeamsAddOrUpdateMembershipForUserInOrgRequestRole member = TeamsAddOrUpdateMembershipForUserInOrgRequestRole._('member');

static const TeamsAddOrUpdateMembershipForUserInOrgRequestRole maintainer = TeamsAddOrUpdateMembershipForUserInOrgRequestRole._('maintainer');

static const List<TeamsAddOrUpdateMembershipForUserInOrgRequestRole> values = [member, maintainer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsAddOrUpdateMembershipForUserInOrgRequestRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsAddOrUpdateMembershipForUserInOrgRequestRole($value)'; } 
 }
final class TeamsAddOrUpdateMembershipForUserInOrgRequest {const TeamsAddOrUpdateMembershipForUserInOrgRequest({this.role = TeamsAddOrUpdateMembershipForUserInOrgRequestRole.member});

factory TeamsAddOrUpdateMembershipForUserInOrgRequest.fromJson(Map<String, dynamic> json) { return TeamsAddOrUpdateMembershipForUserInOrgRequest(
  role: json.containsKey('role') ? TeamsAddOrUpdateMembershipForUserInOrgRequestRole.fromJson(json['role'] as String) : TeamsAddOrUpdateMembershipForUserInOrgRequestRole.member,
); }

/// The role that this user should have in the team.
final TeamsAddOrUpdateMembershipForUserInOrgRequestRole role;

Map<String, dynamic> toJson() { return {
  'role': role.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TeamsAddOrUpdateMembershipForUserInOrgRequest copyWith({TeamsAddOrUpdateMembershipForUserInOrgRequestRole Function()? role}) { return TeamsAddOrUpdateMembershipForUserInOrgRequest(
  role: role != null ? role() : this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsAddOrUpdateMembershipForUserInOrgRequest &&
          role == other.role; } 
@override int get hashCode { return role.hashCode; } 
@override String toString() { return 'TeamsAddOrUpdateMembershipForUserInOrgRequest(role: $role)'; } 
 }
