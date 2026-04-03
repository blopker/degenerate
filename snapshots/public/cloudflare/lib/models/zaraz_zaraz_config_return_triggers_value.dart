// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_click_listener_rule.dart';import 'zaraz_element_visibility_rule.dart';import 'zaraz_form_submission_rule.dart';import 'zaraz_load_rule.dart';import 'zaraz_scroll_depth_rule.dart';import 'zaraz_timer_rule.dart';import 'zaraz_variable_match_rule.dart';import 'zaraz_zaraz_config_return_triggers_value_exclude_rules.dart';import 'zaraz_zaraz_config_return_triggers_value_load_rules.dart';@immutable final class ZarazZarazConfigReturnTriggersValueSystem {const ZarazZarazConfigReturnTriggersValueSystem._(this.value);

factory ZarazZarazConfigReturnTriggersValueSystem.fromJson(String json) { return switch (json) {
  'pageload' => pageload,
  _ => ZarazZarazConfigReturnTriggersValueSystem._(json),
}; }

static const ZarazZarazConfigReturnTriggersValueSystem pageload = ZarazZarazConfigReturnTriggersValueSystem._('pageload');

static const List<ZarazZarazConfigReturnTriggersValueSystem> values = [pageload];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigReturnTriggersValueSystem && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazZarazConfigReturnTriggersValueSystem($value)'; } 
 }
@immutable final class ZarazZarazConfigReturnTriggersValue {const ZarazZarazConfigReturnTriggersValue({required this.excludeRules, required this.loadRules, required this.name, this.description, this.system, });

factory ZarazZarazConfigReturnTriggersValue.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnTriggersValue(
  description: json['description'] as String?,
  excludeRules: (json['excludeRules'] as List<dynamic>).map((e) => OneOf7.parse(e, fromA: (v) => ZarazLoadRule.fromJson(v as Map<String, dynamic>), fromB: (v) => ZarazClickListenerRule.fromJson(v as Map<String, dynamic>), fromC: (v) => ZarazTimerRule.fromJson(v as Map<String, dynamic>), fromD: (v) => ZarazFormSubmissionRule.fromJson(v as Map<String, dynamic>), fromE: (v) => ZarazVariableMatchRule.fromJson(v as Map<String, dynamic>), fromF: (v) => ZarazScrollDepthRule.fromJson(v as Map<String, dynamic>), fromG: (v) => ZarazElementVisibilityRule.fromJson(v as Map<String, dynamic>),)).toList(),
  loadRules: (json['loadRules'] as List<dynamic>).map((e) => OneOf7.parse(e, fromA: (v) => ZarazLoadRule.fromJson(v as Map<String, dynamic>), fromB: (v) => ZarazClickListenerRule.fromJson(v as Map<String, dynamic>), fromC: (v) => ZarazTimerRule.fromJson(v as Map<String, dynamic>), fromD: (v) => ZarazFormSubmissionRule.fromJson(v as Map<String, dynamic>), fromE: (v) => ZarazVariableMatchRule.fromJson(v as Map<String, dynamic>), fromF: (v) => ZarazScrollDepthRule.fromJson(v as Map<String, dynamic>), fromG: (v) => ZarazElementVisibilityRule.fromJson(v as Map<String, dynamic>),)).toList(),
  name: json['name'] as String,
  system: json['system'] != null ? ZarazZarazConfigReturnTriggersValueSystem.fromJson(json['system'] as String) : null,
); }

/// Trigger description.
final String? description;

/// Rules defining when the trigger is not fired.
final List<ZarazZarazConfigReturnTriggersValueExcludeRules> excludeRules;

/// Rules defining when the trigger is fired.
final List<ZarazZarazConfigReturnTriggersValueLoadRules> loadRules;

/// Trigger name.
final String name;

final ZarazZarazConfigReturnTriggersValueSystem? system;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'excludeRules': excludeRules.map((e) => e.toJson()).toList(),
  'loadRules': loadRules.map((e) => e.toJson()).toList(),
  'name': name,
  if (system != null) 'system': system?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('excludeRules') &&
      json.containsKey('loadRules') &&
      json.containsKey('name') && json['name'] is String; } 
ZarazZarazConfigReturnTriggersValue copyWith({String Function()? description, List<ZarazZarazConfigReturnTriggersValueExcludeRules>? excludeRules, List<ZarazZarazConfigReturnTriggersValueLoadRules>? loadRules, String? name, ZarazZarazConfigReturnTriggersValueSystem Function()? system, }) { return ZarazZarazConfigReturnTriggersValue(
  description: description != null ? description() : this.description,
  excludeRules: excludeRules ?? this.excludeRules,
  loadRules: loadRules ?? this.loadRules,
  name: name ?? this.name,
  system: system != null ? system() : this.system,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigReturnTriggersValue &&
          description == other.description &&
          listEquals(excludeRules, other.excludeRules) &&
          listEquals(loadRules, other.loadRules) &&
          name == other.name &&
          system == other.system; } 
@override int get hashCode { return Object.hash(description, Object.hashAll(excludeRules), Object.hashAll(loadRules), name, system); } 
@override String toString() { return 'ZarazZarazConfigReturnTriggersValue(description: $description, excludeRules: $excludeRules, loadRules: $loadRules, name: $name, system: $system)'; } 
 }
