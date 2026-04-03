// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateAccountRulesetRuleRequestPositionVariant3 {const CreateAccountRulesetRuleRequestPositionVariant3({this.index});

factory CreateAccountRulesetRuleRequestPositionVariant3.fromJson(Map<String, dynamic> json) { return CreateAccountRulesetRuleRequestPositionVariant3(
  index: json['index'] != null ? (json['index'] as num).toInt() : null,
); }

/// An index at which to place the rule, where index 1 is the first rule.
final int? index;

Map<String, dynamic> toJson() { return {
  'index': ?index,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'index'}.contains(key)); } 
CreateAccountRulesetRuleRequestPositionVariant3 copyWith({int Function()? index}) { return CreateAccountRulesetRuleRequestPositionVariant3(
  index: index != null ? index() : this.index,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAccountRulesetRuleRequestPositionVariant3 &&
          index == other.index; } 
@override int get hashCode { return index.hashCode; } 
@override String toString() { return 'CreateAccountRulesetRuleRequestPositionVariant3(index: $index)'; } 
 }
