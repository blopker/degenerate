// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'org_rules.dart';import 'org_ruleset_conditions.dart';import 'repository_rule_enforcement.dart';import 'repository_ruleset_bypass_actor.dart';import 'repository_ruleset_conditions.dart';/// The target of the ruleset
@immutable final class ReposCreateOrgRulesetRequestTarget {const ReposCreateOrgRulesetRequestTarget._(this.value);

factory ReposCreateOrgRulesetRequestTarget.fromJson(String json) { return switch (json) {
  'branch' => branch,
  'tag' => tag,
  'push' => push,
  'repository' => repository,
  _ => ReposCreateOrgRulesetRequestTarget._(json),
}; }

static const ReposCreateOrgRulesetRequestTarget branch = ReposCreateOrgRulesetRequestTarget._('branch');

static const ReposCreateOrgRulesetRequestTarget tag = ReposCreateOrgRulesetRequestTarget._('tag');

static const ReposCreateOrgRulesetRequestTarget push = ReposCreateOrgRulesetRequestTarget._('push');

static const ReposCreateOrgRulesetRequestTarget repository = ReposCreateOrgRulesetRequestTarget._('repository');

static const List<ReposCreateOrgRulesetRequestTarget> values = [branch, tag, push, repository];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrgRulesetRequestTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateOrgRulesetRequestTarget($value)'; } 
 }
@immutable final class ReposCreateOrgRulesetRequest {const ReposCreateOrgRulesetRequest({required this.name, required this.enforcement, this.target = ReposCreateOrgRulesetRequestTarget.branch, this.bypassActors, this.conditions, this.rules, });

factory ReposCreateOrgRulesetRequest.fromJson(Map<String, dynamic> json) { return ReposCreateOrgRulesetRequest(
  name: json['name'] as String,
  target: json.containsKey('target') ? ReposCreateOrgRulesetRequestTarget.fromJson(json['target'] as String) : ReposCreateOrgRulesetRequestTarget.branch,
  enforcement: RepositoryRuleEnforcement.fromJson(json['enforcement'] as String),
  bypassActors: (json['bypass_actors'] as List<dynamic>?)?.map((e) => RepositoryRulesetBypassActor.fromJson(e as Map<String, dynamic>)).toList(),
  conditions: json['conditions'] != null ? OneOf3.parse(json['conditions'], fromA: (v) => RepositoryRulesetConditions.fromJson(v as Map<String, dynamic>), fromB: (v) => RepositoryRulesetConditions.fromJson(v as Map<String, dynamic>), fromC: (v) => RepositoryRulesetConditions.fromJson(v as Map<String, dynamic>),) : null,
  rules: (json['rules'] as List<dynamic>?)?.map((e) => OrgRules.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The name of the ruleset.
final String name;

/// The target of the ruleset
final ReposCreateOrgRulesetRequestTarget target;

/// The enforcement level of the ruleset. `evaluate` allows admins to test rules before enforcing them. Admins can view insights on the Rule Insights page (`evaluate` is only available with GitHub Enterprise).
final RepositoryRuleEnforcement enforcement;

/// The actors that can bypass the rules in this ruleset
final List<RepositoryRulesetBypassActor>? bypassActors;

final OrgRulesetConditions? conditions;

/// An array of rules within the ruleset.
final List<OrgRules>? rules;

Map<String, dynamic> toJson() { return {
  'name': name,
  'target': target.toJson(),
  'enforcement': enforcement.toJson(),
  if (bypassActors != null) 'bypass_actors': bypassActors?.map((e) => e.toJson()).toList(),
  if (conditions != null) 'conditions': conditions?.toJson(),
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('enforcement'); } 
ReposCreateOrgRulesetRequest copyWith({String? name, ReposCreateOrgRulesetRequestTarget Function()? target, RepositoryRuleEnforcement? enforcement, List<RepositoryRulesetBypassActor> Function()? bypassActors, OrgRulesetConditions Function()? conditions, List<OrgRules> Function()? rules, }) { return ReposCreateOrgRulesetRequest(
  name: name ?? this.name,
  target: target != null ? target() : this.target,
  enforcement: enforcement ?? this.enforcement,
  bypassActors: bypassActors != null ? bypassActors() : this.bypassActors,
  conditions: conditions != null ? conditions() : this.conditions,
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateOrgRulesetRequest &&
          name == other.name &&
          target == other.target &&
          enforcement == other.enforcement &&
          listEquals(bypassActors, other.bypassActors) &&
          conditions == other.conditions &&
          listEquals(rules, other.rules); } 
@override int get hashCode { return Object.hash(name, target, enforcement, Object.hashAll(bypassActors ?? const []), conditions, Object.hashAll(rules ?? const [])); } 
@override String toString() { return 'ReposCreateOrgRulesetRequest(name: $name, target: $target, enforcement: $enforcement, bypassActors: $bypassActors, conditions: $conditions, rules: $rules)'; } 
 }
