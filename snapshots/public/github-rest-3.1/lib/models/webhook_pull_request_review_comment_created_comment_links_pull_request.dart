// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest {const WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest({required this.href});

factory WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedCommentLinksPullRequest(href: $href)'; } 
 }
