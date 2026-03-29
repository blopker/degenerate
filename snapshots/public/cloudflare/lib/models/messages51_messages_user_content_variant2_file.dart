// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages51MessagesUserContentVariant2File {const Messages51MessagesUserContentVariant2File({this.fileData, this.fileId, this.filename, });

factory Messages51MessagesUserContentVariant2File.fromJson(Map<String, dynamic> json) { return Messages51MessagesUserContentVariant2File(
  fileData: json['file_data'] as String?,
  fileId: json['file_id'] as String?,
  filename: json['filename'] as String?,
); }

final String? fileData;

final String? fileId;

final String? filename;

Map<String, dynamic> toJson() { return {
  'file_data': ?fileData,
  'file_id': ?fileId,
  'filename': ?filename,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages51MessagesUserContentVariant2File copyWith({String Function()? fileData, String Function()? fileId, String Function()? filename, }) { return Messages51MessagesUserContentVariant2File(
  fileData: fileData != null ? fileData() : this.fileData,
  fileId: fileId != null ? fileId() : this.fileId,
  filename: filename != null ? filename() : this.filename,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51MessagesUserContentVariant2File &&
          fileData == other.fileData &&
          fileId == other.fileId &&
          filename == other.filename; } 
@override int get hashCode { return Object.hash(fileData, fileId, filename); } 
@override String toString() { return 'Messages51MessagesUserContentVariant2File(fileData: $fileData, fileId: $fileId, filename: $filename)'; } 
 }
