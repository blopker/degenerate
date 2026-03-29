// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewDismissedPullRequestLinksCommits {const WebhookPullRequestReviewDismissedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewDismissedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewDismissedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewDismissedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestLinksCommits(href: $href)'; } 
 }
