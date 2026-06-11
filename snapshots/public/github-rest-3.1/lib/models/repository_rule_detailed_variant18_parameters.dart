// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant18Parameters {const RepositoryRuleDetailedVariant18Parameters({required this.restrictedFileExtensions});

factory RepositoryRuleDetailedVariant18Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant18Parameters(
  restrictedFileExtensions: (json['restricted_file_extensions'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The file extensions that are restricted from being pushed to the commit graph.
final List<String> restrictedFileExtensions;

Map<String, dynamic> toJson() { return {
  'restricted_file_extensions': restrictedFileExtensions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('restricted_file_extensions'); } 
RepositoryRuleDetailedVariant18Parameters copyWith({List<String>? restrictedFileExtensions}) { return RepositoryRuleDetailedVariant18Parameters(
  restrictedFileExtensions: restrictedFileExtensions ?? this.restrictedFileExtensions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant18Parameters &&
          listEquals(restrictedFileExtensions, other.restrictedFileExtensions); } 
@override int get hashCode { return Object.hashAll(restrictedFileExtensions).hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant18Parameters(restrictedFileExtensions: $restrictedFileExtensions)'; } 
 }
