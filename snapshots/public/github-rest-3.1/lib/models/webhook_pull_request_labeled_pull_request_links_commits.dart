// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestLabeledPullRequestLinksCommits {const WebhookPullRequestLabeledPullRequestLinksCommits({required this.href});

factory WebhookPullRequestLabeledPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLabeledPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLabeledPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestLabeledPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLabeledPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLabeledPullRequestLinksCommits(href: $href)'; } 
 }
