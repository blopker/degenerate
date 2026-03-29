// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestLockedPullRequestLinksIssue {const WebhookPullRequestLockedPullRequestLinksIssue({required this.href});

factory WebhookPullRequestLockedPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLockedPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestLockedPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestLinksIssue(href: $href)'; } 
 }
