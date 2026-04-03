// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestEnqueuedPullRequestLinksStatuses {const WebhookPullRequestEnqueuedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestEnqueuedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestEnqueuedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestEnqueuedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestLinksStatuses(href: $href)'; } 
 }
