// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Request payload for assigning a role to a group or user.
@immutable final class PublicAssignOrganizationGroupRoleBody {const PublicAssignOrganizationGroupRoleBody({required this.roleId});

factory PublicAssignOrganizationGroupRoleBody.fromJson(Map<String, dynamic> json) { return PublicAssignOrganizationGroupRoleBody(
  roleId: json['role_id'] as String,
); }

/// Identifier of the role to assign.
final String roleId;

Map<String, dynamic> toJson() { return {
  'role_id': roleId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('role_id') && json['role_id'] is String; } 
PublicAssignOrganizationGroupRoleBody copyWith({String? roleId}) { return PublicAssignOrganizationGroupRoleBody(
  roleId: roleId ?? this.roleId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PublicAssignOrganizationGroupRoleBody &&
          roleId == other.roleId; } 
@override int get hashCode { return roleId.hashCode; } 
@override String toString() { return 'PublicAssignOrganizationGroupRoleBody(roleId: $roleId)'; } 
 }
