// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments {const WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments(href: $href)'; } 
 }
