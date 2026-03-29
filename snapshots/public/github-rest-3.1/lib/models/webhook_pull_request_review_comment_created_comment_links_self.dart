// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentCreatedCommentLinksSelf {const WebhookPullRequestReviewCommentCreatedCommentLinksSelf({required this.href});

factory WebhookPullRequestReviewCommentCreatedCommentLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedCommentLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedCommentLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedCommentLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedCommentLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedCommentLinksSelf(href: $href)'; } 
 }
