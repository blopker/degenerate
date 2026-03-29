// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment {const WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComment(href: $href)'; } 
 }
