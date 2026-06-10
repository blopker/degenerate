// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_content.dart';/// The role of the message input. One of `user`, `system`, or `developer`.
/// 
@immutable final class InputMessageResourceRole {const InputMessageResourceRole._(this.value);

factory InputMessageResourceRole.fromJson(String json) { return switch (json) {
  'user' => user,
  'system' => system,
  'developer' => developer,
  _ => InputMessageResourceRole._(json),
}; }

static const InputMessageResourceRole user = InputMessageResourceRole._('user');

static const InputMessageResourceRole system = InputMessageResourceRole._('system');

static const InputMessageResourceRole developer = InputMessageResourceRole._('developer');

static const List<InputMessageResourceRole> values = [user, system, developer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputMessageResourceRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InputMessageResourceRole($value)'; } 
 }
/// The status of item. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when items are returned via API.
/// 
@immutable final class InputMessageResourceStatus {const InputMessageResourceStatus._(this.value);

factory InputMessageResourceStatus.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  'completed' => completed,
  'incomplete' => incomplete,
  _ => InputMessageResourceStatus._(json),
}; }

static const InputMessageResourceStatus inProgress = InputMessageResourceStatus._('in_progress');

static const InputMessageResourceStatus completed = InputMessageResourceStatus._('completed');

static const InputMessageResourceStatus incomplete = InputMessageResourceStatus._('incomplete');

static const List<InputMessageResourceStatus> values = [inProgress, completed, incomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputMessageResourceStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InputMessageResourceStatus($value)'; } 
 }
@immutable final class InputMessageResource {const InputMessageResource({required this.role, required this.content, required this.id, this.type, this.status, });

factory InputMessageResource.fromJson(Map<String, dynamic> json) { return InputMessageResource(
  type: json['type'] as String?,
  role: InputMessageResourceRole.fromJson(json['role'] as String),
  status: json['status'] != null ? InputMessageResourceStatus.fromJson(json['status'] as String) : null,
  content: (json['content'] as List<dynamic>).map((e) => InputContent.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] as String,
); }

/// The type of the message input. Always set to `message`.
/// 
final String? type;

/// The role of the message input. One of `user`, `system`, or `developer`.
/// 
final InputMessageResourceRole role;

/// The status of item. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when items are returned via API.
/// 
final InputMessageResourceStatus? status;

/// A list of one or many input items to the model, containing different content
/// types.
/// 
final List<InputContent> content;

/// The unique ID of the message input.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'type': ?type,
  'role': role.toJson(),
  if (status != null) 'status': status?.toJson(),
  'content': content.map((e) => e.toJson()).toList(),
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('role') &&
      json.containsKey('content') &&
      json.containsKey('id') && json['id'] is String; } 
InputMessageResource copyWith({String Function()? type, InputMessageResourceRole? role, InputMessageResourceStatus Function()? status, List<InputContent>? content, String? id, }) { return InputMessageResource(
  type: type != null ? type() : this.type,
  role: role ?? this.role,
  status: status != null ? status() : this.status,
  content: content ?? this.content,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputMessageResource &&
          type == other.type &&
          role == other.role &&
          status == other.status &&
          listEquals(content, other.content) &&
          id == other.id; } 
@override int get hashCode { return Object.hash(type, role, status, Object.hashAll(content), id); } 
@override String toString() { return 'InputMessageResource(type: $type, role: $role, status: $status, content: $content, id: $id)'; } 
 }
