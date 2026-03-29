// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml {const WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml({required this.href});

factory WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksHtml(href: $href)'; } 
 }
