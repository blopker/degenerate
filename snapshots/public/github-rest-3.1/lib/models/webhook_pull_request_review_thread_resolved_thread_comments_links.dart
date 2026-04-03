// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_thread_resolved_thread_comments_links_html.dart';import 'webhook_pull_request_review_thread_resolved_thread_comments_links_pull_request.dart';import 'webhook_pull_request_review_thread_resolved_thread_comments_links_self.dart';@immutable final class WebhookPullRequestReviewThreadResolvedThreadCommentsLinks {const WebhookPullRequestReviewThreadResolvedThreadCommentsLinks({required this.html, required this.pullRequest, required this.self, });

factory WebhookPullRequestReviewThreadResolvedThreadCommentsLinks.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadResolvedThreadCommentsLinks(
  html: WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml.fromJson(json['html'] as Map<String, dynamic>),
  pullRequest: WebhookPullRequestReviewThreadResolvedThreadCommentsLinksPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  self: WebhookPullRequestReviewThreadResolvedThreadCommentsLinksSelf.fromJson(json['self'] as Map<String, dynamic>),
); }

final WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml html;

final WebhookPullRequestReviewThreadResolvedThreadCommentsLinksPullRequest pullRequest;

final WebhookPullRequestReviewThreadResolvedThreadCommentsLinksSelf self;

Map<String, dynamic> toJson() { return {
  'html': html.toJson(),
  'pull_request': pullRequest.toJson(),
  'self': self.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('html') &&
      json.containsKey('pull_request') &&
      json.containsKey('self'); } 
WebhookPullRequestReviewThreadResolvedThreadCommentsLinks copyWith({WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml? html, WebhookPullRequestReviewThreadResolvedThreadCommentsLinksPullRequest? pullRequest, WebhookPullRequestReviewThreadResolvedThreadCommentsLinksSelf? self, }) { return WebhookPullRequestReviewThreadResolvedThreadCommentsLinks(
  html: html ?? this.html,
  pullRequest: pullRequest ?? this.pullRequest,
  self: self ?? this.self,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadResolvedThreadCommentsLinks &&
          html == other.html &&
          pullRequest == other.pullRequest &&
          self == other.self; } 
@override int get hashCode { return Object.hash(html, pullRequest, self); } 
@override String toString() { return 'WebhookPullRequestReviewThreadResolvedThreadCommentsLinks(html: $html, pullRequest: $pullRequest, self: $self)'; } 
 }
