// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses {const WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentDeletedPullRequestLinksStatuses(href: $href)'; } 
 }
