// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_permissions.dart';import 'iam_role_components_schemas_identifier.dart';final class IamRole {const IamRole({required this.description, required this.id, required this.name, required this.permissions, });

factory IamRole.fromJson(Map<String, dynamic> json) { return IamRole(
  description: json['description'] as String,
  id: IamRoleComponentsSchemasIdentifier.fromJson(json['id'] as String),
  name: json['name'] as String,
  permissions: IamPermissions.fromJson(json['permissions'] as Map<String, dynamic>),
); }

/// Description of role's permissions.
final String description;

final IamRoleComponentsSchemasIdentifier id;

/// Role name.
final String name;

final IamPermissions permissions;

Map<String, dynamic> toJson() { return {
  'description': description,
  'id': id.toJson(),
  'name': name,
  'permissions': permissions.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('permissions'); } 
IamRole copyWith({String? description, IamRoleComponentsSchemasIdentifier? id, String? name, IamPermissions? permissions, }) { return IamRole(
  description: description ?? this.description,
  id: id ?? this.id,
  name: name ?? this.name,
  permissions: permissions ?? this.permissions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamRole &&
          description == other.description &&
          id == other.id &&
          name == other.name &&
          permissions == other.permissions; } 
@override int get hashCode { return Object.hash(description, id, name, permissions); } 
@override String toString() { return 'IamRole(description: $description, id: $id, name: $name, permissions: $permissions)'; } 
 }
