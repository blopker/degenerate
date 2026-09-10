// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_redirect_from_list.dart';import 'rulesets_redirect_from_value.dart';@immutable final class RulesetsRedirectRuleRequestActionParameters {const RulesetsRedirectRuleRequestActionParameters({this.fromList, this.fromValue, });

factory RulesetsRedirectRuleRequestActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsRedirectRuleRequestActionParameters(
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
RulesetsRedirectRuleRequestActionParameters copyWith({RulesetsRedirectFromList? Function()? fromList, RulesetsRedirectFromValue? Function()? fromValue, }) { return RulesetsRedirectRuleRequestActionParameters(
  fromList: fromList != null ? fromList() : this.fromList,
  fromValue: fromValue != null ? fromValue() : this.fromValue,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRedirectRuleRequestActionParameters &&
          fromList == other.fromList &&
          fromValue == other.fromValue; } 
@override int get hashCode { return Object.hash(fromList, fromValue); } 
@override String toString() { return 'RulesetsRedirectRuleRequestActionParameters(fromList: $fromList, fromValue: $fromValue)'; } 
 }
