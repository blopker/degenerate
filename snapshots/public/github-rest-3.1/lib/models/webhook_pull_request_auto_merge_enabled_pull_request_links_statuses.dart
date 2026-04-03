// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses {const WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses(href: $href)'; } 
 }
