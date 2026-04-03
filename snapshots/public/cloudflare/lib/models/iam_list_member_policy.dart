// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_access.dart';import 'iam_permission_group.dart';import 'iam_policy_identifier.dart';import 'iam_resource_group.dart';@immutable final class IamListMemberPolicy {const IamListMemberPolicy({this.access, this.id, this.permissionGroups, this.resourceGroups, });

factory IamListMemberPolicy.fromJson(Map<String, dynamic> json) { return IamListMemberPolicy(
  access: json['access'] != null ? IamAccess.fromJson(json['access'] as String) : null,
  id: json['id'] != null ? IamPolicyIdentifier.fromJson(json['id'] as String) : null,
  permissionGroups: (json['permission_groups'] as List<dynamic>?)?.map((e) => IamPermissionGroup.fromJson(e as Map<String, dynamic>)).toList(),
  resourceGroups: (json['resource_groups'] as List<dynamic>?)?.map((e) => IamResourceGroup.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Allow or deny operations against the resources.
final IamAccess? access;

final IamPolicyIdentifier? id;

final List<IamPermissionGroup>? permissionGroups;

final List<IamResourceGroup>? resourceGroups;

Map<String, dynamic> toJson() { return {
  if (access != null) 'access': access?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (permissionGroups != null) 'permission_groups': permissionGroups?.map((e) => e.toJson()).toList(),
  if (resourceGroups != null) 'resource_groups': resourceGroups?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'access', 'id', 'permission_groups', 'resource_groups'}.contains(key)); } 
IamListMemberPolicy copyWith({IamAccess Function()? access, IamPolicyIdentifier Function()? id, List<IamPermissionGroup> Function()? permissionGroups, List<IamResourceGroup> Function()? resourceGroups, }) { return IamListMemberPolicy(
  access: access != null ? access() : this.access,
  id: id != null ? id() : this.id,
  permissionGroups: permissionGroups != null ? permissionGroups() : this.permissionGroups,
  resourceGroups: resourceGroups != null ? resourceGroups() : this.resourceGroups,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamListMemberPolicy &&
          access == other.access &&
          id == other.id &&
          listEquals(permissionGroups, other.permissionGroups) &&
          listEquals(resourceGroups, other.resourceGroups); } 
@override int get hashCode { return Object.hash(access, id, Object.hashAll(permissionGroups ?? const []), Object.hashAll(resourceGroups ?? const [])); } 
@override String toString() { return 'IamListMemberPolicy(access: $access, id: $id, permissionGroups: $permissionGroups, resourceGroups: $resourceGroups)'; } 
 }
