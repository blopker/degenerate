// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml {const WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentDeletedPullRequestLinksHtml(href: $href)'; } 
 }
