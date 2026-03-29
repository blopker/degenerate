// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentCreatedPullRequestLinksComments {const WebhookPullRequestReviewCommentCreatedPullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewCommentCreatedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestLinksComments(href: $href)'; } 
 }
