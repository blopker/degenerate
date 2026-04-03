// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue {const WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue({required this.href});

factory WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentDeletedPullRequestLinksIssue(href: $href)'; } 
 }
