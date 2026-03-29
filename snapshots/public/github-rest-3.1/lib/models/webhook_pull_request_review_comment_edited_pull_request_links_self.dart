// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentEditedPullRequestLinksSelf {const WebhookPullRequestReviewCommentEditedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestReviewCommentEditedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentEditedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentEditedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewCommentEditedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentEditedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentEditedPullRequestLinksSelf(href: $href)'; } 
 }
