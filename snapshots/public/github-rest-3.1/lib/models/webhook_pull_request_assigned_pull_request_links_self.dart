// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestAssignedPullRequestLinksSelf {const WebhookPullRequestAssignedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestAssignedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAssignedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAssignedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestAssignedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAssignedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAssignedPullRequestLinksSelf(href: $href)'; } 
 }
