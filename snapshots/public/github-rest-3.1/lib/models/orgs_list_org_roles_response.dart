// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_role.dart';final class OrgsListOrgRolesResponse {const OrgsListOrgRolesResponse({this.totalCount, this.roles, });

factory OrgsListOrgRolesResponse.fromJson(Map<String, dynamic> json) { return OrgsListOrgRolesResponse(
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  roles: (json['roles'] as List<dynamic>?)?.map((e) => OrganizationRole.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The total number of organization roles available to the organization.
final int? totalCount;

/// The list of organization roles available to the organization.
final List<OrganizationRole>? roles;

Map<String, dynamic> toJson() { return {
  'total_count': ?totalCount,
  if (roles != null) 'roles': roles?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_count', 'roles'}.contains(key)); } 
OrgsListOrgRolesResponse copyWith({int Function()? totalCount, List<OrganizationRole> Function()? roles, }) { return OrgsListOrgRolesResponse(
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  roles: roles != null ? roles() : this.roles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListOrgRolesResponse &&
          totalCount == other.totalCount &&
          listEquals(roles, other.roles); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(roles ?? const [])); } 
@override String toString() { return 'OrgsListOrgRolesResponse(totalCount: $totalCount, roles: $roles)'; } 
 }
