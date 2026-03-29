// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestLabeledPullRequestLinksIssue {const WebhookPullRequestLabeledPullRequestLinksIssue({required this.href});

factory WebhookPullRequestLabeledPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLabeledPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLabeledPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestLabeledPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLabeledPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLabeledPullRequestLinksIssue(href: $href)'; } 
 }
