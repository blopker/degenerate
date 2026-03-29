// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestLockedPullRequestLinksSelf {const WebhookPullRequestLockedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestLockedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLockedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestLockedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestLinksSelf(href: $href)'; } 
 }
