// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_access.dart';import 'iam_permission_group.dart';import 'iam_policy_identifier.dart';import 'iam_resource_group.dart';/// Policy
final class IamUserGroupPolicies {const IamUserGroupPolicies({this.access, this.id, this.permissionGroups, this.resourceGroups, });

factory IamUserGroupPolicies.fromJson(Map<String, dynamic> json) { return IamUserGroupPolicies(
  access: json['access'] != null ? IamAccess.fromJson(json['access'] as String) : null,
  id: json['id'] != null ? IamPolicyIdentifier.fromJson(json['id'] as String) : null,
  permissionGroups: (json['permission_groups'] as List<dynamic>?)?.map((e) => IamPermissionGroup.fromJson(e as Map<String, dynamic>)).toList(),
  resourceGroups: (json['resource_groups'] as List<dynamic>?)?.map((e) => IamResourceGroup.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Allow or deny operations against the resources.
final IamAccess? access;

/// Policy identifier.
final IamPolicyIdentifier? id;

/// A set of permission groups that are specified to the policy.
final List<IamPermissionGroup>? permissionGroups;

/// A list of resource groups that the policy applies to.
final List<IamResourceGroup>? resourceGroups;

Map<String, dynamic> toJson() { return {
  if (access != null) 'access': access?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (permissionGroups != null) 'permission_groups': permissionGroups?.map((e) => e.toJson()).toList(),
  if (resourceGroups != null) 'resource_groups': resourceGroups?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IamUserGroupPolicies copyWith({IamAccess Function()? access, IamPolicyIdentifier Function()? id, List<IamPermissionGroup> Function()? permissionGroups, List<IamResourceGroup> Function()? resourceGroups, }) { return IamUserGroupPolicies(
  access: access != null ? access() : this.access,
  id: id != null ? id() : this.id,
  permissionGroups: permissionGroups != null ? permissionGroups() : this.permissionGroups,
  resourceGroups: resourceGroups != null ? resourceGroups() : this.resourceGroups,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUserGroupPolicies &&
          access == other.access &&
          id == other.id &&
          listEquals(permissionGroups, other.permissionGroups) &&
          listEquals(resourceGroups, other.resourceGroups); } 
@override int get hashCode { return Object.hash(access, id, Object.hashAll(permissionGroups ?? const []), Object.hashAll(resourceGroups ?? const [])); } 
@override String toString() { return 'IamUserGroupPolicies(access: $access, id: $id, permissionGroups: $permissionGroups, resourceGroups: $resourceGroups)'; } 
 }
