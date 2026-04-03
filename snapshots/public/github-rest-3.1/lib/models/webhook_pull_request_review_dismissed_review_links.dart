// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_dismissed_review_links_html.dart';import 'webhook_pull_request_review_dismissed_review_links_pull_request.dart';@immutable final class WebhookPullRequestReviewDismissedReviewLinks {const WebhookPullRequestReviewDismissedReviewLinks({required this.html, required this.pullRequest, });

factory WebhookPullRequestReviewDismissedReviewLinks.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedReviewLinks(
  html: WebhookPullRequestReviewDismissedReviewLinksHtml.fromJson(json['html'] as Map<String, dynamic>),
  pullRequest: WebhookPullRequestReviewDismissedReviewLinksPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
); }

final WebhookPullRequestReviewDismissedReviewLinksHtml html;

final WebhookPullRequestReviewDismissedReviewLinksPullRequest pullRequest;

Map<String, dynamic> toJson() { return {
  'html': html.toJson(),
  'pull_request': pullRequest.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('html') &&
      json.containsKey('pull_request'); } 
WebhookPullRequestReviewDismissedReviewLinks copyWith({WebhookPullRequestReviewDismissedReviewLinksHtml? html, WebhookPullRequestReviewDismissedReviewLinksPullRequest? pullRequest, }) { return WebhookPullRequestReviewDismissedReviewLinks(
  html: html ?? this.html,
  pullRequest: pullRequest ?? this.pullRequest,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedReviewLinks &&
          html == other.html &&
          pullRequest == other.pullRequest; } 
@override int get hashCode { return Object.hash(html, pullRequest); } 
@override String toString() { return 'WebhookPullRequestReviewDismissedReviewLinks(html: $html, pullRequest: $pullRequest)'; } 
 }
