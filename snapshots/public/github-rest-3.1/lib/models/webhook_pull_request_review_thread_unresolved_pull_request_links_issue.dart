// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue {const WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue({required this.href});

factory WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue(href: $href)'; } 
 }
