// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnassignedPullRequestLinksHtml {const WebhookPullRequestUnassignedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestUnassignedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassignedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnassignedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestUnassignedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassignedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestLinksHtml(href: $href)'; } 
 }
