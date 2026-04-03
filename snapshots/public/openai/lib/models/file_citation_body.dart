// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A citation to a file.
@immutable final class FileCitationBody {const FileCitationBody({required this.fileId, required this.index, required this.filename, this.type = 'file_citation', });

factory FileCitationBody.fromJson(Map<String, dynamic> json) { return FileCitationBody(
  type: json['type'] as String,
  fileId: json['file_id'] as String,
  index: (json['index'] as num).toInt(),
  filename: json['filename'] as String,
); }

/// The type of the file citation. Always `file_citation`.
final String type;

/// The ID of the file.
final String fileId;

/// The index of the file in the list of files.
final int index;

/// The filename of the file cited.
final String filename;

Map<String, dynamic> toJson() { return {
  'type': type,
  'file_id': fileId,
  'index': index,
  'filename': filename,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('file_id') && json['file_id'] is String &&
      json.containsKey('index') && json['index'] is num &&
      json.containsKey('filename') && json['filename'] is String; } 
FileCitationBody copyWith({String? type, String? fileId, int? index, String? filename, }) { return FileCitationBody(
  type: type ?? this.type,
  fileId: fileId ?? this.fileId,
  index: index ?? this.index,
  filename: filename ?? this.filename,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileCitationBody &&
          type == other.type &&
          fileId == other.fileId &&
          index == other.index &&
          filename == other.filename; } 
@override int get hashCode { return Object.hash(type, fileId, index, filename); } 
@override String toString() { return 'FileCitationBody(type: $type, fileId: $fileId, index: $index, filename: $filename)'; } 
 }
