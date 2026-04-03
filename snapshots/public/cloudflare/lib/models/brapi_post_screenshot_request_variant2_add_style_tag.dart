// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostScreenshotRequestVariant2AddStyleTag {const BrapiPostScreenshotRequestVariant2AddStyleTag({this.content, this.url, });

factory BrapiPostScreenshotRequestVariant2AddStyleTag.fromJson(Map<String, dynamic> json) { return BrapiPostScreenshotRequestVariant2AddStyleTag(
  content: json['content'] as String?,
  url: json['url'] as String?,
); }

final String? content;

final String? url;

Map<String, dynamic> toJson() { return {
  'content': ?content,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content', 'url'}.contains(key)); } 
BrapiPostScreenshotRequestVariant2AddStyleTag copyWith({String Function()? content, String Function()? url, }) { return BrapiPostScreenshotRequestVariant2AddStyleTag(
  content: content != null ? content() : this.content,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScreenshotRequestVariant2AddStyleTag &&
          content == other.content &&
          url == other.url; } 
@override int get hashCode { return Object.hash(content, url); } 
@override String toString() { return 'BrapiPostScreenshotRequestVariant2AddStyleTag(content: $content, url: $url)'; } 
 }
