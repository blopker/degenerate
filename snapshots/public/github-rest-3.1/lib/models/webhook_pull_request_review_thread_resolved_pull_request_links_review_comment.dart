// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment {const WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadResolvedPullRequestLinksReviewComment(href: $href)'; } 
 }
