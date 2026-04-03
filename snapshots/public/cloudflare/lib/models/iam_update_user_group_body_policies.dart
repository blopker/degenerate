// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_access.dart';import 'iam_permission_group_ids2.dart';import 'iam_resource_group_ids2.dart';@immutable final class IamUpdateUserGroupBodyPolicies {const IamUpdateUserGroupBodyPolicies({required this.access, required this.permissionGroups, required this.resourceGroups, required this.id, });

factory IamUpdateUserGroupBodyPolicies.fromJson(Map<String, dynamic> json) { return IamUpdateUserGroupBodyPolicies(
  access: IamAccess.fromJson(json['access'] as String),
  permissionGroups: (json['permission_groups'] as List<dynamic>).map((e) => IamPermissionGroupIds2.fromJson(e as Map<String, dynamic>)).toList(),
  resourceGroups: (json['resource_groups'] as List<dynamic>).map((e) => IamResourceGroupIds2.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] as String,
); }

/// Allow or deny operations against the resources.
final IamAccess access;

/// A set of permission groups that are specified to the policy.
final List<IamPermissionGroupIds2> permissionGroups;

/// A set of resource groups that are specified to the policy.
final List<IamResourceGroupIds2> resourceGroups;

/// Policy identifier.
final String id;

Map<String, dynamic> toJson() { return {
  'access': access.toJson(),
  'permission_groups': permissionGroups.map((e) => e.toJson()).toList(),
  'resource_groups': resourceGroups.map((e) => e.toJson()).toList(),
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access') &&
      json.containsKey('permission_groups') &&
      json.containsKey('resource_groups') &&
      json.containsKey('id') && json['id'] is String; } 
IamUpdateUserGroupBodyPolicies copyWith({IamAccess? access, List<IamPermissionGroupIds2>? permissionGroups, List<IamResourceGroupIds2>? resourceGroups, String? id, }) { return IamUpdateUserGroupBodyPolicies(
  access: access ?? this.access,
  permissionGroups: permissionGroups ?? this.permissionGroups,
  resourceGroups: resourceGroups ?? this.resourceGroups,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUpdateUserGroupBodyPolicies &&
          access == other.access &&
          listEquals(permissionGroups, other.permissionGroups) &&
          listEquals(resourceGroups, other.resourceGroups) &&
          id == other.id; } 
@override int get hashCode { return Object.hash(access, Object.hashAll(permissionGroups), Object.hashAll(resourceGroups), id); } 
@override String toString() { return 'IamUpdateUserGroupBodyPolicies(access: $access, permissionGroups: $permissionGroups, resourceGroups: $resourceGroups, id: $id)'; } 
 }
