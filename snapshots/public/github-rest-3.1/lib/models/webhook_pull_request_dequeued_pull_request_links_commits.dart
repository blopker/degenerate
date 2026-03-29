// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestDequeuedPullRequestLinksCommits {const WebhookPullRequestDequeuedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestDequeuedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestDequeuedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestDequeuedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestDequeuedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestDequeuedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestDequeuedPullRequestLinksCommits(href: $href)'; } 
 }
