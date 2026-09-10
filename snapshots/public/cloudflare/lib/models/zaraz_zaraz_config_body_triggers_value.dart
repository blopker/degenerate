// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_zaraz_config_body_triggers_value_exclude_rules.dart';import 'zaraz_zaraz_config_body_triggers_value_load_rules.dart';@immutable final class ZarazZarazConfigBodyTriggersValueSystem {const ZarazZarazConfigBodyTriggersValueSystem._(this.value);

factory ZarazZarazConfigBodyTriggersValueSystem.fromJson(String json) { return switch (json) {
  'pageload' => pageload,
  _ => ZarazZarazConfigBodyTriggersValueSystem._(json),
}; }

static const ZarazZarazConfigBodyTriggersValueSystem pageload = ZarazZarazConfigBodyTriggersValueSystem._('pageload');

static const List<ZarazZarazConfigBodyTriggersValueSystem> values = [pageload];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigBodyTriggersValueSystem && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazZarazConfigBodyTriggersValueSystem($value)'; } 
 }
@immutable final class ZarazZarazConfigBodyTriggersValue {const ZarazZarazConfigBodyTriggersValue({required this.excludeRules, required this.loadRules, required this.name, this.description, this.system, });

factory ZarazZarazConfigBodyTriggersValue.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBodyTriggersValue(
  description: json['description'] as String?,
  excludeRules: (json['excludeRules'] as List<dynamic>).map(ZarazZarazConfigBodyTriggersValueExcludeRules.fromJson).toList(),
  loadRules: (json['loadRules'] as List<dynamic>).map(ZarazZarazConfigBodyTriggersValueLoadRules.fromJson).toList(),
  name: json['name'] as String,
  system: json['system'] != null ? ZarazZarazConfigBodyTriggersValueSystem.fromJson(json['system'] as String) : null,
); }

/// Trigger description.
final String? description;

/// Rules defining when the trigger is not fired.
final List<ZarazZarazConfigBodyTriggersValueExcludeRules> excludeRules;

/// Rules defining when the trigger is fired.
final List<ZarazZarazConfigBodyTriggersValueLoadRules> loadRules;

/// Trigger name.
final String name;

final ZarazZarazConfigBodyTriggersValueSystem? system;

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
ZarazZarazConfigBodyTriggersValue copyWith({String? Function()? description, List<ZarazZarazConfigBodyTriggersValueExcludeRules>? excludeRules, List<ZarazZarazConfigBodyTriggersValueLoadRules>? loadRules, String? name, ZarazZarazConfigBodyTriggersValueSystem? Function()? system, }) { return ZarazZarazConfigBodyTriggersValue(
  description: description != null ? description() : this.description,
  excludeRules: excludeRules ?? this.excludeRules,
  loadRules: loadRules ?? this.loadRules,
  name: name ?? this.name,
  system: system != null ? system() : this.system,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigBodyTriggersValue &&
          description == other.description &&
          listEquals(excludeRules, other.excludeRules) &&
          listEquals(loadRules, other.loadRules) &&
          name == other.name &&
          system == other.system; } 
@override int get hashCode { return Object.hash(description, Object.hashAll(excludeRules), Object.hashAll(loadRules), name, system); } 
@override String toString() { return 'ZarazZarazConfigBodyTriggersValue(description: $description, excludeRules: $excludeRules, loadRules: $loadRules, name: $name, system: $system)'; } 
 }
