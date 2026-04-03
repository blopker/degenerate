// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentEditedPullRequestLinksCommits {const WebhookPullRequestReviewCommentEditedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewCommentEditedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentEditedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentEditedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewCommentEditedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentEditedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentEditedPullRequestLinksCommits(href: $href)'; } 
 }
