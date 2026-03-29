// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewEditedPullRequestLinksHtml {const WebhookPullRequestReviewEditedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestReviewEditedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewEditedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewEditedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewEditedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewEditedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewEditedPullRequestLinksHtml(href: $href)'; } 
 }
