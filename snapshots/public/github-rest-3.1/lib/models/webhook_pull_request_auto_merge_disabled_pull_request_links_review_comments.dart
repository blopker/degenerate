// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments {const WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeDisabledPullRequestLinksReviewComments(href: $href)'; } 
 }
