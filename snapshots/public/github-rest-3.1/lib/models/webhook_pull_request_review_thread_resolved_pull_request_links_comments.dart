// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadResolvedPullRequestLinksComments {const WebhookPullRequestReviewThreadResolvedPullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewThreadResolvedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadResolvedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadResolvedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadResolvedPullRequestLinksComments(href: $href)'; } 
 }
