// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue {const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue(href: $href)'; } 
 }
