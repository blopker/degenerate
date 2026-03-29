// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestLabeledPullRequestLinksStatuses {const WebhookPullRequestLabeledPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestLabeledPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLabeledPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLabeledPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestLabeledPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLabeledPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLabeledPullRequestLinksStatuses(href: $href)'; } 
 }
