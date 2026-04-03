// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestLockedPullRequestLinksCommits {const WebhookPullRequestLockedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestLockedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLockedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestLockedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestLinksCommits(href: $href)'; } 
 }
