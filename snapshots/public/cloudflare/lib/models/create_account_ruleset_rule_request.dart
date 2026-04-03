// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_account_ruleset_rule_request_position.dart';import 'create_account_ruleset_rule_request_position_variant1.dart';import 'create_account_ruleset_rule_request_position_variant2.dart';import 'create_account_ruleset_rule_request_position_variant3.dart';@immutable final class CreateAccountRulesetRuleRequest {const CreateAccountRulesetRuleRequest({this.position});

factory CreateAccountRulesetRuleRequest.fromJson(Map<String, dynamic> json) { return CreateAccountRulesetRuleRequest(
  position: json['position'] != null ? OneOf3.parse(json['position'], fromA: (v) => CreateAccountRulesetRuleRequestPositionVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => CreateAccountRulesetRuleRequestPositionVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => CreateAccountRulesetRuleRequestPositionVariant3.fromJson(v as Map<String, dynamic>),) : null,
); }

final CreateAccountRulesetRuleRequestPosition? position;

Map<String, dynamic> toJson() { return {
  if (position != null) 'position': position?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'position'}.contains(key)); } 
CreateAccountRulesetRuleRequest copyWith({CreateAccountRulesetRuleRequestPosition Function()? position}) { return CreateAccountRulesetRuleRequest(
  position: position != null ? position() : this.position,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAccountRulesetRuleRequest &&
          position == other.position; } 
@override int get hashCode { return position.hashCode; } 
@override String toString() { return 'CreateAccountRulesetRuleRequest(position: $position)'; } 
 }
