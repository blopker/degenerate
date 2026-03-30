// GENERATED CODE - DO NOT MODIFY BY HAND

import 'ruleset_version_with_state_actor.dart';final class RulesetVersionWithState {const RulesetVersionWithState({required this.versionId, required this.actor, required this.updatedAt, required this.state, });

factory RulesetVersionWithState.fromJson(Map<String, dynamic> json) { return RulesetVersionWithState(
  versionId: (json['version_id'] as num).toInt(),
  actor: RulesetVersionWithStateActor.fromJson(json['actor'] as Map<String, dynamic>),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  state: (json['state'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
); }

/// The ID of the previous version of the ruleset
final int versionId;

/// The actor who updated the ruleset
final RulesetVersionWithStateActor actor;

final DateTime updatedAt;

/// The state of the ruleset version
final Map<String,dynamic> state;

Map<String, dynamic> toJson() { return {
  'version_id': versionId,
  'actor': actor.toJson(),
  'updated_at': updatedAt.toIso8601String(),
  'state': state,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('version_id') && json['version_id'] is num &&
      json.containsKey('actor') &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('state'); } 
RulesetVersionWithState copyWith({int? versionId, RulesetVersionWithStateActor? actor, DateTime? updatedAt, Map<String,dynamic>? state, }) { return RulesetVersionWithState(
  versionId: versionId ?? this.versionId,
  actor: actor ?? this.actor,
  updatedAt: updatedAt ?? this.updatedAt,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetVersionWithState &&
          versionId == other.versionId &&
          actor == other.actor &&
          updatedAt == other.updatedAt &&
          state == other.state; } 
@override int get hashCode { return Object.hash(versionId, actor, updatedAt, state); } 
@override String toString() { return 'RulesetVersionWithState(versionId: $versionId, actor: $actor, updatedAt: $updatedAt, state: $state)'; } 
 }
