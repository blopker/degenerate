// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses {const WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksStatuses(href: $href)'; } 
 }
