// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments {const WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksReviewComments(href: $href)'; } 
 }
