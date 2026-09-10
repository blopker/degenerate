// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_effect.dart';import 'iam_permission_group_request.dart';import 'iam_resources.dart';@immutable final class IamPolicyWithPermissionGroupsAndResourcesRequest {const IamPolicyWithPermissionGroupsAndResourcesRequest({required this.effect, required this.permissionGroups, required this.resources, });

factory IamPolicyWithPermissionGroupsAndResourcesRequest.fromJson(Map<String, dynamic> json) { return IamPolicyWithPermissionGroupsAndResourcesRequest(
  effect: IamEffect.fromJson(json['effect'] as String),
  permissionGroups: (json['permission_groups'] as List<dynamic>).map((e) => IamPermissionGroupRequest.fromJson(e as Map<String, dynamic>)).toList(),
  resources: OneOf2.parse(json['resources'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)))),),
); }

/// Allow or deny operations against the resources.
final IamEffect effect;

/// A set of permission groups that are specified to the policy.
final List<IamPermissionGroupRequest> permissionGroups;

final IamResources resources;

Map<String, dynamic> toJson() { return {
  'effect': effect.toJson(),
  'permission_groups': permissionGroups.map((e) => e.toJson()).toList(),
  'resources': resources.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('effect') &&
      json.containsKey('permission_groups') &&
      json.containsKey('resources'); } 
IamPolicyWithPermissionGroupsAndResourcesRequest copyWith({IamEffect? effect, List<IamPermissionGroupRequest>? permissionGroups, IamResources? resources, }) { return IamPolicyWithPermissionGroupsAndResourcesRequest(
  effect: effect ?? this.effect,
  permissionGroups: permissionGroups ?? this.permissionGroups,
  resources: resources ?? this.resources,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamPolicyWithPermissionGroupsAndResourcesRequest &&
          effect == other.effect &&
          listEquals(permissionGroups, other.permissionGroups) &&
          resources == other.resources; } 
@override int get hashCode { return Object.hash(effect, Object.hashAll(permissionGroups), resources); } 
@override String toString() { return 'IamPolicyWithPermissionGroupsAndResourcesRequest(effect: $effect, permissionGroups: $permissionGroups, resources: $resources)'; } 
 }
