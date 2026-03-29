// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewDismissedPullRequestLinksSelf {const WebhookPullRequestReviewDismissedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestReviewDismissedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewDismissedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewDismissedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestLinksSelf(href: $href)'; } 
 }
