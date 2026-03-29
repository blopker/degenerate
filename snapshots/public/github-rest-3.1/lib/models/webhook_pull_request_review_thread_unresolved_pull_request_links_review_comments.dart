// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments {const WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments(href: $href)'; } 
 }
