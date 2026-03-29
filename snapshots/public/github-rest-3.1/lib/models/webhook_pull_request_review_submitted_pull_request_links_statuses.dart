// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewSubmittedPullRequestLinksStatuses {const WebhookPullRequestReviewSubmittedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewSubmittedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewSubmittedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewSubmittedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewSubmittedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewSubmittedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestLinksStatuses(href: $href)'; } 
 }
