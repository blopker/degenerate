// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments {const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments(href: $href)'; } 
 }
