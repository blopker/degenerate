// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestUnlabeledPullRequestLinksHtml {const WebhookPullRequestUnlabeledPullRequestLinksHtml({required this.href});

factory WebhookPullRequestUnlabeledPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlabeledPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlabeledPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestUnlabeledPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlabeledPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlabeledPullRequestLinksHtml(href: $href)'; } 
 }
