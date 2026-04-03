// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_ruleset_conditions_repository_property_target_repository_property.dart';/// Parameters for a repository property condition
@immutable final class RepositoryRulesetConditionsRepositoryPropertyTarget {const RepositoryRulesetConditionsRepositoryPropertyTarget({required this.repositoryProperty});

factory RepositoryRulesetConditionsRepositoryPropertyTarget.fromJson(Map<String, dynamic> json) { return RepositoryRulesetConditionsRepositoryPropertyTarget(
  repositoryProperty: RepositoryRulesetConditionsRepositoryPropertyTargetRepositoryProperty.fromJson(json['repository_property'] as Map<String, dynamic>),
); }

final RepositoryRulesetConditionsRepositoryPropertyTargetRepositoryProperty repositoryProperty;

Map<String, dynamic> toJson() { return {
  'repository_property': repositoryProperty.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('repository_property'); } 
RepositoryRulesetConditionsRepositoryPropertyTarget copyWith({RepositoryRulesetConditionsRepositoryPropertyTargetRepositoryProperty? repositoryProperty}) { return RepositoryRulesetConditionsRepositoryPropertyTarget(
  repositoryProperty: repositoryProperty ?? this.repositoryProperty,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulesetConditionsRepositoryPropertyTarget &&
          repositoryProperty == other.repositoryProperty; } 
@override int get hashCode { return repositoryProperty.hashCode; } 
@override String toString() { return 'RepositoryRulesetConditionsRepositoryPropertyTarget(repositoryProperty: $repositoryProperty)'; } 
 }
