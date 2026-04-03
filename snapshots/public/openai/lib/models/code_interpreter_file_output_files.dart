// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodeInterpreterFileOutputFiles {const CodeInterpreterFileOutputFiles({required this.mimeType, required this.fileId, });

factory CodeInterpreterFileOutputFiles.fromJson(Map<String, dynamic> json) { return CodeInterpreterFileOutputFiles(
  mimeType: json['mime_type'] as String,
  fileId: json['file_id'] as String,
); }

/// The MIME type of the file.
/// 
final String mimeType;

/// The ID of the file.
/// 
final String fileId;

Map<String, dynamic> toJson() { return {
  'mime_type': mimeType,
  'file_id': fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mime_type') && json['mime_type'] is String &&
      json.containsKey('file_id') && json['file_id'] is String; } 
CodeInterpreterFileOutputFiles copyWith({String? mimeType, String? fileId, }) { return CodeInterpreterFileOutputFiles(
  mimeType: mimeType ?? this.mimeType,
  fileId: fileId ?? this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeInterpreterFileOutputFiles &&
          mimeType == other.mimeType &&
          fileId == other.fileId; } 
@override int get hashCode { return Object.hash(mimeType, fileId); } 
@override String toString() { return 'CodeInterpreterFileOutputFiles(mimeType: $mimeType, fileId: $fileId)'; } 
 }
