// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_auto_merge_enabled_pull_request_links_comments.dart';import 'webhook_pull_request_auto_merge_enabled_pull_request_links_commits.dart';import 'webhook_pull_request_auto_merge_enabled_pull_request_links_html.dart';import 'webhook_pull_request_auto_merge_enabled_pull_request_links_issue.dart';import 'webhook_pull_request_auto_merge_enabled_pull_request_links_review_comment.dart';import 'webhook_pull_request_auto_merge_enabled_pull_request_links_review_comments.dart';import 'webhook_pull_request_auto_merge_enabled_pull_request_links_self.dart';import 'webhook_pull_request_auto_merge_enabled_pull_request_links_statuses.dart';final class WebhookPullRequestAutoMergeEnabledPullRequestLinks {const WebhookPullRequestAutoMergeEnabledPullRequestLinks({required this.comments, required this.commits, required this.html, required this.issue, required this.reviewComment, required this.reviewComments, required this.self, required this.statuses, });

factory WebhookPullRequestAutoMergeEnabledPullRequestLinks.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeEnabledPullRequestLinks(
  comments: WebhookPullRequestAutoMergeEnabledPullRequestLinksComments.fromJson(json['comments'] as Map<String, dynamic>),
  commits: WebhookPullRequestAutoMergeEnabledPullRequestLinksCommits.fromJson(json['commits'] as Map<String, dynamic>),
  html: WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml.fromJson(json['html'] as Map<String, dynamic>),
  issue: WebhookPullRequestAutoMergeEnabledPullRequestLinksIssue.fromJson(json['issue'] as Map<String, dynamic>),
  reviewComment: WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComment.fromJson(json['review_comment'] as Map<String, dynamic>),
  reviewComments: WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments.fromJson(json['review_comments'] as Map<String, dynamic>),
  self: WebhookPullRequestAutoMergeEnabledPullRequestLinksSelf.fromJson(json['self'] as Map<String, dynamic>),
  statuses: WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses.fromJson(json['statuses'] as Map<String, dynamic>),
); }

final WebhookPullRequestAutoMergeEnabledPullRequestLinksComments comments;

final WebhookPullRequestAutoMergeEnabledPullRequestLinksCommits commits;

final WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml html;

final WebhookPullRequestAutoMergeEnabledPullRequestLinksIssue issue;

final WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComment reviewComment;

final WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments reviewComments;

final WebhookPullRequestAutoMergeEnabledPullRequestLinksSelf self;

final WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses statuses;

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
WebhookPullRequestAutoMergeEnabledPullRequestLinks copyWith({WebhookPullRequestAutoMergeEnabledPullRequestLinksComments? comments, WebhookPullRequestAutoMergeEnabledPullRequestLinksCommits? commits, WebhookPullRequestAutoMergeEnabledPullRequestLinksHtml? html, WebhookPullRequestAutoMergeEnabledPullRequestLinksIssue? issue, WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComment? reviewComment, WebhookPullRequestAutoMergeEnabledPullRequestLinksReviewComments? reviewComments, WebhookPullRequestAutoMergeEnabledPullRequestLinksSelf? self, WebhookPullRequestAutoMergeEnabledPullRequestLinksStatuses? statuses, }) { return WebhookPullRequestAutoMergeEnabledPullRequestLinks(
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
      other is WebhookPullRequestAutoMergeEnabledPullRequestLinks &&
          comments == other.comments &&
          commits == other.commits &&
          html == other.html &&
          issue == other.issue &&
          reviewComment == other.reviewComment &&
          reviewComments == other.reviewComments &&
          self == other.self &&
          statuses == other.statuses; } 
@override int get hashCode { return Object.hash(comments, commits, html, issue, reviewComment, reviewComments, self, statuses); } 
@override String toString() { return 'WebhookPullRequestAutoMergeEnabledPullRequestLinks(comments: $comments, commits: $commits, html: $html, issue: $issue, reviewComment: $reviewComment, reviewComments: $reviewComments, self: $self, statuses: $statuses)'; } 
 }
