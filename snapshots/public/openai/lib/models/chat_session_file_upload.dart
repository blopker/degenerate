// GENERATED CODE - DO NOT MODIFY BY HAND

/// Upload permissions and limits applied to the session.
final class ChatSessionFileUpload {const ChatSessionFileUpload({required this.enabled, required this.maxFileSize, required this.maxFiles, });

factory ChatSessionFileUpload.fromJson(Map<String, dynamic> json) { return ChatSessionFileUpload(
  enabled: json['enabled'] as bool,
  maxFileSize: json['max_file_size'] != null ? (json['max_file_size'] as num).toInt() : null,
  maxFiles: json['max_files'] != null ? (json['max_files'] as num).toInt() : null,
); }

/// Indicates if uploads are enabled for the session.
final bool enabled;

/// Maximum upload size in megabytes.
final int? maxFileSize;

/// Maximum number of uploads allowed during the session.
final int? maxFiles;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'max_file_size': ?maxFileSize,
  'max_files': ?maxFiles,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('max_file_size') && json['max_file_size'] is num &&
      json.containsKey('max_files') && json['max_files'] is num; } 
ChatSessionFileUpload copyWith({bool? enabled, int? Function()? maxFileSize, int? Function()? maxFiles, }) { return ChatSessionFileUpload(
  enabled: enabled ?? this.enabled,
  maxFileSize: maxFileSize != null ? maxFileSize() : this.maxFileSize,
  maxFiles: maxFiles != null ? maxFiles() : this.maxFiles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatSessionFileUpload &&
          enabled == other.enabled &&
          maxFileSize == other.maxFileSize &&
          maxFiles == other.maxFiles; } 
@override int get hashCode { return Object.hash(enabled, maxFileSize, maxFiles); } 
@override String toString() { return 'ChatSessionFileUpload(enabled: $enabled, maxFileSize: $maxFileSize, maxFiles: $maxFiles)'; } 
 }
