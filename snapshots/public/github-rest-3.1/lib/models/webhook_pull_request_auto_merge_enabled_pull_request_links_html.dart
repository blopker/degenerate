// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml {const WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml({required this.href});

factory WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml(href: $href)'; } 
 }
