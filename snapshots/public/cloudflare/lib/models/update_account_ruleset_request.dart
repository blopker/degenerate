// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_request_rule.dart';import 'rulesets_ruleset_id.dart';import 'rulesets_ruleset_kind.dart';import 'rulesets_ruleset_phase.dart';import 'rulesets_ruleset_version.dart';@immutable final class UpdateAccountRulesetRequest {const UpdateAccountRulesetRequest({required this.id, required this.lastUpdated, required this.version, this.description = '', this.name, this.kind, this.phase, this.rules, });

factory UpdateAccountRulesetRequest.fromJson(Map<String, dynamic> json) { return UpdateAccountRulesetRequest(
  description: json.containsKey('description') ? json['description'] as String : '',
  id: RulesetsRulesetId.fromJson(json['id'] as String),
  lastUpdated: DateTime.parse(json['last_updated'] as String),
  name: json['name'] as String?,
  version: RulesetsRulesetVersion.fromJson(json['version'] as String),
  kind: json['kind'] != null ? RulesetsRulesetKind.fromJson(json['kind'] as String) : null,
  phase: json['phase'] != null ? RulesetsRulesetPhase.fromJson(json['phase'] as String) : null,
  rules: (json['rules'] as List<dynamic>?)?.map((e) => RulesetsRequestRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// An informative description of the ruleset.
final String description;

/// The unique ID of the ruleset.
final RulesetsRulesetId id;

/// The timestamp of when the ruleset was last modified.
final DateTime lastUpdated;

/// The human-readable name of the ruleset.
final String? name;

/// The version of the ruleset.
final RulesetsRulesetVersion version;

/// The kind of the ruleset.
final RulesetsRulesetKind? kind;

/// The phase of the ruleset.
final RulesetsRulesetPhase? phase;

/// The list of rules in the ruleset.
final List<RulesetsRequestRule>? rules;

Map<String, dynamic> toJson() { return {
  'description': description,
  'id': id.toJson(),
  'last_updated': lastUpdated.toIso8601String(),
  'name': ?name,
  'version': version.toJson(),
  if (kind != null) 'kind': kind?.toJson(),
  if (phase != null) 'phase': phase?.toJson(),
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('last_updated') && json['last_updated'] is String &&
      json.containsKey('version'); } 
UpdateAccountRulesetRequest copyWith({String Function()? description, RulesetsRulesetId? id, DateTime? lastUpdated, String Function()? name, RulesetsRulesetVersion? version, RulesetsRulesetKind Function()? kind, RulesetsRulesetPhase Function()? phase, List<RulesetsRequestRule> Function()? rules, }) { return UpdateAccountRulesetRequest(
  description: description != null ? description() : this.description,
  id: id ?? this.id,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  name: name != null ? name() : this.name,
  version: version ?? this.version,
  kind: kind != null ? kind() : this.kind,
  phase: phase != null ? phase() : this.phase,
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateAccountRulesetRequest &&
          description == other.description &&
          id == other.id &&
          lastUpdated == other.lastUpdated &&
          name == other.name &&
          version == other.version &&
          kind == other.kind &&
          phase == other.phase &&
          listEquals(rules, other.rules); } 
@override int get hashCode { return Object.hash(description, id, lastUpdated, name, version, kind, phase, Object.hashAll(rules ?? const [])); } 
@override String toString() { return 'UpdateAccountRulesetRequest(description: $description, id: $id, lastUpdated: $lastUpdated, name: $name, version: $version, kind: $kind, phase: $phase, rules: $rules)'; } 
 }
