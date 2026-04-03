// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRulesetConditionsRepositoryNameTargetRepositoryName {const RepositoryRulesetConditionsRepositoryNameTargetRepositoryName({this.include, this.exclude, this.protected, });

factory RepositoryRulesetConditionsRepositoryNameTargetRepositoryName.fromJson(Map<String, dynamic> json) { return RepositoryRulesetConditionsRepositoryNameTargetRepositoryName(
  include: (json['include'] as List<dynamic>?)?.map((e) => e as String).toList(),
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => e as String).toList(),
  protected: json['protected'] as bool?,
); }

/// Array of repository names or patterns to include. One of these patterns must match for the condition to pass. Also accepts `~ALL` to include all repositories.
final List<String>? include;

/// Array of repository names or patterns to exclude. The condition will not pass if any of these patterns match.
final List<String>? exclude;

/// Whether renaming of target repositories is prevented.
final bool? protected;

Map<String, dynamic> toJson() { return {
  'include': ?include,
  'exclude': ?exclude,
  'protected': ?protected,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'include', 'exclude', 'protected'}.contains(key)); } 
RepositoryRulesetConditionsRepositoryNameTargetRepositoryName copyWith({List<String> Function()? include, List<String> Function()? exclude, bool Function()? protected, }) { return RepositoryRulesetConditionsRepositoryNameTargetRepositoryName(
  include: include != null ? include() : this.include,
  exclude: exclude != null ? exclude() : this.exclude,
  protected: protected != null ? protected() : this.protected,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulesetConditionsRepositoryNameTargetRepositoryName &&
          listEquals(include, other.include) &&
          listEquals(exclude, other.exclude) &&
          protected == other.protected; } 
@override int get hashCode { return Object.hash(Object.hashAll(include ?? const []), Object.hashAll(exclude ?? const []), protected); } 
@override String toString() { return 'RepositoryRulesetConditionsRepositoryNameTargetRepositoryName(include: $include, exclude: $exclude, protected: $protected)'; } 
 }
