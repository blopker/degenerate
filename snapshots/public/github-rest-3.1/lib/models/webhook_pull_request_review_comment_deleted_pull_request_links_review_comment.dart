// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment {const WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentDeletedPullRequestLinksReviewComment(href: $href)'; } 
 }
