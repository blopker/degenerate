// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestUnlabeledPullRequestLinksIssue {const WebhookPullRequestUnlabeledPullRequestLinksIssue({required this.href});

factory WebhookPullRequestUnlabeledPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlabeledPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlabeledPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestUnlabeledPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlabeledPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlabeledPullRequestLinksIssue(href: $href)'; } 
 }
