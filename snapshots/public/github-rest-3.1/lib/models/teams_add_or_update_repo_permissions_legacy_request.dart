// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The permission to grant the team on this repository. If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
@immutable final class TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission {const TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission._(this.value);

factory TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission.fromJson(String json) { return switch (json) {
  'pull' => pull,
  'push' => push,
  'admin' => admin,
  _ => TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission._(json),
}; }

static const TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission pull = TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission._('pull');

static const TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission push = TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission._('push');

static const TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission admin = TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission._('admin');

static const List<TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission> values = [pull, push, admin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission($value)'; } 
 }
@immutable final class TeamsAddOrUpdateRepoPermissionsLegacyRequest {const TeamsAddOrUpdateRepoPermissionsLegacyRequest({this.permission});

factory TeamsAddOrUpdateRepoPermissionsLegacyRequest.fromJson(Map<String, dynamic> json) { return TeamsAddOrUpdateRepoPermissionsLegacyRequest(
  permission: json['permission'] != null ? TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission.fromJson(json['permission'] as String) : null,
); }

/// The permission to grant the team on this repository. If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
final TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission? permission;

Map<String, dynamic> toJson() { return {
  if (permission != null) 'permission': permission?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'permission'}.contains(key)); } 
TeamsAddOrUpdateRepoPermissionsLegacyRequest copyWith({TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission Function()? permission}) { return TeamsAddOrUpdateRepoPermissionsLegacyRequest(
  permission: permission != null ? permission() : this.permission,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsAddOrUpdateRepoPermissionsLegacyRequest &&
          permission == other.permission; } 
@override int get hashCode { return permission.hashCode; } 
@override String toString() { return 'TeamsAddOrUpdateRepoPermissionsLegacyRequest(permission: $permission)'; } 
 }
