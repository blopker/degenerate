// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue {const WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue({required this.href});

factory WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadResolvedPullRequestLinksIssue(href: $href)'; } 
 }
