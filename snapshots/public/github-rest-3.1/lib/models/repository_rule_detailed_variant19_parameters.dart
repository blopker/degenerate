// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant19Parameters {const RepositoryRuleDetailedVariant19Parameters({required this.maxFileSize});

factory RepositoryRuleDetailedVariant19Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant19Parameters(
  maxFileSize: (json['max_file_size'] as num).toInt(),
); }

/// The maximum file size allowed in megabytes. This limit does not apply to Git Large File Storage (Git LFS).
final int maxFileSize;

Map<String, dynamic> toJson() { return {
  'max_file_size': maxFileSize,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('max_file_size') && json['max_file_size'] is num; } 
RepositoryRuleDetailedVariant19Parameters copyWith({int? maxFileSize}) { return RepositoryRuleDetailedVariant19Parameters(
  maxFileSize: maxFileSize ?? this.maxFileSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant19Parameters &&
          maxFileSize == other.maxFileSize; } 
@override int get hashCode { return maxFileSize.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant19Parameters(maxFileSize: $maxFileSize)'; } 
 }
