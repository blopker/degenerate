// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewSubmittedPullRequestLinksComments {const WebhookPullRequestReviewSubmittedPullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewSubmittedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewSubmittedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewSubmittedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewSubmittedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewSubmittedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestLinksComments(href: $href)'; } 
 }
