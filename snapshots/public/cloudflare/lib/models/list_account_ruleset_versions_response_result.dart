// GENERATED CODE - DO NOT MODIFY BY HAND

import 'rulesets_ruleset_id.dart';import 'rulesets_ruleset_kind.dart';import 'rulesets_ruleset_phase.dart';import 'rulesets_ruleset_version.dart';final class ListAccountRulesetVersionsResponseResult {const ListAccountRulesetVersionsResponseResult({this.description = '', required this.id, required this.lastUpdated, required this.name, required this.version, required this.kind, required this.phase, });

factory ListAccountRulesetVersionsResponseResult.fromJson(Map<String, dynamic> json) { return ListAccountRulesetVersionsResponseResult(
  description: json.containsKey('description') ? json['description'] as String : '',
  id: RulesetsRulesetId.fromJson(json['id'] as String),
  lastUpdated: DateTime.parse(json['last_updated'] as String),
  name: json['name'] as String,
  version: RulesetsRulesetVersion.fromJson(json['version'] as String),
  kind: RulesetsRulesetKind.fromJson(json['kind'] as String),
  phase: RulesetsRulesetPhase.fromJson(json['phase'] as String),
); }

/// An informative description of the ruleset.
final String description;

/// The unique ID of the ruleset.
final RulesetsRulesetId id;

/// The timestamp of when the ruleset was last modified.
final DateTime lastUpdated;

/// The human-readable name of the ruleset.
final String name;

/// The version of the ruleset.
final RulesetsRulesetVersion version;

/// The kind of the ruleset.
final RulesetsRulesetKind kind;

/// The phase of the ruleset.
final RulesetsRulesetPhase phase;

Map<String, dynamic> toJson() { return {
  'description': description,
  'id': id.toJson(),
  'last_updated': lastUpdated.toIso8601String(),
  'name': name,
  'version': version.toJson(),
  'kind': kind.toJson(),
  'phase': phase.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('last_updated') && json['last_updated'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('version') &&
      json.containsKey('kind') &&
      json.containsKey('phase'); } 
ListAccountRulesetVersionsResponseResult copyWith({String Function()? description, RulesetsRulesetId? id, DateTime? lastUpdated, String? name, RulesetsRulesetVersion? version, RulesetsRulesetKind? kind, RulesetsRulesetPhase? phase, }) { return ListAccountRulesetVersionsResponseResult(
  description: description != null ? description() : this.description,
  id: id ?? this.id,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  name: name ?? this.name,
  version: version ?? this.version,
  kind: kind ?? this.kind,
  phase: phase ?? this.phase,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListAccountRulesetVersionsResponseResult &&
          description == other.description &&
          id == other.id &&
          lastUpdated == other.lastUpdated &&
          name == other.name &&
          version == other.version &&
          kind == other.kind &&
          phase == other.phase; } 
@override int get hashCode { return Object.hash(description, id, lastUpdated, name, version, kind, phase); } 
@override String toString() { return 'ListAccountRulesetVersionsResponseResult(description: $description, id: $id, lastUpdated: $lastUpdated, name: $name, version: $version, kind: $kind, phase: $phase)'; } 
 }
