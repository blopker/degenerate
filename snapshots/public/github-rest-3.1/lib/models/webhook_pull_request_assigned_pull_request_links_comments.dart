// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAssignedPullRequestLinksComments {const WebhookPullRequestAssignedPullRequestLinksComments({required this.href});

factory WebhookPullRequestAssignedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAssignedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAssignedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestAssignedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAssignedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAssignedPullRequestLinksComments(href: $href)'; } 
 }
