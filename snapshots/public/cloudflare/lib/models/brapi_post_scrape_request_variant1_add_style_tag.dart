// GENERATED CODE - DO NOT MODIFY BY HAND

final class BrapiPostScrapeRequestVariant1AddStyleTag {const BrapiPostScrapeRequestVariant1AddStyleTag({this.content, this.url, });

factory BrapiPostScrapeRequestVariant1AddStyleTag.fromJson(Map<String, dynamic> json) { return BrapiPostScrapeRequestVariant1AddStyleTag(
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
BrapiPostScrapeRequestVariant1AddStyleTag copyWith({String Function()? content, String Function()? url, }) { return BrapiPostScrapeRequestVariant1AddStyleTag(
  content: content != null ? content() : this.content,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScrapeRequestVariant1AddStyleTag &&
          content == other.content &&
          url == other.url; } 
@override int get hashCode { return Object.hash(content, url); } 
@override String toString() { return 'BrapiPostScrapeRequestVariant1AddStyleTag(content: $content, url: $url)'; } 
 }
