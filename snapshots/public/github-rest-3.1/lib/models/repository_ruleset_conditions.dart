// GENERATED CODE - DO NOT MODIFY BY HAND

import 'repository_ruleset_conditions_ref_name.dart';/// Parameters for a repository ruleset ref name condition
final class RepositoryRulesetConditions {const RepositoryRulesetConditions({this.refName});

factory RepositoryRulesetConditions.fromJson(Map<String, dynamic> json) { return RepositoryRulesetConditions(
  refName: json['ref_name'] != null ? RepositoryRulesetConditionsRefName.fromJson(json['ref_name'] as Map<String, dynamic>) : null,
); }

final RepositoryRulesetConditionsRefName? refName;

Map<String, dynamic> toJson() { return {
  if (refName != null) 'ref_name': refName?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RepositoryRulesetConditions copyWith({RepositoryRulesetConditionsRefName Function()? refName}) { return RepositoryRulesetConditions(
  refName: refName != null ? refName() : this.refName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulesetConditions &&
          refName == other.refName; } 
@override int get hashCode { return refName.hashCode; } 
@override String toString() { return 'RepositoryRulesetConditions(refName: $refName)'; } 
 }
