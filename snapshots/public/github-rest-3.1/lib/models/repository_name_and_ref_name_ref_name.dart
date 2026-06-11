// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryNameAndRefNameRefName {const RepositoryNameAndRefNameRefName({this.include, this.exclude, });

factory RepositoryNameAndRefNameRefName.fromJson(Map<String, dynamic> json) { return RepositoryNameAndRefNameRefName(
  include: (json['include'] as List<dynamic>?)?.map((e) => e as String).toList(),
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Array of ref names or patterns to include. One of these patterns must match for the condition to pass. Also accepts `~DEFAULT_BRANCH` to include the default branch or `~ALL` to include all branches.
final List<String>? include;

/// Array of ref names or patterns to exclude. The condition will not pass if any of these patterns match.
final List<String>? exclude;

Map<String, dynamic> toJson() { return {
  'include': ?include,
  'exclude': ?exclude,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'include', 'exclude'}.contains(key)); } 
RepositoryNameAndRefNameRefName copyWith({List<String> Function()? include, List<String> Function()? exclude, }) { return RepositoryNameAndRefNameRefName(
  include: include != null ? include() : this.include,
  exclude: exclude != null ? exclude() : this.exclude,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryNameAndRefNameRefName &&
          listEquals(include, other.include) &&
          listEquals(exclude, other.exclude); } 
@override int get hashCode { return Object.hash(Object.hashAll(include ?? const []), Object.hashAll(exclude ?? const [])); } 
@override String toString() { return 'RepositoryNameAndRefNameRefName(include: $include, exclude: $exclude)'; } 
 }
