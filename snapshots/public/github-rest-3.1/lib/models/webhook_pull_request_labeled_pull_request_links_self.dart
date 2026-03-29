// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestLabeledPullRequestLinksSelf {const WebhookPullRequestLabeledPullRequestLinksSelf({required this.href});

factory WebhookPullRequestLabeledPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLabeledPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLabeledPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestLabeledPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLabeledPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLabeledPullRequestLinksSelf(href: $href)'; } 
 }
