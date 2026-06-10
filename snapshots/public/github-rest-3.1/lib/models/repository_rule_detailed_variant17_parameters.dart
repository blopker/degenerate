// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant17Parameters {const RepositoryRuleDetailedVariant17Parameters({required this.maxFilePathLength});

factory RepositoryRuleDetailedVariant17Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant17Parameters(
  maxFilePathLength: (json['max_file_path_length'] as num).toInt(),
); }

/// The maximum amount of characters allowed in file paths.
final int maxFilePathLength;

Map<String, dynamic> toJson() { return {
  'max_file_path_length': maxFilePathLength,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('max_file_path_length') && json['max_file_path_length'] is num; } 
RepositoryRuleDetailedVariant17Parameters copyWith({int? maxFilePathLength}) { return RepositoryRuleDetailedVariant17Parameters(
  maxFilePathLength: maxFilePathLength ?? this.maxFilePathLength,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant17Parameters &&
          maxFilePathLength == other.maxFilePathLength; } 
@override int get hashCode { return maxFilePathLength.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant17Parameters(maxFilePathLength: $maxFilePathLength)'; } 
 }
