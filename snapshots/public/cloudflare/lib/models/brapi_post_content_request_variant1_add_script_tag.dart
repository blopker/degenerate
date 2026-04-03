// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostContentRequestVariant1AddScriptTag {const BrapiPostContentRequestVariant1AddScriptTag({this.content, this.id, this.type, this.url, });

factory BrapiPostContentRequestVariant1AddScriptTag.fromJson(Map<String, dynamic> json) { return BrapiPostContentRequestVariant1AddScriptTag(
  content: json['content'] as String?,
  id: json['id'] as String?,
  type: json['type'] as String?,
  url: json['url'] as String?,
); }

final String? content;

final String? id;

final String? type;

final String? url;

Map<String, dynamic> toJson() { return {
  'content': ?content,
  'id': ?id,
  'type': ?type,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content', 'id', 'type', 'url'}.contains(key)); } 
BrapiPostContentRequestVariant1AddScriptTag copyWith({String Function()? content, String Function()? id, String Function()? type, String Function()? url, }) { return BrapiPostContentRequestVariant1AddScriptTag(
  content: content != null ? content() : this.content,
  id: id != null ? id() : this.id,
  type: type != null ? type() : this.type,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostContentRequestVariant1AddScriptTag &&
          content == other.content &&
          id == other.id &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(content, id, type, url); } 
@override String toString() { return 'BrapiPostContentRequestVariant1AddScriptTag(content: $content, id: $id, type: $type, url: $url)'; } 
 }
