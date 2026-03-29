// GENERATED CODE - DO NOT MODIFY BY HAND

/// A path to a file.
/// 
final class FilePath {const FilePath({required this.type, required this.fileId, required this.index, });

factory FilePath.fromJson(Map<String, dynamic> json) { return FilePath(
  type: json['type'] as String,
  fileId: json['file_id'] as String,
  index: (json['index'] as num).toInt(),
); }

/// The type of the file path. Always `file_path`.
/// 
final String type;

/// The ID of the file.
/// 
final String fileId;

/// The index of the file in the list of files.
/// 
final int index;

Map<String, dynamic> toJson() { return {
  'type': type,
  'file_id': fileId,
  'index': index,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('file_id') && json['file_id'] is String &&
      json.containsKey('index') && json['index'] is num; } 
FilePath copyWith({String? type, String? fileId, int? index, }) { return FilePath(
  type: type ?? this.type,
  fileId: fileId ?? this.fileId,
  index: index ?? this.index,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FilePath &&
          type == other.type &&
          fileId == other.fileId &&
          index == other.index; } 
@override int get hashCode { return Object.hash(type, fileId, index); } 
@override String toString() { return 'FilePath(type: $type, fileId: $fileId, index: $index)'; } 
 }
