// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPermissionCreateRequestRole {const PostPermissionCreateRequestRole._(this.value);

factory PostPermissionCreateRequestRole.fromJson(String json) { return switch (json) {
  'read' => read,
  'write' => write,
  _ => PostPermissionCreateRequestRole._(json),
}; }

static const PostPermissionCreateRequestRole read = PostPermissionCreateRequestRole._('read');

static const PostPermissionCreateRequestRole write = PostPermissionCreateRequestRole._('write');

static const List<PostPermissionCreateRequestRole> values = [read, write];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPermissionCreateRequestRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPermissionCreateRequestRole($value)'; } 
 }
@immutable final class PostPermissionCreateRequestSubjectType {const PostPermissionCreateRequestSubjectType._(this.value);

factory PostPermissionCreateRequestSubjectType.fromJson(String json) { return switch (json) {
  'account' => account,
  'group' => group,
  _ => PostPermissionCreateRequestSubjectType._(json),
}; }

static const PostPermissionCreateRequestSubjectType account = PostPermissionCreateRequestSubjectType._('account');

static const PostPermissionCreateRequestSubjectType group = PostPermissionCreateRequestSubjectType._('group');

static const List<PostPermissionCreateRequestSubjectType> values = [account, group];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPermissionCreateRequestSubjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPermissionCreateRequestSubjectType($value)'; } 
 }
@immutable final class PostPermissionCreateRequest {const PostPermissionCreateRequest({required this.role, required this.subjectId, required this.subjectType, });

factory PostPermissionCreateRequest.fromJson(Map<String, dynamic> json) { return PostPermissionCreateRequest(
  role: PostPermissionCreateRequestRole.fromJson(json['role'] as String),
  subjectId: json['subjectId'] as String,
  subjectType: PostPermissionCreateRequestSubjectType.fromJson(json['subjectType'] as String),
); }

final PostPermissionCreateRequestRole role;

final String subjectId;

final PostPermissionCreateRequestSubjectType subjectType;

Map<String, dynamic> toJson() { return {
  'role': role.toJson(),
  'subjectId': subjectId,
  'subjectType': subjectType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('role') &&
      json.containsKey('subjectId') && json['subjectId'] is String &&
      json.containsKey('subjectType'); } 
PostPermissionCreateRequest copyWith({PostPermissionCreateRequestRole? role, String? subjectId, PostPermissionCreateRequestSubjectType? subjectType, }) { return PostPermissionCreateRequest(
  role: role ?? this.role,
  subjectId: subjectId ?? this.subjectId,
  subjectType: subjectType ?? this.subjectType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPermissionCreateRequest &&
          role == other.role &&
          subjectId == other.subjectId &&
          subjectType == other.subjectType; } 
@override int get hashCode { return Object.hash(role, subjectId, subjectType); } 
@override String toString() { return 'PostPermissionCreateRequest(role: $role, subjectId: $subjectId, subjectType: $subjectType)'; } 
 }
