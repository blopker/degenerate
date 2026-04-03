// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits {const WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits({required this.href});

factory WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeDisabledPullRequestLinksCommits(href: $href)'; } 
 }
