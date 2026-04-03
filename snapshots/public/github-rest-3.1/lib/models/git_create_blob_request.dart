// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GitCreateBlobRequest {const GitCreateBlobRequest({required this.content, this.encoding = 'utf-8', });

factory GitCreateBlobRequest.fromJson(Map<String, dynamic> json) { return GitCreateBlobRequest(
  content: json['content'] as String,
  encoding: json.containsKey('encoding') ? json['encoding'] as String : 'utf-8',
); }

/// The new blob's content.
final String content;

/// The encoding used for `content`. Currently, `"utf-8"` and `"base64"` are supported.
final String encoding;

Map<String, dynamic> toJson() { return {
  'content': content,
  'encoding': encoding,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String; } 
GitCreateBlobRequest copyWith({String? content, String Function()? encoding, }) { return GitCreateBlobRequest(
  content: content ?? this.content,
  encoding: encoding != null ? encoding() : this.encoding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GitCreateBlobRequest &&
          content == other.content &&
          encoding == other.encoding; } 
@override int get hashCode { return Object.hash(content, encoding); } 
@override String toString() { return 'GitCreateBlobRequest(content: $content, encoding: $encoding)'; } 
 }
