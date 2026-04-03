// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BaseGistFilesValue {const BaseGistFilesValue({this.filename, this.type, this.language, this.rawUrl, this.size, this.encoding = 'utf-8', });

factory BaseGistFilesValue.fromJson(Map<String, dynamic> json) { return BaseGistFilesValue(
  filename: json['filename'] as String?,
  type: json['type'] as String?,
  language: json['language'] as String?,
  rawUrl: json['raw_url'] as String?,
  size: json['size'] != null ? (json['size'] as num).toInt() : null,
  encoding: json.containsKey('encoding') ? json['encoding'] as String : 'utf-8',
); }

final String? filename;

final String? type;

final String? language;

final String? rawUrl;

final int? size;

/// The encoding used for `content`. Currently, `"utf-8"` and `"base64"` are supported.
final String encoding;

Map<String, dynamic> toJson() { return {
  'filename': ?filename,
  'type': ?type,
  'language': ?language,
  'raw_url': ?rawUrl,
  'size': ?size,
  'encoding': encoding,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filename', 'type', 'language', 'raw_url', 'size', 'encoding'}.contains(key)); } 
BaseGistFilesValue copyWith({String Function()? filename, String Function()? type, String Function()? language, String Function()? rawUrl, int Function()? size, String Function()? encoding, }) { return BaseGistFilesValue(
  filename: filename != null ? filename() : this.filename,
  type: type != null ? type() : this.type,
  language: language != null ? language() : this.language,
  rawUrl: rawUrl != null ? rawUrl() : this.rawUrl,
  size: size != null ? size() : this.size,
  encoding: encoding != null ? encoding() : this.encoding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BaseGistFilesValue &&
          filename == other.filename &&
          type == other.type &&
          language == other.language &&
          rawUrl == other.rawUrl &&
          size == other.size &&
          encoding == other.encoding; } 
@override int get hashCode { return Object.hash(filename, type, language, rawUrl, size, encoding); } 
@override String toString() { return 'BaseGistFilesValue(filename: $filename, type: $type, language: $language, rawUrl: $rawUrl, size: $size, encoding: $encoding)'; } 
 }
