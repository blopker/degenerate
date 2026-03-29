// GENERATED CODE - DO NOT MODIFY BY HAND

final class MessageContentTextAnnotationsFileCitationObjectFileCitation {const MessageContentTextAnnotationsFileCitationObjectFileCitation({required this.fileId});

factory MessageContentTextAnnotationsFileCitationObjectFileCitation.fromJson(Map<String, dynamic> json) { return MessageContentTextAnnotationsFileCitationObjectFileCitation(
  fileId: json['file_id'] as String,
); }

/// The ID of the specific File the citation is from.
final String fileId;

Map<String, dynamic> toJson() { return {
  'file_id': fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file_id') && json['file_id'] is String; } 
MessageContentTextAnnotationsFileCitationObjectFileCitation copyWith({String? fileId}) { return MessageContentTextAnnotationsFileCitationObjectFileCitation(
  fileId: fileId ?? this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageContentTextAnnotationsFileCitationObjectFileCitation &&
          fileId == other.fileId; } 
@override int get hashCode { return fileId.hashCode; } 
@override String toString() { return 'MessageContentTextAnnotationsFileCitationObjectFileCitation(fileId: $fileId)'; } 
 }
