// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses {const WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeDisabledPullRequestLinksStatuses(href: $href)'; } 
 }
