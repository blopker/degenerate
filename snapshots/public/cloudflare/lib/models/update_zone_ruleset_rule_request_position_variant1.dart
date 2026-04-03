// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UpdateZoneRulesetRuleRequestPositionVariant1 {const UpdateZoneRulesetRuleRequestPositionVariant1({this.before});

factory UpdateZoneRulesetRuleRequestPositionVariant1.fromJson(Map<String, dynamic> json) { return UpdateZoneRulesetRuleRequestPositionVariant1(
  before: json['before'] as String?,
); }

/// The ID of another rule to place the rule before. An empty value causes the rule to be placed at the top.
final String? before;

Map<String, dynamic> toJson() { return {
  'before': ?before,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'before'}.contains(key)); } 
UpdateZoneRulesetRuleRequestPositionVariant1 copyWith({String Function()? before}) { return UpdateZoneRulesetRuleRequestPositionVariant1(
  before: before != null ? before() : this.before,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateZoneRulesetRuleRequestPositionVariant1 &&
          before == other.before; } 
@override int get hashCode { return before.hashCode; } 
@override String toString() { return 'UpdateZoneRulesetRuleRequestPositionVariant1(before: $before)'; } 
 }
