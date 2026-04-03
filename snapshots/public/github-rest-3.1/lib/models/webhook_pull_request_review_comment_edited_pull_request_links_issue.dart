// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentEditedPullRequestLinksIssue {const WebhookPullRequestReviewCommentEditedPullRequestLinksIssue({required this.href});

factory WebhookPullRequestReviewCommentEditedPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentEditedPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentEditedPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestReviewCommentEditedPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentEditedPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentEditedPullRequestLinksIssue(href: $href)'; } 
 }
