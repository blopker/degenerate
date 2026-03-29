// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestUnlabeledPullRequestLinksReviewComments {const WebhookPullRequestUnlabeledPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestUnlabeledPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlabeledPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlabeledPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestUnlabeledPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlabeledPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlabeledPullRequestLinksReviewComments(href: $href)'; } 
 }
