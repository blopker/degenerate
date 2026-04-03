// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateAccountRulesetRuleRequestPositionVariant1 {const CreateAccountRulesetRuleRequestPositionVariant1({this.before});

factory CreateAccountRulesetRuleRequestPositionVariant1.fromJson(Map<String, dynamic> json) { return CreateAccountRulesetRuleRequestPositionVariant1(
  before: json['before'] as String?,
); }

/// The ID of another rule to place the rule before. An empty value causes the rule to be placed at the top.
final String? before;

Map<String, dynamic> toJson() { return {
  'before': ?before,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'before'}.contains(key)); } 
CreateAccountRulesetRuleRequestPositionVariant1 copyWith({String Function()? before}) { return CreateAccountRulesetRuleRequestPositionVariant1(
  before: before != null ? before() : this.before,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAccountRulesetRuleRequestPositionVariant1 &&
          before == other.before; } 
@override int get hashCode { return before.hashCode; } 
@override String toString() { return 'CreateAccountRulesetRuleRequestPositionVariant1(before: $before)'; } 
 }
