// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_rule_id.dart';import 'rulesets_ruleset_id.dart';import 'rulesets_ruleset_phase.dart';/// A phase to skip the execution of. This option is only compatible with the products option.
@immutable final class RulesetsSkipPhase {const RulesetsSkipPhase._(this.value);

factory RulesetsSkipPhase.fromJson(String json) { return switch (json) {
  'current' => current,
  _ => RulesetsSkipPhase._(json),
}; }

static const RulesetsSkipPhase current = RulesetsSkipPhase._('current');

static const List<RulesetsSkipPhase> values = [current];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSkipPhase && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSkipPhase($value)'; } 
 }
/// A ruleset to skip the execution of. This option is incompatible with the rulesets option.
@immutable final class RulesetsSkipRuleset {const RulesetsSkipRuleset._(this.value);

factory RulesetsSkipRuleset.fromJson(String json) { return switch (json) {
  'current' => current,
  _ => RulesetsSkipRuleset._(json),
}; }

static const RulesetsSkipRuleset current = RulesetsSkipRuleset._('current');

static const List<RulesetsSkipRuleset> values = [current];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSkipRuleset && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSkipRuleset($value)'; } 
 }
/// The name of a legacy security product to skip the execution of.
@immutable final class RulesetsSkipProducts2 {const RulesetsSkipProducts2._(this.value);

factory RulesetsSkipProducts2.fromJson(String json) { return switch (json) {
  'bic' => bic,
  'hot' => hot,
  'rateLimit' => rateLimit,
  'securityLevel' => securityLevel,
  'uaBlock' => uaBlock,
  'waf' => waf,
  'zoneLockdown' => zoneLockdown,
  _ => RulesetsSkipProducts2._(json),
}; }

static const RulesetsSkipProducts2 bic = RulesetsSkipProducts2._('bic');

static const RulesetsSkipProducts2 hot = RulesetsSkipProducts2._('hot');

static const RulesetsSkipProducts2 rateLimit = RulesetsSkipProducts2._('rateLimit');

static const RulesetsSkipProducts2 securityLevel = RulesetsSkipProducts2._('securityLevel');

static const RulesetsSkipProducts2 uaBlock = RulesetsSkipProducts2._('uaBlock');

static const RulesetsSkipProducts2 waf = RulesetsSkipProducts2._('waf');

static const RulesetsSkipProducts2 zoneLockdown = RulesetsSkipProducts2._('zoneLockdown');

static const List<RulesetsSkipProducts2> values = [bic, hot, rateLimit, securityLevel, uaBlock, waf, zoneLockdown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSkipProducts2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSkipProducts2($value)'; } 
 }
@immutable final class RulesetsSkipRuleActionParameters {const RulesetsSkipRuleActionParameters({this.phase, this.phases, this.products, this.rules, this.ruleset, this.rulesets, });

factory RulesetsSkipRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsSkipRuleActionParameters(
  phase: json['phase'] != null ? RulesetsSkipPhase.fromJson(json['phase'] as String) : null,
  phases: (json['phases'] as List<dynamic>?)?.map((e) => RulesetsRulesetPhase.fromJson(e as String)).toList(),
  products: (json['products'] as List<dynamic>?)?.map((e) => RulesetsSkipProducts2.fromJson(e as String)).toList(),
  rules: (json['rules'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => RulesetsRuleId.fromJson(e as String)).toList())),
  ruleset: json['ruleset'] != null ? RulesetsSkipRuleset.fromJson(json['ruleset'] as String) : null,
  rulesets: (json['rulesets'] as List<dynamic>?)?.map((e) => RulesetsRulesetId.fromJson(e as String)).toList(),
); }

/// A phase to skip the execution of. This option is only compatible with the products option.
final RulesetsSkipPhase? phase;

/// A list of phases to skip the execution of. This option is incompatible with the rulesets option.
final List<RulesetsRulesetPhase>? phases;

/// A list of legacy security products to skip the execution of.
final List<RulesetsSkipProducts2>? products;

final Map<String,List<RulesetsRuleId>>? rules;

final RulesetsSkipRuleset? ruleset;

final List<RulesetsRulesetId>? rulesets;

Map<String, dynamic> toJson() { return {
  if (phase != null) 'phase': phase?.toJson(),
  if (phases != null) 'phases': phases?.map((e) => e.toJson()).toList(),
  if (products != null) 'products': products?.map((e) => e.toJson()).toList(),
  if (rules != null) 'rules': rules?.map((k, v) => MapEntry(k, v.map((e) => e.toJson()).toList())),
  if (ruleset != null) 'ruleset': ruleset?.toJson(),
  if (rulesets != null) 'rulesets': rulesets?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'phase', 'phases', 'products', 'rules', 'ruleset', 'rulesets'}.contains(key)); } 
RulesetsSkipRuleActionParameters copyWith({RulesetsSkipPhase? Function()? phase, List<RulesetsRulesetPhase>? Function()? phases, List<RulesetsSkipProducts2>? Function()? products, Map<String, List<RulesetsRuleId>>? Function()? rules, RulesetsSkipRuleset? Function()? ruleset, List<RulesetsRulesetId>? Function()? rulesets, }) { return RulesetsSkipRuleActionParameters(
  phase: phase != null ? phase() : this.phase,
  phases: phases != null ? phases() : this.phases,
  products: products != null ? products() : this.products,
  rules: rules != null ? rules() : this.rules,
  ruleset: ruleset != null ? ruleset() : this.ruleset,
  rulesets: rulesets != null ? rulesets() : this.rulesets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSkipRuleActionParameters &&
          phase == other.phase &&
          listEquals(phases, other.phases) &&
          listEquals(products, other.products) &&
          rules == other.rules &&
          ruleset == other.ruleset &&
          listEquals(rulesets, other.rulesets); } 
@override int get hashCode { return Object.hash(phase, Object.hashAll(phases ?? const []), Object.hashAll(products ?? const []), rules, ruleset, Object.hashAll(rulesets ?? const [])); } 
@override String toString() { return 'RulesetsSkipRuleActionParameters(phase: $phase, phases: $phases, products: $products, rules: $rules, ruleset: $ruleset, rulesets: $rulesets)'; } 
 }
