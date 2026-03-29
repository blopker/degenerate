// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits {const WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits(href: $href)'; } 
 }
