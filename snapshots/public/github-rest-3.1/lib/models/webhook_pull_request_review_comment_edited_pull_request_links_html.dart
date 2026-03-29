// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentEditedPullRequestLinksHtml {const WebhookPullRequestReviewCommentEditedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestReviewCommentEditedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentEditedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentEditedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewCommentEditedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentEditedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentEditedPullRequestLinksHtml(href: $href)'; } 
 }
