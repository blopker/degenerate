// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment {const WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment(href: $href)'; } 
 }
