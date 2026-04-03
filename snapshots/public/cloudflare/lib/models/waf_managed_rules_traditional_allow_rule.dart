// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_identifier.dart';import 'waf_managed_rules_priority.dart';import 'waf_managed_rules_rule_components_schemas_identifier.dart';import 'waf_managed_rules_schemas_description.dart';import 'waf_managed_rules_traditional_allow_rule_group.dart';/// When set to `on`, the current rule will be used when evaluating the request. Applies to traditional (allow) WAF rules.
@immutable final class WafManagedRulesModeAllowTraditional {const WafManagedRulesModeAllowTraditional._(this.value);

factory WafManagedRulesModeAllowTraditional.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => WafManagedRulesModeAllowTraditional._(json),
}; }

static const WafManagedRulesModeAllowTraditional $on = WafManagedRulesModeAllowTraditional._('on');

static const WafManagedRulesModeAllowTraditional off = WafManagedRulesModeAllowTraditional._('off');

static const List<WafManagedRulesModeAllowTraditional> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WafManagedRulesModeAllowTraditional && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WafManagedRulesModeAllowTraditional($value)'; } 
 }
/// When triggered, traditional WAF rules cause the firewall to immediately act on the request based on the rule configuration. An 'allow' rule will immediately allow the request and no other rules will be processed.
@immutable final class WafManagedRulesTraditionalAllowRule {const WafManagedRulesTraditionalAllowRule({required this.description, required this.group, required this.id, required this.packageId, required this.priority, required this.allowedModes, required this.mode, });

factory WafManagedRulesTraditionalAllowRule.fromJson(Map<String, dynamic> json) { return WafManagedRulesTraditionalAllowRule(
  description: WafManagedRulesSchemasDescription.fromJson(json['description'] as String),
  group: WafManagedRulesTraditionalAllowRuleGroup.fromJson(json['group'] as Map<String, dynamic>),
  id: WafManagedRulesRuleComponentsSchemasIdentifier.fromJson(json['id'] as String),
  packageId: WafManagedRulesIdentifier.fromJson(json['package_id'] as String),
  priority: WafManagedRulesPriority.fromJson(json['priority'] as String),
  allowedModes: (json['allowed_modes'] as List<dynamic>).map((e) => WafManagedRulesModeAllowTraditional.fromJson(e as String)).toList(),
  mode: WafManagedRulesModeAllowTraditional.fromJson(json['mode'] as String),
); }

/// Defines the public description of the WAF rule.
final WafManagedRulesSchemasDescription description;

/// Defines the rule group to which the current WAF rule belongs.
final WafManagedRulesTraditionalAllowRuleGroup group;

/// Defines the unique identifier of the WAF rule.
final WafManagedRulesRuleComponentsSchemasIdentifier id;

/// Defines the unique identifier of a WAF package.
final WafManagedRulesIdentifier packageId;

/// Defines the order in which the individual WAF rule is executed within its rule group.
final WafManagedRulesPriority priority;

/// Defines the available modes for the current WAF rule.
final List<WafManagedRulesModeAllowTraditional> allowedModes;

/// When set to `on`, the current rule will be used when evaluating the request. Applies to traditional (allow) WAF rules.
final WafManagedRulesModeAllowTraditional mode;

Map<String, dynamic> toJson() { return {
  'description': description.toJson(),
  'group': group.toJson(),
  'id': id.toJson(),
  'package_id': packageId.toJson(),
  'priority': priority.toJson(),
  'allowed_modes': allowedModes.map((e) => e.toJson()).toList(),
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') &&
      json.containsKey('group') &&
      json.containsKey('id') &&
      json.containsKey('package_id') &&
      json.containsKey('priority') &&
      json.containsKey('allowed_modes') &&
      json.containsKey('mode'); } 
WafManagedRulesTraditionalAllowRule copyWith({WafManagedRulesSchemasDescription? description, WafManagedRulesTraditionalAllowRuleGroup? group, WafManagedRulesRuleComponentsSchemasIdentifier? id, WafManagedRulesIdentifier? packageId, WafManagedRulesPriority? priority, List<WafManagedRulesModeAllowTraditional>? allowedModes, WafManagedRulesModeAllowTraditional? mode, }) { return WafManagedRulesTraditionalAllowRule(
  description: description ?? this.description,
  group: group ?? this.group,
  id: id ?? this.id,
  packageId: packageId ?? this.packageId,
  priority: priority ?? this.priority,
  allowedModes: allowedModes ?? this.allowedModes,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesTraditionalAllowRule &&
          description == other.description &&
          group == other.group &&
          id == other.id &&
          packageId == other.packageId &&
          priority == other.priority &&
          listEquals(allowedModes, other.allowedModes) &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(description, group, id, packageId, priority, Object.hashAll(allowedModes), mode); } 
@override String toString() { return 'WafManagedRulesTraditionalAllowRule(description: $description, group: $group, id: $id, packageId: $packageId, priority: $priority, allowedModes: $allowedModes, mode: $mode)'; } 
 }
