// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateAccountRulesetRuleRequestPositionVariant1 {const UpdateAccountRulesetRuleRequestPositionVariant1({this.before});

factory UpdateAccountRulesetRuleRequestPositionVariant1.fromJson(Map<String, dynamic> json) { return UpdateAccountRulesetRuleRequestPositionVariant1(
  before: json['before'] as String?,
); }

/// The ID of another rule to place the rule before. An empty value causes the rule to be placed at the top.
final String? before;

Map<String, dynamic> toJson() { return {
  'before': ?before,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'before'}.contains(key)); } 
UpdateAccountRulesetRuleRequestPositionVariant1 copyWith({String Function()? before}) { return UpdateAccountRulesetRuleRequestPositionVariant1(
  before: before != null ? before() : this.before,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateAccountRulesetRuleRequestPositionVariant1 &&
          before == other.before; } 
@override int get hashCode { return before.hashCode; } 
@override String toString() { return 'UpdateAccountRulesetRuleRequestPositionVariant1(before: $before)'; } 
 }
