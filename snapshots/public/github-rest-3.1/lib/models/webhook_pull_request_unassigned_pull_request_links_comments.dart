// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnassignedPullRequestLinksComments {const WebhookPullRequestUnassignedPullRequestLinksComments({required this.href});

factory WebhookPullRequestUnassignedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassignedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnassignedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestUnassignedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassignedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestLinksComments(href: $href)'; } 
 }
