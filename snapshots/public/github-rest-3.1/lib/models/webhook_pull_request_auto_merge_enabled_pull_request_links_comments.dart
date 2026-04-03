// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAutoMergeEnabledPullRequestLinksComments {const WebhookPullRequestAutoMergeEnabledPullRequestLinksComments({required this.href});

factory WebhookPullRequestAutoMergeEnabledPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeEnabledPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeEnabledPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeEnabledPullRequestLinksComments(href: $href)'; } 
 }
