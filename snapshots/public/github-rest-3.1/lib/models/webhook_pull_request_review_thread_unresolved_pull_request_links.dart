// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_comments.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_commits.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_html.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_issue.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_review_comment.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_review_comments.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_self.dart';import 'webhook_pull_request_review_thread_unresolved_pull_request_links_statuses.dart';@immutable final class WebhookPullRequestReviewThreadUnresolvedPullRequestLinks {const WebhookPullRequestReviewThreadUnresolvedPullRequestLinks({required this.comments, required this.commits, required this.html, required this.issue, required this.reviewComment, required this.reviewComments, required this.self, required this.statuses, });

factory WebhookPullRequestReviewThreadUnresolvedPullRequestLinks.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinks(
  comments: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksComments.fromJson(json['comments'] as Map<String, dynamic>),
  commits: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits.fromJson(json['commits'] as Map<String, dynamic>),
  html: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksHtml.fromJson(json['html'] as Map<String, dynamic>),
  issue: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue.fromJson(json['issue'] as Map<String, dynamic>),
  reviewComment: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment.fromJson(json['review_comment'] as Map<String, dynamic>),
  reviewComments: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments.fromJson(json['review_comments'] as Map<String, dynamic>),
  self: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksSelf.fromJson(json['self'] as Map<String, dynamic>),
  statuses: WebhookPullRequestReviewThreadUnresolvedPullRequestLinksStatuses.fromJson(json['statuses'] as Map<String, dynamic>),
); }

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksComments comments;

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits commits;

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksHtml html;

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue issue;

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment reviewComment;

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments reviewComments;

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksSelf self;

final WebhookPullRequestReviewThreadUnresolvedPullRequestLinksStatuses statuses;

Map<String, dynamic> toJson() { return {
  'comments': comments.toJson(),
  'commits': commits.toJson(),
  'html': html.toJson(),
  'issue': issue.toJson(),
  'review_comment': reviewComment.toJson(),
  'review_comments': reviewComments.toJson(),
  'self': self.toJson(),
  'statuses': statuses.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('comments') &&
      json.containsKey('commits') &&
      json.containsKey('html') &&
      json.containsKey('issue') &&
      json.containsKey('review_comment') &&
      json.containsKey('review_comments') &&
      json.containsKey('self') &&
      json.containsKey('statuses'); } 
WebhookPullRequestReviewThreadUnresolvedPullRequestLinks copyWith({WebhookPullRequestReviewThreadUnresolvedPullRequestLinksComments? comments, WebhookPullRequestReviewThreadUnresolvedPullRequestLinksCommits? commits, WebhookPullRequestReviewThreadUnresolvedPullRequestLinksHtml? html, WebhookPullRequestReviewThreadUnresolvedPullRequestLinksIssue? issue, WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComment? reviewComment, WebhookPullRequestReviewThreadUnresolvedPullRequestLinksReviewComments? reviewComments, WebhookPullRequestReviewThreadUnresolvedPullRequestLinksSelf? self, WebhookPullRequestReviewThreadUnresolvedPullRequestLinksStatuses? statuses, }) { return WebhookPullRequestReviewThreadUnresolvedPullRequestLinks(
  comments: comments ?? this.comments,
  commits: commits ?? this.commits,
  html: html ?? this.html,
  issue: issue ?? this.issue,
  reviewComment: reviewComment ?? this.reviewComment,
  reviewComments: reviewComments ?? this.reviewComments,
  self: self ?? this.self,
  statuses: statuses ?? this.statuses,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedPullRequestLinks &&
          comments == other.comments &&
          commits == other.commits &&
          html == other.html &&
          issue == other.issue &&
          reviewComment == other.reviewComment &&
          reviewComments == other.reviewComments &&
          self == other.self &&
          statuses == other.statuses; } 
@override int get hashCode { return Object.hash(comments, commits, html, issue, reviewComment, reviewComments, self, statuses); } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedPullRequestLinks(comments: $comments, commits: $commits, html: $html, issue: $issue, reviewComment: $reviewComment, reviewComments: $reviewComments, self: $self, statuses: $statuses)'; } 
 }
