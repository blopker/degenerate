// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';final class CreateContainerFileBody {const CreateContainerFileBody({this.fileId, this.file, });

factory CreateContainerFileBody.fromJson(Map<String, dynamic> json) { return CreateContainerFileBody(
  fileId: json['file_id'] as String?,
  file: json['file'] != null ? base64Decode(json['file'] as String) : null,
); }

/// Name of the file to create.
final String? fileId;

/// The File object (not file name) to be uploaded.
/// 
final Uint8List? file;

Map<String, dynamic> toJson() { return {
  'file_id': ?fileId,
  'file': ?file,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_id', 'file'}.contains(key)); } 
CreateContainerFileBody copyWith({String Function()? fileId, Uint8List Function()? file, }) { return CreateContainerFileBody(
  fileId: fileId != null ? fileId() : this.fileId,
  file: file != null ? file() : this.file,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateContainerFileBody &&
          fileId == other.fileId &&
          file == other.file; } 
@override int get hashCode { return Object.hash(fileId, file); } 
@override String toString() { return 'CreateContainerFileBody(fileId: $fileId, file: $file)'; } 
 }
