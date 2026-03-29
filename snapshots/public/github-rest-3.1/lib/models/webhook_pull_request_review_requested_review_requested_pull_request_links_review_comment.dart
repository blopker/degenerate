// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment {const WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksReviewComment(href: $href)'; } 
 }
