// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhooksPullRequest5LinksStatuses {const WebhooksPullRequest5LinksStatuses({required this.href});

factory WebhooksPullRequest5LinksStatuses.fromJson(Map<String, dynamic> json) { return WebhooksPullRequest5LinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksPullRequest5LinksStatuses copyWith({String? href}) { return WebhooksPullRequest5LinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksPullRequest5LinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksPullRequest5LinksStatuses(href: $href)'; } 
 }
