// GENERATED CODE - DO NOT MODIFY BY HAND

final class MessageDeltaContentTextAnnotationsFilePathObjectFilePath {const MessageDeltaContentTextAnnotationsFilePathObjectFilePath({this.fileId});

factory MessageDeltaContentTextAnnotationsFilePathObjectFilePath.fromJson(Map<String, dynamic> json) { return MessageDeltaContentTextAnnotationsFilePathObjectFilePath(
  fileId: json['file_id'] as String?,
); }

/// The ID of the file that was generated.
final String? fileId;

Map<String, dynamic> toJson() { return {
  'file_id': ?fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_id'}.contains(key)); } 
MessageDeltaContentTextAnnotationsFilePathObjectFilePath copyWith({String Function()? fileId}) { return MessageDeltaContentTextAnnotationsFilePathObjectFilePath(
  fileId: fileId != null ? fileId() : this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageDeltaContentTextAnnotationsFilePathObjectFilePath &&
          fileId == other.fileId; } 
@override int get hashCode { return fileId.hashCode; } 
@override String toString() { return 'MessageDeltaContentTextAnnotationsFilePathObjectFilePath(fileId: $fileId)'; } 
 }
