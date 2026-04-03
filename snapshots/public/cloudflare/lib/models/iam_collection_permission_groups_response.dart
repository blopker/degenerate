// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_permission_group.dart';@immutable final class IamCollectionPermissionGroupsResponse {const IamCollectionPermissionGroupsResponse({this.result});

factory IamCollectionPermissionGroupsResponse.fromJson(Map<String, dynamic> json) { return IamCollectionPermissionGroupsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamPermissionGroup.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamPermissionGroup>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamCollectionPermissionGroupsResponse copyWith({List<IamPermissionGroup> Function()? result}) { return IamCollectionPermissionGroupsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCollectionPermissionGroupsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamCollectionPermissionGroupsResponse(result: $result)'; } 
 }
