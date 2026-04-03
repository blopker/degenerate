// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestSynchronizePullRequestLinksHtml {const WebhookPullRequestSynchronizePullRequestLinksHtml({required this.href});

factory WebhookPullRequestSynchronizePullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestSynchronizePullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestSynchronizePullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestSynchronizePullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestSynchronizePullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestSynchronizePullRequestLinksHtml(href: $href)'; } 
 }
