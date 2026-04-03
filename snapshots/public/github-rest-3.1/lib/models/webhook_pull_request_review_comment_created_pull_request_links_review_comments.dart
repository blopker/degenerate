// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments {const WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestLinksReviewComments(href: $href)'; } 
 }
