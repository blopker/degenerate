// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Request payload for creating a custom role.
@immutable final class PublicCreateOrganizationRoleBody {const PublicCreateOrganizationRoleBody({required this.roleName, required this.permissions, this.description, });

factory PublicCreateOrganizationRoleBody.fromJson(Map<String, dynamic> json) { return PublicCreateOrganizationRoleBody(
  roleName: json['role_name'] as String,
  permissions: (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
  description: json['description'] as String?,
); }

/// Unique name for the role.
final String roleName;

/// Permissions to grant to the role.
final List<String> permissions;

/// Optional description of the role.
final String? description;

Map<String, dynamic> toJson() { return {
  'role_name': roleName,
  'permissions': permissions,
  'description': ?description,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('role_name') && json['role_name'] is String &&
      json.containsKey('permissions'); } 
PublicCreateOrganizationRoleBody copyWith({String? roleName, List<String>? permissions, String? Function()? description, }) { return PublicCreateOrganizationRoleBody(
  roleName: roleName ?? this.roleName,
  permissions: permissions ?? this.permissions,
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PublicCreateOrganizationRoleBody &&
          roleName == other.roleName &&
          listEquals(permissions, other.permissions) &&
          description == other.description; } 
@override int get hashCode { return Object.hash(roleName, Object.hashAll(permissions), description); } 
@override String toString() { return 'PublicCreateOrganizationRoleBody(roleName: $roleName, permissions: $permissions, description: $description)'; } 
 }
