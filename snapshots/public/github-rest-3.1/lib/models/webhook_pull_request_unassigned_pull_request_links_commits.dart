// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestUnassignedPullRequestLinksCommits {const WebhookPullRequestUnassignedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestUnassignedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassignedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnassignedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestUnassignedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassignedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestLinksCommits(href: $href)'; } 
 }
