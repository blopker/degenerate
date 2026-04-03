// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_ruleset_id.dart';import 'rulesets_ruleset_version.dart';/// A ruleset object.
@immutable final class RulesetsRuleset {const RulesetsRuleset({required this.id, required this.lastUpdated, required this.version, this.description = '', this.name, });

factory RulesetsRuleset.fromJson(Map<String, dynamic> json) { return RulesetsRuleset(
  description: json.containsKey('description') ? json['description'] as String : '',
  id: RulesetsRulesetId.fromJson(json['id'] as String),
  lastUpdated: DateTime.parse(json['last_updated'] as String),
  name: json['name'] as String?,
  version: RulesetsRulesetVersion.fromJson(json['version'] as String),
); }

/// An informative description of the ruleset.
final String description;

final RulesetsRulesetId id;

/// The timestamp of when the ruleset was last modified.
final DateTime lastUpdated;

/// The human-readable name of the ruleset.
final String? name;

final RulesetsRulesetVersion version;

Map<String, dynamic> toJson() { return {
  'description': description,
  'id': id.toJson(),
  'last_updated': lastUpdated.toIso8601String(),
  'name': ?name,
  'version': version.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('last_updated') && json['last_updated'] is String &&
      json.containsKey('version'); } 
RulesetsRuleset copyWith({String Function()? description, RulesetsRulesetId? id, DateTime? lastUpdated, String Function()? name, RulesetsRulesetVersion? version, }) { return RulesetsRuleset(
  description: description != null ? description() : this.description,
  id: id ?? this.id,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  name: name != null ? name() : this.name,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRuleset &&
          description == other.description &&
          id == other.id &&
          lastUpdated == other.lastUpdated &&
          name == other.name &&
          version == other.version; } 
@override int get hashCode { return Object.hash(description, id, lastUpdated, name, version); } 
@override String toString() { return 'RulesetsRuleset(description: $description, id: $id, lastUpdated: $lastUpdated, name: $name, version: $version)'; } 
 }
