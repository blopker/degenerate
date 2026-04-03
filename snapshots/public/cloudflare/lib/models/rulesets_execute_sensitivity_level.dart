// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RulesetsExecuteSensitivityLevel {const RulesetsExecuteSensitivityLevel._(this.value);

factory RulesetsExecuteSensitivityLevel.fromJson(String json) { return switch (json) {
  'default' => $default,
  'medium' => medium,
  'low' => low,
  'eoff' => eoff,
  _ => RulesetsExecuteSensitivityLevel._(json),
}; }

static const RulesetsExecuteSensitivityLevel $default = RulesetsExecuteSensitivityLevel._('default');

static const RulesetsExecuteSensitivityLevel medium = RulesetsExecuteSensitivityLevel._('medium');

static const RulesetsExecuteSensitivityLevel low = RulesetsExecuteSensitivityLevel._('low');

static const RulesetsExecuteSensitivityLevel eoff = RulesetsExecuteSensitivityLevel._('eoff');

static const List<RulesetsExecuteSensitivityLevel> values = [$default, medium, low, eoff];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsExecuteSensitivityLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsExecuteSensitivityLevel($value)'; } 
 }
