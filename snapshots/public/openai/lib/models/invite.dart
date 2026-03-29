// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invite_projects.dart';/// The object type, which is always `organization.invite`
final class InviteObject {const InviteObject._(this.value);

factory InviteObject.fromJson(String json) { return switch (json) {
  'organization.invite' => organizationInvite,
  _ => InviteObject._(json),
}; }

static const InviteObject organizationInvite = InviteObject._('organization.invite');

static const List<InviteObject> values = [organizationInvite];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InviteObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InviteObject($value)'; } 
 }
/// `owner` or `reader`
final class InviteRole {const InviteRole._(this.value);

factory InviteRole.fromJson(String json) { return switch (json) {
  'owner' => owner,
  'reader' => reader,
  _ => InviteRole._(json),
}; }

static const InviteRole owner = InviteRole._('owner');

static const InviteRole reader = InviteRole._('reader');

static const List<InviteRole> values = [owner, reader];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InviteRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InviteRole($value)'; } 
 }
/// `accepted`,`expired`, or `pending`
final class InviteStatus {const InviteStatus._(this.value);

factory InviteStatus.fromJson(String json) { return switch (json) {
  'accepted' => accepted,
  'expired' => expired,
  'pending' => pending,
  _ => InviteStatus._(json),
}; }

static const InviteStatus accepted = InviteStatus._('accepted');

static const InviteStatus expired = InviteStatus._('expired');

static const InviteStatus pending = InviteStatus._('pending');

static const List<InviteStatus> values = [accepted, expired, pending];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InviteStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InviteStatus($value)'; } 
 }
/// Represents an individual `invite` to the organization.
final class Invite {const Invite({required this.object, required this.id, required this.email, required this.role, required this.status, required this.invitedAt, required this.expiresAt, this.acceptedAt, this.projects, });

factory Invite.fromJson(Map<String, dynamic> json) { return Invite(
  object: InviteObject.fromJson(json['object'] as String),
  id: json['id'] as String,
  email: json['email'] as String,
  role: InviteRole.fromJson(json['role'] as String),
  status: InviteStatus.fromJson(json['status'] as String),
  invitedAt: (json['invited_at'] as num).toInt(),
  expiresAt: (json['expires_at'] as num).toInt(),
  acceptedAt: json['accepted_at'] != null ? (json['accepted_at'] as num).toInt() : null,
  projects: (json['projects'] as List<dynamic>?)?.map((e) => InviteProjects.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The object type, which is always `organization.invite`
final InviteObject object;

/// The identifier, which can be referenced in API endpoints
final String id;

/// The email address of the individual to whom the invite was sent
final String email;

/// `owner` or `reader`
final InviteRole role;

/// `accepted`,`expired`, or `pending`
final InviteStatus status;

/// The Unix timestamp (in seconds) of when the invite was sent.
final int invitedAt;

/// The Unix timestamp (in seconds) of when the invite expires.
final int expiresAt;

/// The Unix timestamp (in seconds) of when the invite was accepted.
final int? acceptedAt;

/// The projects that were granted membership upon acceptance of the invite.
final List<InviteProjects>? projects;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'id': id,
  'email': email,
  'role': role.toJson(),
  'status': status.toJson(),
  'invited_at': invitedAt,
  'expires_at': expiresAt,
  'accepted_at': ?acceptedAt,
  if (projects != null) 'projects': projects?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('role') &&
      json.containsKey('status') &&
      json.containsKey('invited_at') && json['invited_at'] is num &&
      json.containsKey('expires_at') && json['expires_at'] is num; } 
Invite copyWith({InviteObject? object, String? id, String? email, InviteRole? role, InviteStatus? status, int? invitedAt, int? expiresAt, int Function()? acceptedAt, List<InviteProjects> Function()? projects, }) { return Invite(
  object: object ?? this.object,
  id: id ?? this.id,
  email: email ?? this.email,
  role: role ?? this.role,
  status: status ?? this.status,
  invitedAt: invitedAt ?? this.invitedAt,
  expiresAt: expiresAt ?? this.expiresAt,
  acceptedAt: acceptedAt != null ? acceptedAt() : this.acceptedAt,
  projects: projects != null ? projects() : this.projects,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Invite &&
          object == other.object &&
          id == other.id &&
          email == other.email &&
          role == other.role &&
          status == other.status &&
          invitedAt == other.invitedAt &&
          expiresAt == other.expiresAt &&
          acceptedAt == other.acceptedAt &&
          listEquals(projects, other.projects); } 
@override int get hashCode { return Object.hash(object, id, email, role, status, invitedAt, expiresAt, acceptedAt, Object.hashAll(projects ?? const [])); } 
@override String toString() { return 'Invite(object: $object, id: $id, email: $email, role: $role, status: $status, invitedAt: $invitedAt, expiresAt: $expiresAt, acceptedAt: $acceptedAt, projects: $projects)'; } 
 }
