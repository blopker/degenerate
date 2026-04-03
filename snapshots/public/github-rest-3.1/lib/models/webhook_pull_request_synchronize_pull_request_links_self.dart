// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestSynchronizePullRequestLinksSelf {const WebhookPullRequestSynchronizePullRequestLinksSelf({required this.href});

factory WebhookPullRequestSynchronizePullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestSynchronizePullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestSynchronizePullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestSynchronizePullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestSynchronizePullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestSynchronizePullRequestLinksSelf(href: $href)'; } 
 }
