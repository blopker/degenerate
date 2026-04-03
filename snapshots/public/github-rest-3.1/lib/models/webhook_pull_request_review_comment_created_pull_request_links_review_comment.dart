// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment {const WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComment(href: $href)'; } 
 }
