// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WaitingroomRulePositionVariant1 {const WaitingroomRulePositionVariant1({this.index});

factory WaitingroomRulePositionVariant1.fromJson(Map<String, dynamic> json) { return WaitingroomRulePositionVariant1(
  index: json['index'] != null ? (json['index'] as num).toInt() : null,
); }

/// Places the rule in the exact position specified by the integer number `<POSITION_NUMBER>`. Position numbers start with 1. Existing rules in the ruleset from the specified position number onward are shifted one position (no rule is overwritten).
final int? index;

Map<String, dynamic> toJson() { return {
  'index': ?index,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'index'}.contains(key)); } 
WaitingroomRulePositionVariant1 copyWith({int Function()? index}) { return WaitingroomRulePositionVariant1(
  index: index != null ? index() : this.index,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomRulePositionVariant1 &&
          index == other.index; } 
@override int get hashCode { return index.hashCode; } 
@override String toString() { return 'WaitingroomRulePositionVariant1(index: $index)'; } 
 }
