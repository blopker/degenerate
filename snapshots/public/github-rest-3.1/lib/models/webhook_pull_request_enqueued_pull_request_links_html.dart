// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestEnqueuedPullRequestLinksHtml {const WebhookPullRequestEnqueuedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestEnqueuedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestEnqueuedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestEnqueuedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestLinksHtml(href: $href)'; } 
 }
