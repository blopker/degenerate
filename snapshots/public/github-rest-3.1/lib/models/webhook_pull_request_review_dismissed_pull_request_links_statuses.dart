// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewDismissedPullRequestLinksStatuses {const WebhookPullRequestReviewDismissedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewDismissedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewDismissedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewDismissedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestLinksStatuses(href: $href)'; } 
 }
