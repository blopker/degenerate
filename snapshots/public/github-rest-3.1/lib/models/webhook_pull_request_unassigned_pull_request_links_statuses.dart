// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnassignedPullRequestLinksStatuses {const WebhookPullRequestUnassignedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestUnassignedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassignedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnassignedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestUnassignedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassignedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestLinksStatuses(href: $href)'; } 
 }
