// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue {const WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequested2PullRequestLinksIssue(href: $href)'; } 
 }
