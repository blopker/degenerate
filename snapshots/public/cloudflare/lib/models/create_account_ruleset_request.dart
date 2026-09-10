// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_request_rule_request.dart';import 'rulesets_ruleset_kind.dart';import 'rulesets_ruleset_phase.dart';@immutable final class CreateAccountRulesetRequest {const CreateAccountRulesetRequest({required this.name, required this.kind, required this.phase, this.description, this.rules, });

factory CreateAccountRulesetRequest.fromJson(Map<String, dynamic> json) { return CreateAccountRulesetRequest(
  description: json['description'] as String?,
  name: json['name'] as String,
  kind: RulesetsRulesetKind.fromJson(json['kind'] as String),
  phase: RulesetsRulesetPhase.fromJson(json['phase'] as String),
  rules: (json['rules'] as List<dynamic>?)?.map((e) => RulesetsRequestRuleRequest.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// An informative description of the ruleset.
final String? description;

/// The human-readable name of the ruleset.
final String name;

/// The kind of the ruleset.
final RulesetsRulesetKind kind;

/// The phase of the ruleset.
final RulesetsRulesetPhase phase;

/// The list of rules in the ruleset.
final List<RulesetsRequestRuleRequest>? rules;

/// The value with the schema default applied when absent.
String get descriptionOrDefault { return description ?? ''; } 
Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
  'kind': kind.toJson(),
  'phase': phase.toJson(),
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('kind') &&
      json.containsKey('phase'); } 
CreateAccountRulesetRequest copyWith({String? Function()? description, String? name, RulesetsRulesetKind? kind, RulesetsRulesetPhase? phase, List<RulesetsRequestRuleRequest>? Function()? rules, }) { return CreateAccountRulesetRequest(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  kind: kind ?? this.kind,
  phase: phase ?? this.phase,
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAccountRulesetRequest &&
          description == other.description &&
          name == other.name &&
          kind == other.kind &&
          phase == other.phase &&
          listEquals(rules, other.rules); } 
@override int get hashCode { return Object.hash(description, name, kind, phase, Object.hashAll(rules ?? const [])); } 
@override String toString() { return 'CreateAccountRulesetRequest(description: $description, name: $name, kind: $kind, phase: $phase, rules: $rules)'; } 
 }
