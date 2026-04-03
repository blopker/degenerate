// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestEnqueuedPullRequestLinksSelf {const WebhookPullRequestEnqueuedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestEnqueuedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestEnqueuedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestEnqueuedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestLinksSelf(href: $href)'; } 
 }
