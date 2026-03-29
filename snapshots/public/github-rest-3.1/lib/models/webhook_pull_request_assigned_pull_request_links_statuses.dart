// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestAssignedPullRequestLinksStatuses {const WebhookPullRequestAssignedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestAssignedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAssignedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAssignedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestAssignedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAssignedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAssignedPullRequestLinksStatuses(href: $href)'; } 
 }
