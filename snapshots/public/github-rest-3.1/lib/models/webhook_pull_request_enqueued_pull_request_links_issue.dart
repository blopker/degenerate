// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestEnqueuedPullRequestLinksIssue {const WebhookPullRequestEnqueuedPullRequestLinksIssue({required this.href});

factory WebhookPullRequestEnqueuedPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestEnqueuedPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestEnqueuedPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestLinksIssue(href: $href)'; } 
 }
