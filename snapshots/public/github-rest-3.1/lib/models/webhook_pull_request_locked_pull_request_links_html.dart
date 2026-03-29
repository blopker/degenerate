// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestLockedPullRequestLinksHtml {const WebhookPullRequestLockedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestLockedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLockedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestLockedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestLinksHtml(href: $href)'; } 
 }
