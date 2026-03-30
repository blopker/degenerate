// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateZoneRulesetRuleRequestPositionVariant2 {const UpdateZoneRulesetRuleRequestPositionVariant2({this.after});

factory UpdateZoneRulesetRuleRequestPositionVariant2.fromJson(Map<String, dynamic> json) { return UpdateZoneRulesetRuleRequestPositionVariant2(
  after: json['after'] as String?,
); }

/// The ID of another rule to place the rule after. An empty value causes the rule to be placed at the bottom.
final String? after;

Map<String, dynamic> toJson() { return {
  'after': ?after,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after'}.contains(key)); } 
UpdateZoneRulesetRuleRequestPositionVariant2 copyWith({String Function()? after}) { return UpdateZoneRulesetRuleRequestPositionVariant2(
  after: after != null ? after() : this.after,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateZoneRulesetRuleRequestPositionVariant2 &&
          after == other.after; } 
@override int get hashCode { return after.hashCode; } 
@override String toString() { return 'UpdateZoneRulesetRuleRequestPositionVariant2(after: $after)'; } 
 }
