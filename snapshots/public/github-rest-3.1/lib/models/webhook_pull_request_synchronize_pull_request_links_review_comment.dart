// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestSynchronizePullRequestLinksReviewComment {const WebhookPullRequestSynchronizePullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestSynchronizePullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestSynchronizePullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestSynchronizePullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestSynchronizePullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestSynchronizePullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestSynchronizePullRequestLinksReviewComment(href: $href)'; } 
 }
