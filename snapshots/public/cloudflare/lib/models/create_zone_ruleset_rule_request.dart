// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_zone_ruleset_rule_request_position.dart';import 'create_zone_ruleset_rule_request_position_variant1.dart';import 'create_zone_ruleset_rule_request_position_variant2.dart';import 'create_zone_ruleset_rule_request_position_variant3.dart';final class CreateZoneRulesetRuleRequest {const CreateZoneRulesetRuleRequest({this.position});

factory CreateZoneRulesetRuleRequest.fromJson(Map<String, dynamic> json) { return CreateZoneRulesetRuleRequest(
  position: json['position'] != null ? OneOf3.parse(json['position'], fromA: (v) => CreateZoneRulesetRuleRequestPositionVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => CreateZoneRulesetRuleRequestPositionVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => CreateZoneRulesetRuleRequestPositionVariant3.fromJson(v as Map<String, dynamic>),) : null,
); }

final CreateZoneRulesetRuleRequestPosition? position;

Map<String, dynamic> toJson() { return {
  if (position != null) 'position': position?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'position'}.contains(key)); } 
CreateZoneRulesetRuleRequest copyWith({CreateZoneRulesetRuleRequestPosition Function()? position}) { return CreateZoneRulesetRuleRequest(
  position: position != null ? position() : this.position,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateZoneRulesetRuleRequest &&
          position == other.position; } 
@override int get hashCode { return position.hashCode; } 
@override String toString() { return 'CreateZoneRulesetRuleRequest(position: $position)'; } 
 }
