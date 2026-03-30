// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateZoneRulesetRuleRequestPositionVariant3 {const UpdateZoneRulesetRuleRequestPositionVariant3({this.index});

factory UpdateZoneRulesetRuleRequestPositionVariant3.fromJson(Map<String, dynamic> json) { return UpdateZoneRulesetRuleRequestPositionVariant3(
  index: json['index'] != null ? (json['index'] as num).toInt() : null,
); }

/// An index at which to place the rule, where index 1 is the first rule.
final int? index;

Map<String, dynamic> toJson() { return {
  'index': ?index,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'index'}.contains(key)); } 
UpdateZoneRulesetRuleRequestPositionVariant3 copyWith({int Function()? index}) { return UpdateZoneRulesetRuleRequestPositionVariant3(
  index: index != null ? index() : this.index,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateZoneRulesetRuleRequestPositionVariant3 &&
          index == other.index; } 
@override int get hashCode { return index.hashCode; } 
@override String toString() { return 'UpdateZoneRulesetRuleRequestPositionVariant3(index: $index)'; } 
 }
