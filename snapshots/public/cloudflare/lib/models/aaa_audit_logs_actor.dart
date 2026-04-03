// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of actor, whether a User, Cloudflare Admin, or an Automated System.
@immutable final class AaaAuditLogsActorType {const AaaAuditLogsActorType._(this.value);

factory AaaAuditLogsActorType.fromJson(String json) { return switch (json) {
  'user' => user,
  'admin' => admin,
  'Cloudflare' => cloudflare,
  _ => AaaAuditLogsActorType._(json),
}; }

static const AaaAuditLogsActorType user = AaaAuditLogsActorType._('user');

static const AaaAuditLogsActorType admin = AaaAuditLogsActorType._('admin');

static const AaaAuditLogsActorType cloudflare = AaaAuditLogsActorType._('Cloudflare');

static const List<AaaAuditLogsActorType> values = [user, admin, cloudflare];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AaaAuditLogsActorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AaaAuditLogsActorType($value)'; } 
 }
@immutable final class AaaAuditLogsActor {const AaaAuditLogsActor({this.email, this.id, this.ip, this.type, });

factory AaaAuditLogsActor.fromJson(Map<String, dynamic> json) { return AaaAuditLogsActor(
  email: json['email'] as String?,
  id: json['id'] as String?,
  ip: json['ip'] as String?,
  type: json['type'] != null ? AaaAuditLogsActorType.fromJson(json['type'] as String) : null,
); }

/// The email of the user that performed the action.
final String? email;

/// The ID of the actor that performed the action. If a user performed the action, this will be their User ID.
final String? id;

/// The IP address of the request that performed the action.
final String? ip;

/// The type of actor, whether a User, Cloudflare Admin, or an Automated System.
final AaaAuditLogsActorType? type;

Map<String, dynamic> toJson() { return {
  'email': ?email,
  'id': ?id,
  'ip': ?ip,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'id', 'ip', 'type'}.contains(key)); } 
AaaAuditLogsActor copyWith({String Function()? email, String Function()? id, String Function()? ip, AaaAuditLogsActorType Function()? type, }) { return AaaAuditLogsActor(
  email: email != null ? email() : this.email,
  id: id != null ? id() : this.id,
  ip: ip != null ? ip() : this.ip,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAuditLogsActor &&
          email == other.email &&
          id == other.id &&
          ip == other.ip &&
          type == other.type; } 
@override int get hashCode { return Object.hash(email, id, ip, type); } 
@override String toString() { return 'AaaAuditLogsActor(email: $email, id: $id, ip: $ip, type: $type)'; } 
 }
