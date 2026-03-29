// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhooksPullRequest5LinksHtml {const WebhooksPullRequest5LinksHtml({required this.href});

factory WebhooksPullRequest5LinksHtml.fromJson(Map<String, dynamic> json) { return WebhooksPullRequest5LinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksPullRequest5LinksHtml copyWith({String? href}) { return WebhooksPullRequest5LinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksPullRequest5LinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksPullRequest5LinksHtml(href: $href)'; } 
 }
