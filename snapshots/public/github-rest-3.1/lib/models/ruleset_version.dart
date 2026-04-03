// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ruleset_version_actor.dart';/// The historical version of a ruleset
@immutable final class RulesetVersion {const RulesetVersion({required this.versionId, required this.actor, required this.updatedAt, });

factory RulesetVersion.fromJson(Map<String, dynamic> json) { return RulesetVersion(
  versionId: (json['version_id'] as num).toInt(),
  actor: RulesetVersionActor.fromJson(json['actor'] as Map<String, dynamic>),
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// The ID of the previous version of the ruleset
final int versionId;

/// The actor who updated the ruleset
final RulesetVersionActor actor;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'version_id': versionId,
  'actor': actor.toJson(),
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('version_id') && json['version_id'] is num &&
      json.containsKey('actor') &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
RulesetVersion copyWith({int? versionId, RulesetVersionActor? actor, DateTime? updatedAt, }) { return RulesetVersion(
  versionId: versionId ?? this.versionId,
  actor: actor ?? this.actor,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetVersion &&
          versionId == other.versionId &&
          actor == other.actor &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(versionId, actor, updatedAt); } 
@override String toString() { return 'RulesetVersion(versionId: $versionId, actor: $actor, updatedAt: $updatedAt)'; } 
 }
