// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_anomaly_rule_group.dart';import 'waf_managed_rules_identifier.dart';import 'waf_managed_rules_priority.dart';import 'waf_managed_rules_rule_components_schemas_identifier.dart';import 'waf_managed_rules_schemas_description.dart';/// Defines the mode anomaly. When set to `on`, the current WAF rule will be used when evaluating the request. Applies to anomaly detection WAF rules.
@immutable final class WafManagedRulesModeAnomaly {const WafManagedRulesModeAnomaly._(this.value);

factory WafManagedRulesModeAnomaly.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => WafManagedRulesModeAnomaly._(json),
}; }

static const WafManagedRulesModeAnomaly $on = WafManagedRulesModeAnomaly._('on');

static const WafManagedRulesModeAnomaly off = WafManagedRulesModeAnomaly._('off');

static const List<WafManagedRulesModeAnomaly> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WafManagedRulesModeAnomaly && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WafManagedRulesModeAnomaly($value)'; } 
 }
/// When triggered, anomaly detection WAF rules contribute to an overall threat score that will determine if a request is considered malicious. You can configure the total scoring threshold through the 'sensitivity' property of the WAF package.
@immutable final class WafManagedRulesAnomalyRule {const WafManagedRulesAnomalyRule({required this.description, required this.group, required this.id, required this.packageId, required this.priority, required this.allowedModes, required this.mode, });

factory WafManagedRulesAnomalyRule.fromJson(Map<String, dynamic> json) { return WafManagedRulesAnomalyRule(
  description: WafManagedRulesSchemasDescription.fromJson(json['description'] as String),
  group: WafManagedRulesAnomalyRuleGroup.fromJson(json['group'] as Map<String, dynamic>),
  id: WafManagedRulesRuleComponentsSchemasIdentifier.fromJson(json['id'] as String),
  packageId: WafManagedRulesIdentifier.fromJson(json['package_id'] as String),
  priority: WafManagedRulesPriority.fromJson(json['priority'] as String),
  allowedModes: (json['allowed_modes'] as List<dynamic>).map((e) => WafManagedRulesModeAnomaly.fromJson(e as String)).toList(),
  mode: WafManagedRulesModeAnomaly.fromJson(json['mode'] as String),
); }

final WafManagedRulesSchemasDescription description;

/// Defines the rule group to which the current WAF rule belongs.
final WafManagedRulesAnomalyRuleGroup group;

final WafManagedRulesRuleComponentsSchemasIdentifier id;

final WafManagedRulesIdentifier packageId;

final WafManagedRulesPriority priority;

/// Defines the available modes for the current WAF rule. Applies to anomaly detection WAF rules.
final List<WafManagedRulesModeAnomaly> allowedModes;

final WafManagedRulesModeAnomaly mode;

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
WafManagedRulesAnomalyRule copyWith({WafManagedRulesSchemasDescription? description, WafManagedRulesAnomalyRuleGroup? group, WafManagedRulesRuleComponentsSchemasIdentifier? id, WafManagedRulesIdentifier? packageId, WafManagedRulesPriority? priority, List<WafManagedRulesModeAnomaly>? allowedModes, WafManagedRulesModeAnomaly? mode, }) { return WafManagedRulesAnomalyRule(
  description: description ?? this.description,
  group: group ?? this.group,
  id: id ?? this.id,
  packageId: packageId ?? this.packageId,
  priority: priority ?? this.priority,
  allowedModes: allowedModes ?? this.allowedModes,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesAnomalyRule &&
          description == other.description &&
          group == other.group &&
          id == other.id &&
          packageId == other.packageId &&
          priority == other.priority &&
          listEquals(allowedModes, other.allowedModes) &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(description, group, id, packageId, priority, Object.hashAll(allowedModes), mode); } 
@override String toString() { return 'WafManagedRulesAnomalyRule(description: $description, group: $group, id: $id, packageId: $packageId, priority: $priority, allowedModes: $allowedModes, mode: $mode)'; } 
 }
