// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_role_request.dart';@immutable final class IamUpdateMemberWithRolesRequest {const IamUpdateMemberWithRolesRequest({this.roles});

factory IamUpdateMemberWithRolesRequest.fromJson(Map<String, dynamic> json) { return IamUpdateMemberWithRolesRequest(
  roles: (json['roles'] as List<dynamic>?)?.map((e) => IamRoleRequest.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Roles assigned to this member.
final List<IamRoleRequest>? roles;

Map<String, dynamic> toJson() { return {
  if (roles != null) 'roles': roles?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'roles'}.contains(key)); } 
IamUpdateMemberWithRolesRequest copyWith({List<IamRoleRequest>? Function()? roles}) { return IamUpdateMemberWithRolesRequest(
  roles: roles != null ? roles() : this.roles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUpdateMemberWithRolesRequest &&
          listEquals(roles, other.roles); } 
@override int get hashCode { return Object.hashAll(roles ?? const []).hashCode; } 
@override String toString() { return 'IamUpdateMemberWithRolesRequest(roles: $roles)'; } 
 }
