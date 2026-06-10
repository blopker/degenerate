// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant16Parameters {const RepositoryRuleDetailedVariant16Parameters({required this.restrictedFilePaths});

factory RepositoryRuleDetailedVariant16Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant16Parameters(
  restrictedFilePaths: (json['restricted_file_paths'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The file paths that are restricted from being pushed to the commit graph.
final List<String> restrictedFilePaths;

Map<String, dynamic> toJson() { return {
  'restricted_file_paths': restrictedFilePaths,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('restricted_file_paths'); } 
RepositoryRuleDetailedVariant16Parameters copyWith({List<String>? restrictedFilePaths}) { return RepositoryRuleDetailedVariant16Parameters(
  restrictedFilePaths: restrictedFilePaths ?? this.restrictedFilePaths,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant16Parameters &&
          listEquals(restrictedFilePaths, other.restrictedFilePaths); } 
@override int get hashCode { return Object.hashAll(restrictedFilePaths).hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant16Parameters(restrictedFilePaths: $restrictedFilePaths)'; } 
 }
