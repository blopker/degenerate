// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_account_ruleset_rule_request_position.dart';import 'update_account_ruleset_rule_request_position_variant1.dart';import 'update_account_ruleset_rule_request_position_variant2.dart';import 'update_account_ruleset_rule_request_position_variant3.dart';final class UpdateAccountRulesetRuleRequest {const UpdateAccountRulesetRuleRequest({this.position});

factory UpdateAccountRulesetRuleRequest.fromJson(Map<String, dynamic> json) { return UpdateAccountRulesetRuleRequest(
  position: json['position'] != null ? OneOf3.parse(json['position'], fromA: (v) => UpdateAccountRulesetRuleRequestPositionVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => UpdateAccountRulesetRuleRequestPositionVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => UpdateAccountRulesetRuleRequestPositionVariant3.fromJson(v as Map<String, dynamic>),) : null,
); }

final UpdateAccountRulesetRuleRequestPosition? position;

Map<String, dynamic> toJson() { return {
  if (position != null) 'position': position?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'position'}.contains(key)); } 
UpdateAccountRulesetRuleRequest copyWith({UpdateAccountRulesetRuleRequestPosition Function()? position}) { return UpdateAccountRulesetRuleRequest(
  position: position != null ? position() : this.position,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateAccountRulesetRuleRequest &&
          position == other.position; } 
@override int get hashCode { return position.hashCode; } 
@override String toString() { return 'UpdateAccountRulesetRuleRequest(position: $position)'; } 
 }
