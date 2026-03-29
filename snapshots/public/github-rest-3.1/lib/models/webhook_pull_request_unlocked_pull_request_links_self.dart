// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestUnlockedPullRequestLinksSelf {const WebhookPullRequestUnlockedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestUnlockedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlockedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlockedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestUnlockedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlockedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlockedPullRequestLinksSelf(href: $href)'; } 
 }
