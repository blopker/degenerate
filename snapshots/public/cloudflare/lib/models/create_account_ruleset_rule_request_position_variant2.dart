// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateAccountRulesetRuleRequestPositionVariant2 {const CreateAccountRulesetRuleRequestPositionVariant2({this.after});

factory CreateAccountRulesetRuleRequestPositionVariant2.fromJson(Map<String, dynamic> json) { return CreateAccountRulesetRuleRequestPositionVariant2(
  after: json['after'] as String?,
); }

/// The ID of another rule to place the rule after. An empty value causes the rule to be placed at the bottom.
final String? after;

Map<String, dynamic> toJson() { return {
  'after': ?after,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after'}.contains(key)); } 
CreateAccountRulesetRuleRequestPositionVariant2 copyWith({String Function()? after}) { return CreateAccountRulesetRuleRequestPositionVariant2(
  after: after != null ? after() : this.after,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAccountRulesetRuleRequestPositionVariant2 &&
          after == other.after; } 
@override int get hashCode { return after.hashCode; } 
@override String toString() { return 'CreateAccountRulesetRuleRequestPositionVariant2(after: $after)'; } 
 }
