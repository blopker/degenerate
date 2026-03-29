// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RepositoryRuleFileExtensionRestrictionParameters {const RepositoryRuleFileExtensionRestrictionParameters({required this.restrictedFileExtensions});

factory RepositoryRuleFileExtensionRestrictionParameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleFileExtensionRestrictionParameters(
  restrictedFileExtensions: (json['restricted_file_extensions'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The file extensions that are restricted from being pushed to the commit graph.
final List<String> restrictedFileExtensions;

Map<String, dynamic> toJson() { return {
  'restricted_file_extensions': restrictedFileExtensions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('restricted_file_extensions'); } 
RepositoryRuleFileExtensionRestrictionParameters copyWith({List<String>? restrictedFileExtensions}) { return RepositoryRuleFileExtensionRestrictionParameters(
  restrictedFileExtensions: restrictedFileExtensions ?? this.restrictedFileExtensions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleFileExtensionRestrictionParameters &&
          listEquals(restrictedFileExtensions, other.restrictedFileExtensions); } 
@override int get hashCode { return Object.hashAll(restrictedFileExtensions).hashCode; } 
@override String toString() { return 'RepositoryRuleFileExtensionRestrictionParameters(restrictedFileExtensions: $restrictedFileExtensions)'; } 
 }
