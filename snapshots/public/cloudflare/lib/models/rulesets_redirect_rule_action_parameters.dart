// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_redirect_from_list.dart';import 'rulesets_redirect_from_value.dart';@immutable final class RulesetsRedirectRuleActionParameters {const RulesetsRedirectRuleActionParameters({this.fromList, this.fromValue, });

factory RulesetsRedirectRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsRedirectRuleActionParameters(
  fromList: json['from_list'] != null ? RulesetsRedirectFromList.fromJson(json['from_list'] as Map<String, dynamic>) : null,
  fromValue: json['from_value'] != null ? RulesetsRedirectFromValue.fromJson(json['from_value'] as Map<String, dynamic>) : null,
); }

final RulesetsRedirectFromList? fromList;

final RulesetsRedirectFromValue? fromValue;

Map<String, dynamic> toJson() { return {
  if (fromList != null) 'from_list': fromList?.toJson(),
  if (fromValue != null) 'from_value': fromValue?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from_list', 'from_value'}.contains(key)); } 
RulesetsRedirectRuleActionParameters copyWith({RulesetsRedirectFromList Function()? fromList, RulesetsRedirectFromValue Function()? fromValue, }) { return RulesetsRedirectRuleActionParameters(
  fromList: fromList != null ? fromList() : this.fromList,
  fromValue: fromValue != null ? fromValue() : this.fromValue,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRedirectRuleActionParameters &&
          fromList == other.fromList &&
          fromValue == other.fromValue; } 
@override int get hashCode { return Object.hash(fromList, fromValue); } 
@override String toString() { return 'RulesetsRedirectRuleActionParameters(fromList: $fromList, fromValue: $fromValue)'; } 
 }
