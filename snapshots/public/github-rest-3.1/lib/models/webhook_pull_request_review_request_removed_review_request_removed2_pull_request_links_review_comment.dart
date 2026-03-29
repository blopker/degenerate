// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment {const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment(href: $href)'; } 
 }
