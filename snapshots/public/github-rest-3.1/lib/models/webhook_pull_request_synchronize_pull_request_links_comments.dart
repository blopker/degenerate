// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestSynchronizePullRequestLinksComments {const WebhookPullRequestSynchronizePullRequestLinksComments({required this.href});

factory WebhookPullRequestSynchronizePullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestSynchronizePullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestSynchronizePullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestSynchronizePullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestSynchronizePullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestSynchronizePullRequestLinksComments(href: $href)'; } 
 }
