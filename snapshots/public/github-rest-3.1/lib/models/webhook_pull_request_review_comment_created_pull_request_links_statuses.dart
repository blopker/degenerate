// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses {const WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestLinksStatuses(href: $href)'; } 
 }
