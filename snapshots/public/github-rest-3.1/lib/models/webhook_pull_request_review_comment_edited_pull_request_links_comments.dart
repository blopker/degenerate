// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentEditedPullRequestLinksComments {const WebhookPullRequestReviewCommentEditedPullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewCommentEditedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentEditedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentEditedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewCommentEditedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentEditedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentEditedPullRequestLinksComments(href: $href)'; } 
 }
