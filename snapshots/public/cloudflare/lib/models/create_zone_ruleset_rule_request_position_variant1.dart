// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateZoneRulesetRuleRequestPositionVariant1 {const CreateZoneRulesetRuleRequestPositionVariant1({this.before});

factory CreateZoneRulesetRuleRequestPositionVariant1.fromJson(Map<String, dynamic> json) { return CreateZoneRulesetRuleRequestPositionVariant1(
  before: json['before'] as String?,
); }

/// The ID of another rule to place the rule before. An empty value causes the rule to be placed at the top.
final String? before;

Map<String, dynamic> toJson() { return {
  'before': ?before,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'before'}.contains(key)); } 
CreateZoneRulesetRuleRequestPositionVariant1 copyWith({String Function()? before}) { return CreateZoneRulesetRuleRequestPositionVariant1(
  before: before != null ? before() : this.before,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateZoneRulesetRuleRequestPositionVariant1 &&
          before == other.before; } 
@override int get hashCode { return before.hashCode; } 
@override String toString() { return 'CreateZoneRulesetRuleRequestPositionVariant1(before: $before)'; } 
 }
