// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestDequeuedPullRequestLinksComments {const WebhookPullRequestDequeuedPullRequestLinksComments({required this.href});

factory WebhookPullRequestDequeuedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestDequeuedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestDequeuedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestDequeuedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestDequeuedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestDequeuedPullRequestLinksComments(href: $href)'; } 
 }
