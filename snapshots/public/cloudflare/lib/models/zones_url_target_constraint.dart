// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The constraint of a target.
@immutable final class ZonesUrlTargetConstraint {const ZonesUrlTargetConstraint({required this.$operator, required this.value, });

factory ZonesUrlTargetConstraint.fromJson(Map<String, dynamic> json) { return ZonesUrlTargetConstraint(
  $operator: json['operator'],
  value: json['value'] as String,
); }

/// The matches operator can use asterisks and pipes as wildcard and 'or' operators.
final dynamic $operator;

/// The URL pattern to match against the current request. The pattern may contain up to four asterisks ('*') as placeholders.
final String value;

Map<String, dynamic> toJson() { return {
  'operator': ?$operator,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operator') &&
      json.containsKey('value') && json['value'] is String; } 
ZonesUrlTargetConstraint copyWith({dynamic Function()? $operator, String? value, }) { return ZonesUrlTargetConstraint(
  $operator: $operator != null ? $operator() : this.$operator,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesUrlTargetConstraint &&
          $operator == other.$operator &&
          value == other.value; } 
@override int get hashCode { return Object.hash($operator, value); } 
@override String toString() { return 'ZonesUrlTargetConstraint(\$operator: ${$operator}, value: $value)'; } 
 }
