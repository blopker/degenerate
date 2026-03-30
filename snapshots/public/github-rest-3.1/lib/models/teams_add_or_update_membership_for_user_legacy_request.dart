// GENERATED CODE - DO NOT MODIFY BY HAND

/// The role that this user should have in the team.
final class TeamsAddOrUpdateMembershipForUserLegacyRequestRole {const TeamsAddOrUpdateMembershipForUserLegacyRequestRole._(this.value);

factory TeamsAddOrUpdateMembershipForUserLegacyRequestRole.fromJson(String json) { return switch (json) {
  'member' => member,
  'maintainer' => maintainer,
  _ => TeamsAddOrUpdateMembershipForUserLegacyRequestRole._(json),
}; }

static const TeamsAddOrUpdateMembershipForUserLegacyRequestRole member = TeamsAddOrUpdateMembershipForUserLegacyRequestRole._('member');

static const TeamsAddOrUpdateMembershipForUserLegacyRequestRole maintainer = TeamsAddOrUpdateMembershipForUserLegacyRequestRole._('maintainer');

static const List<TeamsAddOrUpdateMembershipForUserLegacyRequestRole> values = [member, maintainer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsAddOrUpdateMembershipForUserLegacyRequestRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsAddOrUpdateMembershipForUserLegacyRequestRole($value)'; } 
 }
final class TeamsAddOrUpdateMembershipForUserLegacyRequest {const TeamsAddOrUpdateMembershipForUserLegacyRequest({this.role = TeamsAddOrUpdateMembershipForUserLegacyRequestRole.member});

factory TeamsAddOrUpdateMembershipForUserLegacyRequest.fromJson(Map<String, dynamic> json) { return TeamsAddOrUpdateMembershipForUserLegacyRequest(
  role: json.containsKey('role') ? TeamsAddOrUpdateMembershipForUserLegacyRequestRole.fromJson(json['role'] as String) : TeamsAddOrUpdateMembershipForUserLegacyRequestRole.member,
); }

/// The role that this user should have in the team.
final TeamsAddOrUpdateMembershipForUserLegacyRequestRole role;

Map<String, dynamic> toJson() { return {
  'role': role.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'role'}.contains(key)); } 
TeamsAddOrUpdateMembershipForUserLegacyRequest copyWith({TeamsAddOrUpdateMembershipForUserLegacyRequestRole Function()? role}) { return TeamsAddOrUpdateMembershipForUserLegacyRequest(
  role: role != null ? role() : this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsAddOrUpdateMembershipForUserLegacyRequest &&
          role == other.role; } 
@override int get hashCode { return role.hashCode; } 
@override String toString() { return 'TeamsAddOrUpdateMembershipForUserLegacyRequest(role: $role)'; } 
 }
