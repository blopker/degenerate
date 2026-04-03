// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines the mode anomaly. When set to `on`, the current WAF rule will be used when evaluating the request. Applies to anomaly detection WAF rules.
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
@immutable final class WafManagedRulesAnomalyRule {const WafManagedRulesAnomalyRule({required this.allowedModes, required this.mode, });

factory WafManagedRulesAnomalyRule.fromJson(Map<String, dynamic> json) { return WafManagedRulesAnomalyRule(
  allowedModes: (json['allowed_modes'] as List<dynamic>).map((e) => WafManagedRulesModeAnomaly.fromJson(e as String)).toList(),
  mode: WafManagedRulesModeAnomaly.fromJson(json['mode'] as String),
); }

/// Defines the available modes for the current WAF rule. Applies to anomaly detection WAF rules.
final List<WafManagedRulesModeAnomaly> allowedModes;

final WafManagedRulesModeAnomaly mode;

Map<String, dynamic> toJson() { return {
  'allowed_modes': allowedModes.map((e) => e.toJson()).toList(),
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allowed_modes') &&
      json.containsKey('mode'); } 
WafManagedRulesAnomalyRule copyWith({List<WafManagedRulesModeAnomaly>? allowedModes, WafManagedRulesModeAnomaly? mode, }) { return WafManagedRulesAnomalyRule(
  allowedModes: allowedModes ?? this.allowedModes,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesAnomalyRule &&
          listEquals(allowedModes, other.allowedModes) &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedModes), mode); } 
@override String toString() { return 'WafManagedRulesAnomalyRule(allowedModes: $allowedModes, mode: $mode)'; } 
 }
