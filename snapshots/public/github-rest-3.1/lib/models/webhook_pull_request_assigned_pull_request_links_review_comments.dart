// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestAssignedPullRequestLinksReviewComments {const WebhookPullRequestAssignedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestAssignedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAssignedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAssignedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestAssignedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAssignedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAssignedPullRequestLinksReviewComments(href: $href)'; } 
 }
