// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_identifier.dart';import 'waf_managed_rules_priority.dart';import 'waf_managed_rules_rule_components_schemas_identifier.dart';import 'waf_managed_rules_schemas_description.dart';import 'waf_managed_rules_traditional_deny_rule_group.dart';/// Defines the default action/mode of a rule.
extension type WafManagedRulesDefaultMode(dynamic value) {
factory WafManagedRulesDefaultMode.fromJson(dynamic json) => WafManagedRulesDefaultMode(json);

dynamic toJson() => value;

}
/// Defines the action that the current WAF rule will perform when triggered. Applies to traditional (deny) WAF rules.
final class WafManagedRulesModeDenyTraditional {const WafManagedRulesModeDenyTraditional._(this.value);

factory WafManagedRulesModeDenyTraditional.fromJson(String json) { return switch (json) {
  'default' => $default,
  'disable' => disable,
  'simulate' => simulate,
  'block' => block,
  'challenge' => challenge,
  _ => WafManagedRulesModeDenyTraditional._(json),
}; }

static const WafManagedRulesModeDenyTraditional $default = WafManagedRulesModeDenyTraditional._('default');

static const WafManagedRulesModeDenyTraditional disable = WafManagedRulesModeDenyTraditional._('disable');

static const WafManagedRulesModeDenyTraditional simulate = WafManagedRulesModeDenyTraditional._('simulate');

static const WafManagedRulesModeDenyTraditional block = WafManagedRulesModeDenyTraditional._('block');

static const WafManagedRulesModeDenyTraditional challenge = WafManagedRulesModeDenyTraditional._('challenge');

static const List<WafManagedRulesModeDenyTraditional> values = [$default, disable, simulate, block, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WafManagedRulesModeDenyTraditional && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WafManagedRulesModeDenyTraditional($value)'; } 
 }
/// When triggered, traditional WAF rules cause the firewall to immediately act upon the request based on the configuration of the rule. A 'deny' rule will immediately respond to the request based on the configured rule action/mode (for example, 'block') and no other rules will be processed.
final class WafManagedRulesTraditionalDenyRule {const WafManagedRulesTraditionalDenyRule({required this.description, required this.group, required this.id, required this.packageId, required this.priority, required this.allowedModes, required this.defaultMode, required this.mode, });

factory WafManagedRulesTraditionalDenyRule.fromJson(Map<String, dynamic> json) { return WafManagedRulesTraditionalDenyRule(
  description: WafManagedRulesSchemasDescription.fromJson(json['description'] as String),
  group: WafManagedRulesTraditionalDenyRuleGroup.fromJson(json['group'] as Map<String, dynamic>),
  id: WafManagedRulesRuleComponentsSchemasIdentifier.fromJson(json['id'] as String),
  packageId: WafManagedRulesIdentifier.fromJson(json['package_id'] as String),
  priority: WafManagedRulesPriority.fromJson(json['priority'] as String),
  allowedModes: (json['allowed_modes'] as List<dynamic>).map((e) => WafManagedRulesModeDenyTraditional.fromJson(e as String)).toList(),
  defaultMode: json['default_mode'] != null ? WafManagedRulesDefaultMode.fromJson(json['default_mode'] as dynamic) : null,
  mode: WafManagedRulesModeDenyTraditional.fromJson(json['mode'] as String),
); }

/// Defines the public description of the WAF rule.
final WafManagedRulesSchemasDescription description;

/// Defines the rule group to which the current WAF rule belongs.
final WafManagedRulesTraditionalDenyRuleGroup group;

/// Defines the unique identifier of the WAF rule.
final WafManagedRulesRuleComponentsSchemasIdentifier id;

/// Defines the unique identifier of a WAF package.
final WafManagedRulesIdentifier packageId;

/// Defines the order in which the individual WAF rule is executed within its rule group.
final WafManagedRulesPriority priority;

/// Defines the list of possible actions of the WAF rule when it is triggered.
final List<WafManagedRulesModeDenyTraditional> allowedModes;

/// Defines the default action/mode of a rule.
final WafManagedRulesDefaultMode? defaultMode;

/// Defines the action that the current WAF rule will perform when triggered. Applies to traditional (deny) WAF rules.
final WafManagedRulesModeDenyTraditional mode;

Map<String, dynamic> toJson() { return {
  'description': description.toJson(),
  'group': group.toJson(),
  'id': id.toJson(),
  'package_id': packageId.toJson(),
  'priority': priority.toJson(),
  'allowed_modes': allowedModes.map((e) => e.toJson()).toList(),
  if (defaultMode != null) 'default_mode': defaultMode?.toJson(),
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') &&
      json.containsKey('group') &&
      json.containsKey('id') &&
      json.containsKey('package_id') &&
      json.containsKey('priority') &&
      json.containsKey('allowed_modes') &&
      json.containsKey('default_mode') &&
      json.containsKey('mode'); } 
WafManagedRulesTraditionalDenyRule copyWith({WafManagedRulesSchemasDescription? description, WafManagedRulesTraditionalDenyRuleGroup? group, WafManagedRulesRuleComponentsSchemasIdentifier? id, WafManagedRulesIdentifier? packageId, WafManagedRulesPriority? priority, List<WafManagedRulesModeDenyTraditional>? allowedModes, WafManagedRulesDefaultMode? Function()? defaultMode, WafManagedRulesModeDenyTraditional? mode, }) { return WafManagedRulesTraditionalDenyRule(
  description: description ?? this.description,
  group: group ?? this.group,
  id: id ?? this.id,
  packageId: packageId ?? this.packageId,
  priority: priority ?? this.priority,
  allowedModes: allowedModes ?? this.allowedModes,
  defaultMode: defaultMode != null ? defaultMode() : this.defaultMode,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesTraditionalDenyRule &&
          description == other.description &&
          group == other.group &&
          id == other.id &&
          packageId == other.packageId &&
          priority == other.priority &&
          listEquals(allowedModes, other.allowedModes) &&
          defaultMode == other.defaultMode &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(description, group, id, packageId, priority, Object.hashAll(allowedModes), defaultMode, mode); } 
@override String toString() { return 'WafManagedRulesTraditionalDenyRule(description: $description, group: $group, id: $id, packageId: $packageId, priority: $priority, allowedModes: $allowedModes, defaultMode: $defaultMode, mode: $mode)'; } 
 }
