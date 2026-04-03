// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAssignedPullRequestLinksHtml {const WebhookPullRequestAssignedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestAssignedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAssignedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAssignedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestAssignedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAssignedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAssignedPullRequestLinksHtml(href: $href)'; } 
 }
