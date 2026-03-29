// GENERATED CODE - DO NOT MODIFY BY HAND

final class BrapiPostSnapshotRequestVariant1AddStyleTag {const BrapiPostSnapshotRequestVariant1AddStyleTag({this.content, this.url, });

factory BrapiPostSnapshotRequestVariant1AddStyleTag.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotRequestVariant1AddStyleTag(
  content: json['content'] as String?,
  url: json['url'] as String?,
); }

final String? content;

final String? url;

Map<String, dynamic> toJson() { return {
  'content': ?content,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BrapiPostSnapshotRequestVariant1AddStyleTag copyWith({String Function()? content, String Function()? url, }) { return BrapiPostSnapshotRequestVariant1AddStyleTag(
  content: content != null ? content() : this.content,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotRequestVariant1AddStyleTag &&
          content == other.content &&
          url == other.url; } 
@override int get hashCode { return Object.hash(content, url); } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant1AddStyleTag(content: $content, url: $url)'; } 
 }
