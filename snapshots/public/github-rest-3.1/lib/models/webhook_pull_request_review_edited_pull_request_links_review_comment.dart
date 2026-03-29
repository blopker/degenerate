// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewEditedPullRequestLinksReviewComment {const WebhookPullRequestReviewEditedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewEditedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewEditedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewEditedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewEditedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewEditedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewEditedPullRequestLinksReviewComment(href: $href)'; } 
 }
