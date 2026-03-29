// GENERATED CODE - DO NOT MODIFY BY HAND

final class RepositoryRuleMaxFileSizeParameters {const RepositoryRuleMaxFileSizeParameters({required this.maxFileSize});

factory RepositoryRuleMaxFileSizeParameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleMaxFileSizeParameters(
  maxFileSize: (json['max_file_size'] as num).toInt(),
); }

/// The maximum file size allowed in megabytes. This limit does not apply to Git Large File Storage (Git LFS).
final int maxFileSize;

Map<String, dynamic> toJson() { return {
  'max_file_size': maxFileSize,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('max_file_size') && json['max_file_size'] is num; } 
RepositoryRuleMaxFileSizeParameters copyWith({int? maxFileSize}) { return RepositoryRuleMaxFileSizeParameters(
  maxFileSize: maxFileSize ?? this.maxFileSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleMaxFileSizeParameters &&
          maxFileSize == other.maxFileSize; } 
@override int get hashCode { return maxFileSize.hashCode; } 
@override String toString() { return 'RepositoryRuleMaxFileSizeParameters(maxFileSize: $maxFileSize)'; } 
 }
