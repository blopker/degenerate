// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The object type, which is always `organization.user`
@immutable final class UserObject {const UserObject._(this.value);

factory UserObject.fromJson(String json) { return switch (json) {
  'organization.user' => organizationUser,
  _ => UserObject._(json),
}; }

static const UserObject organizationUser = UserObject._('organization.user');

static const List<UserObject> values = [organizationUser];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserObject($value)'; } 
 }
/// `owner` or `reader`
@immutable final class UserRole {const UserRole._(this.value);

factory UserRole.fromJson(String json) { return switch (json) {
  'owner' => owner,
  'reader' => reader,
  _ => UserRole._(json),
}; }

static const UserRole owner = UserRole._('owner');

static const UserRole reader = UserRole._('reader');

static const List<UserRole> values = [owner, reader];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserRole($value)'; } 
 }
/// Represents an individual `user` within an organization.
@immutable final class User {const User({required this.object, required this.id, required this.name, required this.email, required this.role, required this.addedAt, });

factory User.fromJson(Map<String, dynamic> json) { return User(
  object: UserObject.fromJson(json['object'] as String),
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  role: UserRole.fromJson(json['role'] as String),
  addedAt: (json['added_at'] as num).toInt(),
); }

/// The object type, which is always `organization.user`
final UserObject object;

/// The identifier, which can be referenced in API endpoints
final String id;

/// The name of the user
final String name;

/// The email address of the user
final String email;

/// `owner` or `reader`
final UserRole role;

/// The Unix timestamp (in seconds) of when the user was added.
final int addedAt;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'id': id,
  'name': name,
  'email': email,
  'role': role.toJson(),
  'added_at': addedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('role') &&
      json.containsKey('added_at') && json['added_at'] is num; } 
User copyWith({UserObject? object, String? id, String? name, String? email, UserRole? role, int? addedAt, }) { return User(
  object: object ?? this.object,
  id: id ?? this.id,
  name: name ?? this.name,
  email: email ?? this.email,
  role: role ?? this.role,
  addedAt: addedAt ?? this.addedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is User &&
          object == other.object &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          role == other.role &&
          addedAt == other.addedAt; } 
@override int get hashCode { return Object.hash(object, id, name, email, role, addedAt); } 
@override String toString() { return 'User(object: $object, id: $id, name: $name, email: $email, role: $role, addedAt: $addedAt)'; } 
 }
