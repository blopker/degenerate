// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WaitingroomRulePositionVariant2 {const WaitingroomRulePositionVariant2({this.before});

factory WaitingroomRulePositionVariant2.fromJson(Map<String, dynamic> json) { return WaitingroomRulePositionVariant2(
  before: json['before'] as String?,
); }

/// Places the rule before rule `<RULE_ID>`. Use this argument with an empty rule ID value ("") to set the rule as the first rule in the ruleset.
final String? before;

Map<String, dynamic> toJson() { return {
  'before': ?before,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'before'}.contains(key)); } 
WaitingroomRulePositionVariant2 copyWith({String Function()? before}) { return WaitingroomRulePositionVariant2(
  before: before != null ? before() : this.before,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomRulePositionVariant2 &&
          before == other.before; } 
@override int get hashCode { return before.hashCode; } 
@override String toString() { return 'WaitingroomRulePositionVariant2(before: $before)'; } 
 }
