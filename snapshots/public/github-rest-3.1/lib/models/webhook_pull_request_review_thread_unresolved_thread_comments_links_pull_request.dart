// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest {const WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest({required this.href});

factory WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest copyWith({String? href}) { return WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksPullRequest(href: $href)'; } 
 }
