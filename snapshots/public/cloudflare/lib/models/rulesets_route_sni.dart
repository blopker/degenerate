// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A Server Name Indication (SNI) override.
@immutable final class RulesetsRouteSni {const RulesetsRouteSni({required this.value});

factory RulesetsRouteSni.fromJson(Map<String, dynamic> json) { return RulesetsRouteSni(
  value: json['value'] as String,
); }

/// A value to override the SNI to.
final String value;

Map<String, dynamic> toJson() { return {
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value') && json['value'] is String; } 
RulesetsRouteSni copyWith({String? value}) { return RulesetsRouteSni(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRouteSni &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsRouteSni(value: $value)'; } 
 }
