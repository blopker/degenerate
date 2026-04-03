// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleFilePathRestrictionParameters {const RepositoryRuleFilePathRestrictionParameters({required this.restrictedFilePaths});

factory RepositoryRuleFilePathRestrictionParameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleFilePathRestrictionParameters(
  restrictedFilePaths: (json['restricted_file_paths'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The file paths that are restricted from being pushed to the commit graph.
final List<String> restrictedFilePaths;

Map<String, dynamic> toJson() { return {
  'restricted_file_paths': restrictedFilePaths,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('restricted_file_paths'); } 
RepositoryRuleFilePathRestrictionParameters copyWith({List<String>? restrictedFilePaths}) { return RepositoryRuleFilePathRestrictionParameters(
  restrictedFilePaths: restrictedFilePaths ?? this.restrictedFilePaths,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleFilePathRestrictionParameters &&
          listEquals(restrictedFilePaths, other.restrictedFilePaths); } 
@override int get hashCode { return Object.hashAll(restrictedFilePaths).hashCode; } 
@override String toString() { return 'RepositoryRuleFilePathRestrictionParameters(restrictedFilePaths: $restrictedFilePaths)'; } 
 }
