// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewDismissedReviewLinksPullRequest {const WebhookPullRequestReviewDismissedReviewLinksPullRequest({required this.href});

factory WebhookPullRequestReviewDismissedReviewLinksPullRequest.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedReviewLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewDismissedReviewLinksPullRequest copyWith({String? href}) { return WebhookPullRequestReviewDismissedReviewLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedReviewLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedReviewLinksPullRequest(href: $href)'; } 
 }
