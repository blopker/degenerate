// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits {const WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksCommits(href: $href)'; } 
 }
