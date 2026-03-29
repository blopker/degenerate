// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments {const WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksComments(href: $href)'; } 
 }
