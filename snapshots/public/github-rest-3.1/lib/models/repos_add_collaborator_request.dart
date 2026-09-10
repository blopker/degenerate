// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposAddCollaboratorRequest {const ReposAddCollaboratorRequest({this.permission});

factory ReposAddCollaboratorRequest.fromJson(Map<String, dynamic> json) { return ReposAddCollaboratorRequest(
  permission: json['permission'] as String?,
); }

/// The permission to grant the collaborator. **Only valid on organization-owned repositories.** We accept the following permissions to be set: `pull`, `triage`, `push`, `maintain`, `admin` and you can also specify a custom repository role name, if the owning organization has defined any.
final String? permission;

/// The value with the schema default applied when absent.
String get permissionOrDefault { return permission ?? 'push'; } 
Map<String, dynamic> toJson() { return {
  'permission': ?permission,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'permission'}.contains(key)); } 
ReposAddCollaboratorRequest copyWith({String? Function()? permission}) { return ReposAddCollaboratorRequest(
  permission: permission != null ? permission() : this.permission,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposAddCollaboratorRequest &&
          permission == other.permission; } 
@override int get hashCode { return permission.hashCode; } 
@override String toString() { return 'ReposAddCollaboratorRequest(permission: $permission)'; } 
 }
