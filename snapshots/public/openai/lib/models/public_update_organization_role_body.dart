// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Request payload for updating an existing role.
@immutable final class PublicUpdateOrganizationRoleBody {const PublicUpdateOrganizationRoleBody({this.permissions = const Omittable.absent(), this.description = const Omittable.absent(), this.roleName = const Omittable.absent(), });

factory PublicUpdateOrganizationRoleBody.fromJson(Map<String, dynamic> json) { return PublicUpdateOrganizationRoleBody(
  permissions: json.containsKey('permissions') ? Omittable((json['permissions'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  roleName: json.containsKey('role_name') ? Omittable(json['role_name'] as String?) : const Omittable.absent(),
); }

/// Updated set of permissions for the role.
final Omittable<List<String>?> permissions;

/// New description for the role.
final Omittable<String?> description;

/// New name for the role.
final Omittable<String?> roleName;

Map<String, dynamic> toJson() { return {
  if (permissions.isPresent) 'permissions': permissions.value,
  if (description.isPresent) 'description': description.value,
  if (roleName.isPresent) 'role_name': roleName.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'permissions', 'description', 'role_name'}.contains(key)); } 
PublicUpdateOrganizationRoleBody copyWith({Omittable<List<String>?>? permissions, Omittable<String?>? description, Omittable<String?>? roleName, }) { return PublicUpdateOrganizationRoleBody(
  permissions: permissions ?? this.permissions,
  description: description ?? this.description,
  roleName: roleName ?? this.roleName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PublicUpdateOrganizationRoleBody &&
          permissions.isPresent == other.permissions.isPresent &&
          listEquals(permissions.value, other.permissions.value) &&
          description == other.description &&
          roleName == other.roleName; } 
@override int get hashCode { return Object.hash(Object.hashAll(permissions.value ?? const []), description, roleName); } 
@override String toString() { return 'PublicUpdateOrganizationRoleBody(permissions: $permissions, description: $description, roleName: $roleName)'; } 
 }
