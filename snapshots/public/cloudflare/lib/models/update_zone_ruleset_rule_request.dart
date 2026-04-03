// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_zone_ruleset_rule_request_position.dart';import 'update_zone_ruleset_rule_request_position_variant1.dart';import 'update_zone_ruleset_rule_request_position_variant2.dart';import 'update_zone_ruleset_rule_request_position_variant3.dart';@immutable final class UpdateZoneRulesetRuleRequest {const UpdateZoneRulesetRuleRequest({this.position});

factory UpdateZoneRulesetRuleRequest.fromJson(Map<String, dynamic> json) { return UpdateZoneRulesetRuleRequest(
  position: json['position'] != null ? OneOf3.parse(json['position'], fromA: (v) => UpdateZoneRulesetRuleRequestPositionVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => UpdateZoneRulesetRuleRequestPositionVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => UpdateZoneRulesetRuleRequestPositionVariant3.fromJson(v as Map<String, dynamic>),) : null,
); }

final UpdateZoneRulesetRuleRequestPosition? position;

Map<String, dynamic> toJson() { return {
  if (position != null) 'position': position?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'position'}.contains(key)); } 
UpdateZoneRulesetRuleRequest copyWith({UpdateZoneRulesetRuleRequestPosition Function()? position}) { return UpdateZoneRulesetRuleRequest(
  position: position != null ? position() : this.position,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateZoneRulesetRuleRequest &&
          position == other.position; } 
@override int get hashCode { return position.hashCode; } 
@override String toString() { return 'UpdateZoneRulesetRuleRequest(position: $position)'; } 
 }
