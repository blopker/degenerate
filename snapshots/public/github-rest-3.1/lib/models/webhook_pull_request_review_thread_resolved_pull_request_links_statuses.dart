// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses {const WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadResolvedPullRequestLinksStatuses(href: $href)'; } 
 }
