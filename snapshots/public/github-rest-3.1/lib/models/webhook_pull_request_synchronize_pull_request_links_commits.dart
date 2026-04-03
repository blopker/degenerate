// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestSynchronizePullRequestLinksCommits {const WebhookPullRequestSynchronizePullRequestLinksCommits({required this.href});

factory WebhookPullRequestSynchronizePullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestSynchronizePullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestSynchronizePullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestSynchronizePullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestSynchronizePullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestSynchronizePullRequestLinksCommits(href: $href)'; } 
 }
