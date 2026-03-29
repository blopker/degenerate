// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf {const WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksSelf(href: $href)'; } 
 }
