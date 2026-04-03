// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'gists_update_request_files_value.dart';@immutable final class GistsUpdateRequest {const GistsUpdateRequest({this.description, this.files, });

factory GistsUpdateRequest.fromJson(Map<String, dynamic> json) { return GistsUpdateRequest(
  description: json['description'] as String?,
  files: (json['files'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, GistsUpdateRequestFilesValue.fromJson(v as Map<String, dynamic>))),
); }

/// The description of the gist.
final String? description;

/// The gist files to be updated, renamed, or deleted. Each `key` must match the current filename
/// (including extension) of the targeted gist file. For example: `hello.py`.
/// 
/// To delete a file, set the whole file to null. For example: `hello.py : null`. The file will also be
/// deleted if the specified object does not contain at least one of `content` or `filename`.
final Map<String,GistsUpdateRequestFilesValue?>? files;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  if (files != null) 'files': files?.map((k, v) => MapEntry(k, v?.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'files'}.contains(key)); } 
GistsUpdateRequest copyWith({String Function()? description, Map<String, GistsUpdateRequestFilesValue> Function()? files, }) { return GistsUpdateRequest(
  description: description != null ? description() : this.description,
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistsUpdateRequest &&
          description == other.description &&
          files == other.files; } 
@override int get hashCode { return Object.hash(description, files); } 
@override String toString() { return 'GistsUpdateRequest(description: $description, files: $files)'; } 
 }
