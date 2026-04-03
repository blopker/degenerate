// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// `owner` or `member`
@immutable final class ProjectUserCreateRequestRole {const ProjectUserCreateRequestRole._(this.value);

factory ProjectUserCreateRequestRole.fromJson(String json) { return switch (json) {
  'owner' => owner,
  'member' => member,
  _ => ProjectUserCreateRequestRole._(json),
}; }

static const ProjectUserCreateRequestRole owner = ProjectUserCreateRequestRole._('owner');

static const ProjectUserCreateRequestRole member = ProjectUserCreateRequestRole._('member');

static const List<ProjectUserCreateRequestRole> values = [owner, member];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectUserCreateRequestRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProjectUserCreateRequestRole($value)'; } 
 }
@immutable final class ProjectUserCreateRequest {const ProjectUserCreateRequest({required this.userId, required this.role, });

factory ProjectUserCreateRequest.fromJson(Map<String, dynamic> json) { return ProjectUserCreateRequest(
  userId: json['user_id'] as String,
  role: ProjectUserCreateRequestRole.fromJson(json['role'] as String),
); }

/// The ID of the user.
final String userId;

/// `owner` or `member`
final ProjectUserCreateRequestRole role;

Map<String, dynamic> toJson() { return {
  'user_id': userId,
  'role': role.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('user_id') && json['user_id'] is String &&
      json.containsKey('role'); } 
ProjectUserCreateRequest copyWith({String? userId, ProjectUserCreateRequestRole? role, }) { return ProjectUserCreateRequest(
  userId: userId ?? this.userId,
  role: role ?? this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectUserCreateRequest &&
          userId == other.userId &&
          role == other.role; } 
@override int get hashCode { return Object.hash(userId, role); } 
@override String toString() { return 'ProjectUserCreateRequest(userId: $userId, role: $role)'; } 
 }
