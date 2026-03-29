// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestEnqueuedPullRequestLinksComments {const WebhookPullRequestEnqueuedPullRequestLinksComments({required this.href});

factory WebhookPullRequestEnqueuedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestEnqueuedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestEnqueuedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestLinksComments(href: $href)'; } 
 }
