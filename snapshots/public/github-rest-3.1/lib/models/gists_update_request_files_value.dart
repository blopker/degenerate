// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GistsUpdateRequestFilesValue {const GistsUpdateRequestFilesValue({this.content, this.filename = const Omittable.absent(), });

factory GistsUpdateRequestFilesValue.fromJson(Map<String, dynamic> json) { return GistsUpdateRequestFilesValue(
  content: json['content'] as String?,
  filename: json.containsKey('filename') ? Omittable(json['filename'] as String?) : const Omittable.absent(),
); }

/// The new content of the file.
final String? content;

/// The new filename for the file.
final Omittable<String?> filename;

Map<String, dynamic> toJson() { return {
  'content': ?content,
  if (filename.isPresent) 'filename': filename.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content', 'filename'}.contains(key)); } 
GistsUpdateRequestFilesValue copyWith({String? Function()? content, Omittable<String?>? filename, }) { return GistsUpdateRequestFilesValue(
  content: content != null ? content() : this.content,
  filename: filename ?? this.filename,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistsUpdateRequestFilesValue &&
          content == other.content &&
          filename == other.filename; } 
@override int get hashCode { return Object.hash(content, filename); } 
@override String toString() { return 'GistsUpdateRequestFilesValue(content: $content, filename: $filename)'; } 
 }
