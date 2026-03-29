// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';final class UploadFileRequest {const UploadFileRequest({required this.file, required this.description, this.tags, });

factory UploadFileRequest.fromJson(Map<String, dynamic> json) { return UploadFileRequest(
  file: base64Decode(json['file'] as String),
  description: json['description'] as String,
  tags: json['tags'] as String?,
); }

final Uint8List file;

final String description;

final String? tags;

Map<String, dynamic> toJson() { return {
  'file': base64Encode(file),
  'description': description,
  'tags': ?tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file') &&
      json.containsKey('description') && json['description'] is String; } 
UploadFileRequest copyWith({Uint8List? file, String? description, String Function()? tags, }) { return UploadFileRequest(
  file: file ?? this.file,
  description: description ?? this.description,
  tags: tags != null ? tags() : this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UploadFileRequest &&
          file == other.file &&
          description == other.description &&
          tags == other.tags; } 
@override int get hashCode { return Object.hash(file, description, tags); } 
@override String toString() { return 'UploadFileRequest(file: $file, description: $description, tags: $tags)'; } 
 }
