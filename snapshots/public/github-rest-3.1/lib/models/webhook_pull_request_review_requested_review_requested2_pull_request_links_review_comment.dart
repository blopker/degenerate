// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment {const WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksReviewComment(href: $href)'; } 
 }
