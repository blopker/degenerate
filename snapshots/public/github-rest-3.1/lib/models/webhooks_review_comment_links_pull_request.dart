// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhooksReviewCommentLinksPullRequest {const WebhooksReviewCommentLinksPullRequest({required this.href});

factory WebhooksReviewCommentLinksPullRequest.fromJson(Map<String, dynamic> json) { return WebhooksReviewCommentLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksReviewCommentLinksPullRequest copyWith({String? href}) { return WebhooksReviewCommentLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksReviewCommentLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksReviewCommentLinksPullRequest(href: $href)'; } 
 }
