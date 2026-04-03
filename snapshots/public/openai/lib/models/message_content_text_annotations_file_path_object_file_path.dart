// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MessageContentTextAnnotationsFilePathObjectFilePath {const MessageContentTextAnnotationsFilePathObjectFilePath({required this.fileId});

factory MessageContentTextAnnotationsFilePathObjectFilePath.fromJson(Map<String, dynamic> json) { return MessageContentTextAnnotationsFilePathObjectFilePath(
  fileId: json['file_id'] as String,
); }

/// The ID of the file that was generated.
final String fileId;

Map<String, dynamic> toJson() { return {
  'file_id': fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file_id') && json['file_id'] is String; } 
MessageContentTextAnnotationsFilePathObjectFilePath copyWith({String? fileId}) { return MessageContentTextAnnotationsFilePathObjectFilePath(
  fileId: fileId ?? this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageContentTextAnnotationsFilePathObjectFilePath &&
          fileId == other.fileId; } 
@override int get hashCode { return fileId.hashCode; } 
@override String toString() { return 'MessageContentTextAnnotationsFilePathObjectFilePath(fileId: $fileId)'; } 
 }
