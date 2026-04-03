// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits {const WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestLinksCommits(href: $href)'; } 
 }
