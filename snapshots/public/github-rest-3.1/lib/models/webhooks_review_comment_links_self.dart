// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhooksReviewCommentLinksSelf {const WebhooksReviewCommentLinksSelf({required this.href});

factory WebhooksReviewCommentLinksSelf.fromJson(Map<String, dynamic> json) { return WebhooksReviewCommentLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksReviewCommentLinksSelf copyWith({String? href}) { return WebhooksReviewCommentLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksReviewCommentLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksReviewCommentLinksSelf(href: $href)'; } 
 }
