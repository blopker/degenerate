// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_ruleset_conditions_repository_property_spec.dart';@immutable final class RepositoryPropertyAndRefNameRepositoryProperty {const RepositoryPropertyAndRefNameRepositoryProperty({this.include, this.exclude, });

factory RepositoryPropertyAndRefNameRepositoryProperty.fromJson(Map<String, dynamic> json) { return RepositoryPropertyAndRefNameRepositoryProperty(
  include: (json['include'] as List<dynamic>?)?.map((e) => RepositoryRulesetConditionsRepositoryPropertySpec.fromJson(e as Map<String, dynamic>)).toList(),
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => RepositoryRulesetConditionsRepositoryPropertySpec.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The repository properties and values to include. All of these properties must match for the condition to pass.
final List<RepositoryRulesetConditionsRepositoryPropertySpec>? include;

/// The repository properties and values to exclude. The condition will not pass if any of these properties match.
final List<RepositoryRulesetConditionsRepositoryPropertySpec>? exclude;

Map<String, dynamic> toJson() { return {
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'include', 'exclude'}.contains(key)); } 
RepositoryPropertyAndRefNameRepositoryProperty copyWith({List<RepositoryRulesetConditionsRepositoryPropertySpec> Function()? include, List<RepositoryRulesetConditionsRepositoryPropertySpec> Function()? exclude, }) { return RepositoryPropertyAndRefNameRepositoryProperty(
  include: include != null ? include() : this.include,
  exclude: exclude != null ? exclude() : this.exclude,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryPropertyAndRefNameRepositoryProperty &&
          listEquals(include, other.include) &&
          listEquals(exclude, other.exclude); } 
@override int get hashCode { return Object.hash(Object.hashAll(include ?? const []), Object.hashAll(exclude ?? const [])); } 
@override String toString() { return 'RepositoryPropertyAndRefNameRepositoryProperty(include: $include, exclude: $exclude)'; } 
 }
