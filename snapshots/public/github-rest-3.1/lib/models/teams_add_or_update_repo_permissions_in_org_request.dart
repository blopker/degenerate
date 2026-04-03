// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TeamsAddOrUpdateRepoPermissionsInOrgRequest {const TeamsAddOrUpdateRepoPermissionsInOrgRequest({this.permission});

factory TeamsAddOrUpdateRepoPermissionsInOrgRequest.fromJson(Map<String, dynamic> json) { return TeamsAddOrUpdateRepoPermissionsInOrgRequest(
  permission: json['permission'] as String?,
); }

/// The permission to grant the team on this repository. We accept the following permissions to be set: `pull`, `triage`, `push`, `maintain`, `admin` and you can also specify a custom repository role name, if the owning organization has defined any. If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
final String? permission;

Map<String, dynamic> toJson() { return {
  'permission': ?permission,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'permission'}.contains(key)); } 
TeamsAddOrUpdateRepoPermissionsInOrgRequest copyWith({String Function()? permission}) { return TeamsAddOrUpdateRepoPermissionsInOrgRequest(
  permission: permission != null ? permission() : this.permission,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsAddOrUpdateRepoPermissionsInOrgRequest &&
          permission == other.permission; } 
@override int get hashCode { return permission.hashCode; } 
@override String toString() { return 'TeamsAddOrUpdateRepoPermissionsInOrgRequest(permission: $permission)'; } 
 }
