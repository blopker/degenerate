// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'actor.dart';import 'event_payload.dart';import 'event_repo.dart';/// Event
@immutable final class Event {const Event({required this.id, required this.type, required this.actor, required this.repo, required this.payload, required this.public, required this.createdAt, this.org, });

factory Event.fromJson(Map<String, dynamic> json) { return Event(
  id: json['id'] as String,
  type: json['type'] as String?,
  actor: Actor.fromJson(json['actor'] as Map<String, dynamic>),
  repo: EventRepo.fromJson(json['repo'] as Map<String, dynamic>),
  org: json['org'] != null ? Actor.fromJson(json['org'] as Map<String, dynamic>) : null,
  payload: EventPayload.fromJson(json['payload'] as Map<String, dynamic>),
  public: json['public'] as bool,
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
); }

final String id;

final String? type;

final Actor actor;

final EventRepo repo;

final Actor? org;

final EventPayload payload;

final bool public;

final DateTime? createdAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'type': ?type,
  'actor': actor.toJson(),
  'repo': repo.toJson(),
  if (org != null) 'org': org?.toJson(),
  'payload': payload.toJson(),
  'public': public,
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('actor') &&
      json.containsKey('repo') &&
      json.containsKey('payload') &&
      json.containsKey('public') && json['public'] is bool &&
      json.containsKey('created_at') && json['created_at'] is String; } 
Event copyWith({String? id, String? Function()? type, Actor? actor, EventRepo? repo, Actor Function()? org, EventPayload? payload, bool? public, DateTime? Function()? createdAt, }) { return Event(
  id: id ?? this.id,
  type: type != null ? type() : this.type,
  actor: actor ?? this.actor,
  repo: repo ?? this.repo,
  org: org != null ? org() : this.org,
  payload: payload ?? this.payload,
  public: public ?? this.public,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Event &&
          id == other.id &&
          type == other.type &&
          actor == other.actor &&
          repo == other.repo &&
          org == other.org &&
          payload == other.payload &&
          public == other.public &&
          createdAt == other.createdAt; } 
@override int get hashCode { return Object.hash(id, type, actor, repo, org, payload, public, createdAt); } 
@override String toString() { return 'Event(id: $id, type: $type, actor: $actor, repo: $repo, org: $org, payload: $payload, public: $public, createdAt: $createdAt)'; } 
 }
