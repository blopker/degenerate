// GENERATED CODE - DO NOT MODIFY BY HAND

import 'audit_log_actor_session.dart';import 'key2.dart';/// The type of actor. Is either `session` or `api_key`.
final class AuditLogActorType {const AuditLogActorType._(this.value);

factory AuditLogActorType.fromJson(String json) { return switch (json) {
  'session' => session,
  'api_key' => apiKey,
  _ => AuditLogActorType._(json),
}; }

static const AuditLogActorType session = AuditLogActorType._('session');

static const AuditLogActorType apiKey = AuditLogActorType._('api_key');

static const List<AuditLogActorType> values = [session, apiKey];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AuditLogActorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AuditLogActorType($value)'; } 
 }
/// The actor who performed the audit logged action.
final class AuditLogActor {const AuditLogActor({this.type, this.session, this.apiKey, });

factory AuditLogActor.fromJson(Map<String, dynamic> json) { return AuditLogActor(
  type: json['type'] != null ? AuditLogActorType.fromJson(json['type'] as String) : null,
  session: json['session'] != null ? AuditLogActorSession.fromJson(json['session'] as Map<String, dynamic>) : null,
  apiKey: json['api_key'] != null ? Key2.fromJson(json['api_key'] as Map<String, dynamic>) : null,
); }

/// The type of actor. Is either `session` or `api_key`.
final AuditLogActorType? type;

final AuditLogActorSession? session;

final Key2? apiKey;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  if (session != null) 'session': session?.toJson(),
  if (apiKey != null) 'api_key': apiKey?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogActor copyWith({AuditLogActorType Function()? type, AuditLogActorSession Function()? session, Key2 Function()? apiKey, }) { return AuditLogActor(
  type: type != null ? type() : this.type,
  session: session != null ? session() : this.session,
  apiKey: apiKey != null ? apiKey() : this.apiKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogActor &&
          type == other.type &&
          session == other.session &&
          apiKey == other.apiKey; } 
@override int get hashCode { return Object.hash(type, session, apiKey); } 
@override String toString() { return 'AuditLogActor(type: $type, session: $session, apiKey: $apiKey)'; } 
 }
