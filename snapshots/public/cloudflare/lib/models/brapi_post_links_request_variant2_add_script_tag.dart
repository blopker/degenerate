// GENERATED CODE - DO NOT MODIFY BY HAND

final class BrapiPostLinksRequestVariant2AddScriptTag {const BrapiPostLinksRequestVariant2AddScriptTag({this.content, this.id, this.type, this.url, });

factory BrapiPostLinksRequestVariant2AddScriptTag.fromJson(Map<String, dynamic> json) { return BrapiPostLinksRequestVariant2AddScriptTag(
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
BrapiPostLinksRequestVariant2AddScriptTag copyWith({String Function()? content, String Function()? id, String Function()? type, String Function()? url, }) { return BrapiPostLinksRequestVariant2AddScriptTag(
  content: content != null ? content() : this.content,
  id: id != null ? id() : this.id,
  type: type != null ? type() : this.type,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostLinksRequestVariant2AddScriptTag &&
          content == other.content &&
          id == other.id &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(content, id, type, url); } 
@override String toString() { return 'BrapiPostLinksRequestVariant2AddScriptTag(content: $content, id: $id, type: $type, url: $url)'; } 
 }
