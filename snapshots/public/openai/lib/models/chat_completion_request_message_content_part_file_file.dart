// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ChatCompletionRequestMessageContentPartFileFile {const ChatCompletionRequestMessageContentPartFileFile({this.filename, this.fileData, this.fileId, });

factory ChatCompletionRequestMessageContentPartFileFile.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageContentPartFileFile(
  filename: json['filename'] as String?,
  fileData: json['file_data'] as String?,
  fileId: json['file_id'] as String?,
); }

/// The name of the file, used when passing the file to the model as a
/// string.
/// 
final String? filename;

/// The base64 encoded file data, used when passing the file to the model
/// as a string.
/// 
final String? fileData;

/// The ID of an uploaded file to use as input.
/// 
final String? fileId;

Map<String, dynamic> toJson() { return {
  'filename': ?filename,
  'file_data': ?fileData,
  'file_id': ?fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filename', 'file_data', 'file_id'}.contains(key)); } 
ChatCompletionRequestMessageContentPartFileFile copyWith({String Function()? filename, String Function()? fileData, String Function()? fileId, }) { return ChatCompletionRequestMessageContentPartFileFile(
  filename: filename != null ? filename() : this.filename,
  fileData: fileData != null ? fileData() : this.fileData,
  fileId: fileId != null ? fileId() : this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionRequestMessageContentPartFileFile &&
          filename == other.filename &&
          fileData == other.fileData &&
          fileId == other.fileId; } 
@override int get hashCode { return Object.hash(filename, fileData, fileId); } 
@override String toString() { return 'ChatCompletionRequestMessageContentPartFileFile(filename: $filename, fileData: $fileData, fileId: $fileId)'; } 
 }
