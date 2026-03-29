// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestLockedPullRequestLinksStatuses {const WebhookPullRequestLockedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestLockedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLockedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestLockedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestLinksStatuses(href: $href)'; } 
 }
