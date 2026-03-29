// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits {const WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksCommits(href: $href)'; } 
 }
