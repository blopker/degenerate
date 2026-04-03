// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invite_request_projects.dart';/// `owner` or `reader`
@immutable final class InviteRequestRole {const InviteRequestRole._(this.value);

factory InviteRequestRole.fromJson(String json) { return switch (json) {
  'reader' => reader,
  'owner' => owner,
  _ => InviteRequestRole._(json),
}; }

static const InviteRequestRole reader = InviteRequestRole._('reader');

static const InviteRequestRole owner = InviteRequestRole._('owner');

static const List<InviteRequestRole> values = [reader, owner];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InviteRequestRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InviteRequestRole($value)'; } 
 }
@immutable final class InviteRequest {const InviteRequest({required this.email, required this.role, this.projects, });

factory InviteRequest.fromJson(Map<String, dynamic> json) { return InviteRequest(
  email: json['email'] as String,
  role: InviteRequestRole.fromJson(json['role'] as String),
  projects: (json['projects'] as List<dynamic>?)?.map((e) => InviteRequestProjects.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Send an email to this address
final String email;

/// `owner` or `reader`
final InviteRequestRole role;

/// An array of projects to which membership is granted at the same time the org invite is accepted. If omitted, the user will be invited to the default project for compatibility with legacy behavior.
final List<InviteRequestProjects>? projects;

Map<String, dynamic> toJson() { return {
  'email': email,
  'role': role.toJson(),
  if (projects != null) 'projects': projects?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('role'); } 
InviteRequest copyWith({String? email, InviteRequestRole? role, List<InviteRequestProjects> Function()? projects, }) { return InviteRequest(
  email: email ?? this.email,
  role: role ?? this.role,
  projects: projects != null ? projects() : this.projects,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InviteRequest &&
          email == other.email &&
          role == other.role &&
          listEquals(projects, other.projects); } 
@override int get hashCode { return Object.hash(email, role, Object.hashAll(projects ?? const [])); } 
@override String toString() { return 'InviteRequest(email: $email, role: $role, projects: $projects)'; } 
 }
