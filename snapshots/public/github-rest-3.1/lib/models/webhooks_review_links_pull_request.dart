// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhooksReviewLinksPullRequest {const WebhooksReviewLinksPullRequest({required this.href});

factory WebhooksReviewLinksPullRequest.fromJson(Map<String, dynamic> json) { return WebhooksReviewLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksReviewLinksPullRequest copyWith({String? href}) { return WebhooksReviewLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksReviewLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksReviewLinksPullRequest(href: $href)'; } 
 }
