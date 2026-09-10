// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_access.dart';import 'iam_member_permission_group.dart';import 'iam_member_resource_group.dart';@immutable final class IamCreateMemberPolicyRequest {const IamCreateMemberPolicyRequest({required this.access, required this.permissionGroups, required this.resourceGroups, });

factory IamCreateMemberPolicyRequest.fromJson(Map<String, dynamic> json) {return IamCreateMemberPolicyRequest(
  access: IamAccess.fromJson(json['access'] as String),
  permissionGroups: (json['permission_groups'] as List<dynamic>).map((e) => IamMemberPermissionGroup.fromJson(e as Map<String, dynamic>)).toList(),
  resourceGroups: (json['resource_groups'] as List<dynamic>).map((e) => IamMemberResourceGroup.fromJson(e as Map<String, dynamic>)).toList(),
);}

/// Allow or deny operations against the resources.
final IamAccess access;

/// A set of permission groups that are specified to the policy.
final List<IamMemberPermissionGroup> permissionGroups;

/// A list of resource groups that the policy applies to.
final List<IamMemberResourceGroup> resourceGroups;

Map<String, dynamic> toJson() {return {
  'access': access.toJson(),
  'permission_groups': permissionGroups.map((e) => e.toJson()).toList(),
  'resource_groups': resourceGroups.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('access') &&
      json.containsKey('permission_groups') &&
      json.containsKey('resource_groups');}
IamCreateMemberPolicyRequest copyWith({IamAccess? access, List<IamMemberPermissionGroup>? permissionGroups, List<IamMemberResourceGroup>? resourceGroups, }) {return IamCreateMemberPolicyRequest(
  access: access ?? this.access,
  permissionGroups: permissionGroups ?? this.permissionGroups,
  resourceGroups: resourceGroups ?? this.resourceGroups,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is IamCreateMemberPolicyRequest &&
          access == other.access &&
          listEquals(permissionGroups, other.permissionGroups) &&
          listEquals(resourceGroups, other.resourceGroups);}
@override int get hashCode {return Object.hash(access, Object.hashAll(permissionGroups), Object.hashAll(resourceGroups));}
@override String toString() {return 'IamCreateMemberPolicyRequest(access: $access, permissionGroups: $permissionGroups, resourceGroups: $resourceGroups)';}
}
