// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_comments.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_commits.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_html.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_issue.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_review_comment.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_review_comments.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_self.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_links_statuses.dart';final class WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks {const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks({required this.comments, required this.commits, required this.html, required this.issue, required this.reviewComment, required this.reviewComments, required this.self, required this.statuses, });

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks(
  comments: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments.fromJson(json['comments'] as Map<String, dynamic>),
  commits: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksCommits.fromJson(json['commits'] as Map<String, dynamic>),
  html: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksHtml.fromJson(json['html'] as Map<String, dynamic>),
  issue: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue.fromJson(json['issue'] as Map<String, dynamic>),
  reviewComment: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment.fromJson(json['review_comment'] as Map<String, dynamic>),
  reviewComments: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComments.fromJson(json['review_comments'] as Map<String, dynamic>),
  self: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksSelf.fromJson(json['self'] as Map<String, dynamic>),
  statuses: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses.fromJson(json['statuses'] as Map<String, dynamic>),
); }

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments comments;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksCommits commits;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksHtml html;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue issue;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment reviewComment;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComments reviewComments;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksSelf self;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses statuses;

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
WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks copyWith({WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksComments? comments, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksCommits? commits, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksHtml? html, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksIssue? issue, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComment? reviewComment, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksReviewComments? reviewComments, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksSelf? self, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses? statuses, }) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks(
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
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks &&
          comments == other.comments &&
          commits == other.commits &&
          html == other.html &&
          issue == other.issue &&
          reviewComment == other.reviewComment &&
          reviewComments == other.reviewComments &&
          self == other.self &&
          statuses == other.statuses; } 
@override int get hashCode { return Object.hash(comments, commits, html, issue, reviewComment, reviewComments, self, statuses); } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinks(comments: $comments, commits: $commits, html: $html, issue: $issue, reviewComment: $reviewComment, reviewComments: $reviewComments, self: $self, statuses: $statuses)'; } 
 }
