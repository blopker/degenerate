// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'simple_user.dart';/// The system role from which this role inherits permissions.
@immutable final class OrganizationRoleBaseRole {const OrganizationRoleBaseRole._(this.value);

factory OrganizationRoleBaseRole.fromJson(String json) { return switch (json) {
  'read' => read,
  'triage' => triage,
  'write' => write,
  'maintain' => maintain,
  'admin' => admin,
  'null' => $null,
  _ => OrganizationRoleBaseRole._(json),
}; }

static const OrganizationRoleBaseRole read = OrganizationRoleBaseRole._('read');

static const OrganizationRoleBaseRole triage = OrganizationRoleBaseRole._('triage');

static const OrganizationRoleBaseRole write = OrganizationRoleBaseRole._('write');

static const OrganizationRoleBaseRole maintain = OrganizationRoleBaseRole._('maintain');

static const OrganizationRoleBaseRole admin = OrganizationRoleBaseRole._('admin');

static const OrganizationRoleBaseRole $null = OrganizationRoleBaseRole._('null');

static const List<OrganizationRoleBaseRole> values = [read, triage, write, maintain, admin, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationRoleBaseRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationRoleBaseRole($value)'; } 
 }
/// Source answers the question, "where did this role come from?"
@immutable final class OrganizationRoleSource {const OrganizationRoleSource._(this.value);

factory OrganizationRoleSource.fromJson(String json) { return switch (json) {
  'Organization' => organization,
  'Enterprise' => enterprise,
  'Predefined' => predefined,
  'null' => $null,
  _ => OrganizationRoleSource._(json),
}; }

static const OrganizationRoleSource organization = OrganizationRoleSource._('Organization');

static const OrganizationRoleSource enterprise = OrganizationRoleSource._('Enterprise');

static const OrganizationRoleSource predefined = OrganizationRoleSource._('Predefined');

static const OrganizationRoleSource $null = OrganizationRoleSource._('null');

static const List<OrganizationRoleSource> values = [organization, enterprise, predefined, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationRoleSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationRoleSource($value)'; } 
 }
/// Organization roles
@immutable final class OrganizationRole {const OrganizationRole({required this.id, required this.name, required this.permissions, required this.organization, required this.createdAt, required this.updatedAt, this.description, this.baseRole, this.source, });

factory OrganizationRole.fromJson(Map<String, dynamic> json) { return OrganizationRole(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  baseRole: json['base_role'] != null ? OrganizationRoleBaseRole.fromJson(json['base_role'] as String) : null,
  source: json['source'] != null ? OrganizationRoleSource.fromJson(json['source'] as String) : null,
  permissions: (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
  organization: json['organization'] != null ? SimpleUser.fromJson(json['organization'] as Map<String, dynamic>) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// The unique identifier of the role.
final int id;

/// The name of the role.
final String name;

/// A short description about who this role is for or what permissions it grants.
final String? description;

/// The system role from which this role inherits permissions.
final OrganizationRoleBaseRole? baseRole;

/// Source answers the question, "where did this role come from?"
final OrganizationRoleSource? source;

/// A list of permissions included in this role.
final List<String> permissions;

final SimpleUser? organization;

/// The date and time the role was created.
final DateTime createdAt;

/// The date and time the role was last updated.
final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'description': ?description,
  if (baseRole != null) 'base_role': baseRole?.toJson(),
  if (source != null) 'source': source?.toJson(),
  'permissions': permissions,
  if (organization != null) 'organization': organization?.toJson(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('permissions') &&
      json.containsKey('organization') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
OrganizationRole copyWith({int? id, String? name, String? Function()? description, OrganizationRoleBaseRole? Function()? baseRole, OrganizationRoleSource? Function()? source, List<String>? permissions, SimpleUser? Function()? organization, DateTime? createdAt, DateTime? updatedAt, }) { return OrganizationRole(
  id: id ?? this.id,
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  baseRole: baseRole != null ? baseRole() : this.baseRole,
  source: source != null ? source() : this.source,
  permissions: permissions ?? this.permissions,
  organization: organization != null ? organization() : this.organization,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationRole &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          baseRole == other.baseRole &&
          source == other.source &&
          listEquals(permissions, other.permissions) &&
          organization == other.organization &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(id, name, description, baseRole, source, Object.hashAll(permissions), organization, createdAt, updatedAt); } 
@override String toString() { return 'OrganizationRole(id: $id, name: $name, description: $description, baseRole: $baseRole, source: $source, permissions: $permissions, organization: $organization, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
