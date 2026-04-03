// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'team13.dart';import 'user12.dart';import 'webhook_pull_request_review_dismissed_pull_request_assignee.dart';import 'webhook_pull_request_review_dismissed_pull_request_assignees.dart';import 'webhook_pull_request_review_dismissed_pull_request_auto_merge.dart';import 'webhook_pull_request_review_dismissed_pull_request_base.dart';import 'webhook_pull_request_review_dismissed_pull_request_head.dart';import 'webhook_pull_request_review_dismissed_pull_request_labels.dart';import 'webhook_pull_request_review_dismissed_pull_request_links.dart';import 'webhook_pull_request_review_dismissed_pull_request_milestone.dart';import 'webhook_pull_request_review_dismissed_pull_request_requested_reviewers.dart';import 'webhook_pull_request_review_dismissed_pull_request_requested_teams.dart';import 'webhook_pull_request_review_dismissed_pull_request_user.dart';@immutable final class WebhookPullRequestReviewDismissedPullRequestActiveLockReason {const WebhookPullRequestReviewDismissedPullRequestActiveLockReason._(this.value);

factory WebhookPullRequestReviewDismissedPullRequestActiveLockReason.fromJson(String json) { return switch (json) {
  'resolved' => resolved,
  'off-topic' => offTopic,
  'too heated' => tooHeated,
  'spam' => spam,
  'null' => $null,
  _ => WebhookPullRequestReviewDismissedPullRequestActiveLockReason._(json),
}; }

static const WebhookPullRequestReviewDismissedPullRequestActiveLockReason resolved = WebhookPullRequestReviewDismissedPullRequestActiveLockReason._('resolved');

static const WebhookPullRequestReviewDismissedPullRequestActiveLockReason offTopic = WebhookPullRequestReviewDismissedPullRequestActiveLockReason._('off-topic');

static const WebhookPullRequestReviewDismissedPullRequestActiveLockReason tooHeated = WebhookPullRequestReviewDismissedPullRequestActiveLockReason._('too heated');

static const WebhookPullRequestReviewDismissedPullRequestActiveLockReason spam = WebhookPullRequestReviewDismissedPullRequestActiveLockReason._('spam');

static const WebhookPullRequestReviewDismissedPullRequestActiveLockReason $null = WebhookPullRequestReviewDismissedPullRequestActiveLockReason._('null');

static const List<WebhookPullRequestReviewDismissedPullRequestActiveLockReason> values = [resolved, offTopic, tooHeated, spam, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewDismissedPullRequestActiveLockReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestActiveLockReason($value)'; } 
 }
/// How the author is associated with the repository.
@immutable final class WebhookPullRequestReviewDismissedPullRequestAuthorAssociation {const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._(this.value);

factory WebhookPullRequestReviewDismissedPullRequestAuthorAssociation.fromJson(String json) { return switch (json) {
  'COLLABORATOR' => collaborator,
  'CONTRIBUTOR' => contributor,
  'FIRST_TIMER' => firstTimer,
  'FIRST_TIME_CONTRIBUTOR' => firstTimeContributor,
  'MANNEQUIN' => mannequin,
  'MEMBER' => member,
  'NONE' => none,
  'OWNER' => owner,
  _ => WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._(json),
}; }

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation collaborator = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('COLLABORATOR');

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation contributor = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('CONTRIBUTOR');

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation firstTimer = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('FIRST_TIMER');

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation firstTimeContributor = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('FIRST_TIME_CONTRIBUTOR');

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation mannequin = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('MANNEQUIN');

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation member = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('MEMBER');

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation none = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('NONE');

static const WebhookPullRequestReviewDismissedPullRequestAuthorAssociation owner = WebhookPullRequestReviewDismissedPullRequestAuthorAssociation._('OWNER');

static const List<WebhookPullRequestReviewDismissedPullRequestAuthorAssociation> values = [collaborator, contributor, firstTimer, firstTimeContributor, mannequin, member, none, owner];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewDismissedPullRequestAuthorAssociation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestAuthorAssociation($value)'; } 
 }
@immutable final class WebhookPullRequestReviewDismissedPullRequestState {const WebhookPullRequestReviewDismissedPullRequestState._(this.value);

factory WebhookPullRequestReviewDismissedPullRequestState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => WebhookPullRequestReviewDismissedPullRequestState._(json),
}; }

static const WebhookPullRequestReviewDismissedPullRequestState open = WebhookPullRequestReviewDismissedPullRequestState._('open');

static const WebhookPullRequestReviewDismissedPullRequestState closed = WebhookPullRequestReviewDismissedPullRequestState._('closed');

static const List<WebhookPullRequestReviewDismissedPullRequestState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewDismissedPullRequestState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestState($value)'; } 
 }
@immutable final class WebhookPullRequestReviewDismissedPullRequest {const WebhookPullRequestReviewDismissedPullRequest({required this.createdAt, required this.activeLockReason, required this.assignee, required this.assignees, required this.authorAssociation, required this.autoMerge, required this.base, required this.body, required this.closedAt, required this.commentsUrl, required this.commitsUrl, required this.links, required this.diffUrl, required this.draft, required this.head, required this.htmlUrl, required this.id, required this.issueUrl, required this.labels, required this.locked, required this.mergeCommitSha, required this.mergedAt, required this.milestone, required this.user, required this.number, required this.patchUrl, required this.requestedReviewers, required this.requestedTeams, required this.reviewCommentUrl, required this.reviewCommentsUrl, required this.state, required this.statusesUrl, required this.title, required this.updatedAt, required this.url, required this.nodeId, });

factory WebhookPullRequestReviewDismissedPullRequest.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedPullRequest(
  links: WebhookPullRequestReviewDismissedPullRequestLinks.fromJson(json['_links'] as Map<String, dynamic>),
  activeLockReason: json['active_lock_reason'] != null ? WebhookPullRequestReviewDismissedPullRequestActiveLockReason.fromJson(json['active_lock_reason'] as String) : null,
  assignee: json['assignee'] != null ? WebhookPullRequestReviewDismissedPullRequestAssignee.fromJson(json['assignee'] as Map<String, dynamic>) : null,
  assignees: (json['assignees'] as List<dynamic>).map((e) => WebhookPullRequestReviewDismissedPullRequestAssignees.fromJson(e as Map<String, dynamic>)).toList(),
  authorAssociation: WebhookPullRequestReviewDismissedPullRequestAuthorAssociation.fromJson(json['author_association'] as String),
  autoMerge: json['auto_merge'] != null ? WebhookPullRequestReviewDismissedPullRequestAutoMerge.fromJson(json['auto_merge'] as Map<String, dynamic>) : null,
  base: WebhookPullRequestReviewDismissedPullRequestBase.fromJson(json['base'] as Map<String, dynamic>),
  body: json['body'] as String?,
  closedAt: json['closed_at'] as String?,
  commentsUrl: Uri.parse(json['comments_url'] as String),
  commitsUrl: Uri.parse(json['commits_url'] as String),
  createdAt: json['created_at'] as String,
  diffUrl: Uri.parse(json['diff_url'] as String),
  draft: json['draft'] as bool,
  head: WebhookPullRequestReviewDismissedPullRequestHead.fromJson(json['head'] as Map<String, dynamic>),
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  issueUrl: Uri.parse(json['issue_url'] as String),
  labels: (json['labels'] as List<dynamic>).map((e) => WebhookPullRequestReviewDismissedPullRequestLabels.fromJson(e as Map<String, dynamic>)).toList(),
  locked: json['locked'] as bool,
  mergeCommitSha: json['merge_commit_sha'] as String?,
  mergedAt: json['merged_at'] as String?,
  milestone: json['milestone'] != null ? WebhookPullRequestReviewDismissedPullRequestMilestone.fromJson(json['milestone'] as Map<String, dynamic>) : null,
  nodeId: json['node_id'] as String,
  number: (json['number'] as num).toInt(),
  patchUrl: Uri.parse(json['patch_url'] as String),
  requestedReviewers: (json['requested_reviewers'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => User12.fromJson(v as Map<String, dynamic>), fromB: (v) => Team13.fromJson(v as Map<String, dynamic>),)).toList(),
  requestedTeams: (json['requested_teams'] as List<dynamic>).map((e) => WebhookPullRequestReviewDismissedPullRequestRequestedTeams.fromJson(e as Map<String, dynamic>)).toList(),
  reviewCommentUrl: json['review_comment_url'] as String,
  reviewCommentsUrl: Uri.parse(json['review_comments_url'] as String),
  state: WebhookPullRequestReviewDismissedPullRequestState.fromJson(json['state'] as String),
  statusesUrl: Uri.parse(json['statuses_url'] as String),
  title: json['title'] as String,
  updatedAt: json['updated_at'] as String,
  url: Uri.parse(json['url'] as String),
  user: json['user'] != null ? WebhookPullRequestReviewDismissedPullRequestUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final WebhookPullRequestReviewDismissedPullRequestLinks links;

final WebhookPullRequestReviewDismissedPullRequestActiveLockReason? activeLockReason;

final WebhookPullRequestReviewDismissedPullRequestAssignee? assignee;

final List<WebhookPullRequestReviewDismissedPullRequestAssignees?> assignees;

/// How the author is associated with the repository.
final WebhookPullRequestReviewDismissedPullRequestAuthorAssociation authorAssociation;

/// The status of auto merging a pull request.
final WebhookPullRequestReviewDismissedPullRequestAutoMerge? autoMerge;

final WebhookPullRequestReviewDismissedPullRequestBase base;

final String? body;

final String? closedAt;

final Uri commentsUrl;

final Uri commitsUrl;

final String createdAt;

final Uri diffUrl;

final bool draft;

final WebhookPullRequestReviewDismissedPullRequestHead head;

final Uri htmlUrl;

final int id;

final Uri issueUrl;

final List<WebhookPullRequestReviewDismissedPullRequestLabels> labels;

final bool locked;

final String? mergeCommitSha;

final String? mergedAt;

/// A collection of related issues and pull requests.
final WebhookPullRequestReviewDismissedPullRequestMilestone? milestone;

final String nodeId;

final int number;

final Uri patchUrl;

final List<WebhookPullRequestReviewDismissedPullRequestRequestedReviewers> requestedReviewers;

final List<WebhookPullRequestReviewDismissedPullRequestRequestedTeams> requestedTeams;

final String reviewCommentUrl;

final Uri reviewCommentsUrl;

final WebhookPullRequestReviewDismissedPullRequestState state;

final Uri statusesUrl;

final String title;

final String updatedAt;

final Uri url;

final WebhookPullRequestReviewDismissedPullRequestUser? user;

Map<String, dynamic> toJson() { return {
  '_links': links.toJson(),
  if (activeLockReason != null) 'active_lock_reason': activeLockReason?.toJson(),
  if (assignee != null) 'assignee': assignee?.toJson(),
  'assignees': assignees.map((e) => e?.toJson()).toList(),
  'author_association': authorAssociation.toJson(),
  if (autoMerge != null) 'auto_merge': autoMerge?.toJson(),
  'base': base.toJson(),
  'body': ?body,
  'closed_at': ?closedAt,
  'comments_url': commentsUrl.toString(),
  'commits_url': commitsUrl.toString(),
  'created_at': createdAt,
  'diff_url': diffUrl.toString(),
  'draft': draft,
  'head': head.toJson(),
  'html_url': htmlUrl.toString(),
  'id': id,
  'issue_url': issueUrl.toString(),
  'labels': labels.map((e) => e.toJson()).toList(),
  'locked': locked,
  'merge_commit_sha': ?mergeCommitSha,
  'merged_at': ?mergedAt,
  if (milestone != null) 'milestone': milestone?.toJson(),
  'node_id': nodeId,
  'number': number,
  'patch_url': patchUrl.toString(),
  'requested_reviewers': requestedReviewers.map((e) => e.toJson()).toList(),
  'requested_teams': requestedTeams.map((e) => e.toJson()).toList(),
  'review_comment_url': reviewCommentUrl,
  'review_comments_url': reviewCommentsUrl.toString(),
  'state': state.toJson(),
  'statuses_url': statusesUrl.toString(),
  'title': title,
  'updated_at': updatedAt,
  'url': url.toString(),
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('_links') &&
      json.containsKey('active_lock_reason') &&
      json.containsKey('assignee') &&
      json.containsKey('assignees') &&
      json.containsKey('author_association') &&
      json.containsKey('auto_merge') &&
      json.containsKey('base') &&
      json.containsKey('body') && json['body'] is String &&
      json.containsKey('closed_at') && json['closed_at'] is String &&
      json.containsKey('comments_url') && json['comments_url'] is String &&
      json.containsKey('commits_url') && json['commits_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('diff_url') && json['diff_url'] is String &&
      json.containsKey('draft') && json['draft'] is bool &&
      json.containsKey('head') &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('issue_url') && json['issue_url'] is String &&
      json.containsKey('labels') &&
      json.containsKey('locked') && json['locked'] is bool &&
      json.containsKey('merge_commit_sha') && json['merge_commit_sha'] is String &&
      json.containsKey('merged_at') && json['merged_at'] is String &&
      json.containsKey('milestone') &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('patch_url') && json['patch_url'] is String &&
      json.containsKey('requested_reviewers') &&
      json.containsKey('requested_teams') &&
      json.containsKey('review_comment_url') && json['review_comment_url'] is String &&
      json.containsKey('review_comments_url') && json['review_comments_url'] is String &&
      json.containsKey('state') &&
      json.containsKey('statuses_url') && json['statuses_url'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('user'); } 
WebhookPullRequestReviewDismissedPullRequest copyWith({WebhookPullRequestReviewDismissedPullRequestLinks? links, WebhookPullRequestReviewDismissedPullRequestActiveLockReason? Function()? activeLockReason, WebhookPullRequestReviewDismissedPullRequestAssignee? Function()? assignee, List<WebhookPullRequestReviewDismissedPullRequestAssignees?>? assignees, WebhookPullRequestReviewDismissedPullRequestAuthorAssociation? authorAssociation, WebhookPullRequestReviewDismissedPullRequestAutoMerge? Function()? autoMerge, WebhookPullRequestReviewDismissedPullRequestBase? base, String? Function()? body, String? Function()? closedAt, Uri? commentsUrl, Uri? commitsUrl, String? createdAt, Uri? diffUrl, bool? draft, WebhookPullRequestReviewDismissedPullRequestHead? head, Uri? htmlUrl, int? id, Uri? issueUrl, List<WebhookPullRequestReviewDismissedPullRequestLabels>? labels, bool? locked, String? Function()? mergeCommitSha, String? Function()? mergedAt, WebhookPullRequestReviewDismissedPullRequestMilestone? Function()? milestone, String? nodeId, int? number, Uri? patchUrl, List<WebhookPullRequestReviewDismissedPullRequestRequestedReviewers>? requestedReviewers, List<WebhookPullRequestReviewDismissedPullRequestRequestedTeams>? requestedTeams, String? reviewCommentUrl, Uri? reviewCommentsUrl, WebhookPullRequestReviewDismissedPullRequestState? state, Uri? statusesUrl, String? title, String? updatedAt, Uri? url, WebhookPullRequestReviewDismissedPullRequestUser? Function()? user, }) { return WebhookPullRequestReviewDismissedPullRequest(
  links: links ?? this.links,
  activeLockReason: activeLockReason != null ? activeLockReason() : this.activeLockReason,
  assignee: assignee != null ? assignee() : this.assignee,
  assignees: assignees ?? this.assignees,
  authorAssociation: authorAssociation ?? this.authorAssociation,
  autoMerge: autoMerge != null ? autoMerge() : this.autoMerge,
  base: base ?? this.base,
  body: body != null ? body() : this.body,
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  commentsUrl: commentsUrl ?? this.commentsUrl,
  commitsUrl: commitsUrl ?? this.commitsUrl,
  createdAt: createdAt ?? this.createdAt,
  diffUrl: diffUrl ?? this.diffUrl,
  draft: draft ?? this.draft,
  head: head ?? this.head,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  issueUrl: issueUrl ?? this.issueUrl,
  labels: labels ?? this.labels,
  locked: locked ?? this.locked,
  mergeCommitSha: mergeCommitSha != null ? mergeCommitSha() : this.mergeCommitSha,
  mergedAt: mergedAt != null ? mergedAt() : this.mergedAt,
  milestone: milestone != null ? milestone() : this.milestone,
  nodeId: nodeId ?? this.nodeId,
  number: number ?? this.number,
  patchUrl: patchUrl ?? this.patchUrl,
  requestedReviewers: requestedReviewers ?? this.requestedReviewers,
  requestedTeams: requestedTeams ?? this.requestedTeams,
  reviewCommentUrl: reviewCommentUrl ?? this.reviewCommentUrl,
  reviewCommentsUrl: reviewCommentsUrl ?? this.reviewCommentsUrl,
  state: state ?? this.state,
  statusesUrl: statusesUrl ?? this.statusesUrl,
  title: title ?? this.title,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedPullRequest &&
          links == other.links &&
          activeLockReason == other.activeLockReason &&
          assignee == other.assignee &&
          listEquals(assignees, other.assignees) &&
          authorAssociation == other.authorAssociation &&
          autoMerge == other.autoMerge &&
          base == other.base &&
          body == other.body &&
          closedAt == other.closedAt &&
          commentsUrl == other.commentsUrl &&
          commitsUrl == other.commitsUrl &&
          createdAt == other.createdAt &&
          diffUrl == other.diffUrl &&
          draft == other.draft &&
          head == other.head &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          issueUrl == other.issueUrl &&
          listEquals(labels, other.labels) &&
          locked == other.locked &&
          mergeCommitSha == other.mergeCommitSha &&
          mergedAt == other.mergedAt &&
          milestone == other.milestone &&
          nodeId == other.nodeId &&
          number == other.number &&
          patchUrl == other.patchUrl &&
          listEquals(requestedReviewers, other.requestedReviewers) &&
          listEquals(requestedTeams, other.requestedTeams) &&
          reviewCommentUrl == other.reviewCommentUrl &&
          reviewCommentsUrl == other.reviewCommentsUrl &&
          state == other.state &&
          statusesUrl == other.statusesUrl &&
          title == other.title &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          user == other.user; } 
@override int get hashCode { return Object.hashAll([links, activeLockReason, assignee, Object.hashAll(assignees), authorAssociation, autoMerge, base, body, closedAt, commentsUrl, commitsUrl, createdAt, diffUrl, draft, head, htmlUrl, id, issueUrl, Object.hashAll(labels), locked, mergeCommitSha, mergedAt, milestone, nodeId, number, patchUrl, Object.hashAll(requestedReviewers), Object.hashAll(requestedTeams), reviewCommentUrl, reviewCommentsUrl, state, statusesUrl, title, updatedAt, url, user]); } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequest(links: $links, activeLockReason: $activeLockReason, assignee: $assignee, assignees: $assignees, authorAssociation: $authorAssociation, autoMerge: $autoMerge, base: $base, body: $body, closedAt: $closedAt, commentsUrl: $commentsUrl, commitsUrl: $commitsUrl, createdAt: $createdAt, diffUrl: $diffUrl, draft: $draft, head: $head, htmlUrl: $htmlUrl, id: $id, issueUrl: $issueUrl, labels: $labels, locked: $locked, mergeCommitSha: $mergeCommitSha, mergedAt: $mergedAt, milestone: $milestone, nodeId: $nodeId, number: $number, patchUrl: $patchUrl, requestedReviewers: $requestedReviewers, requestedTeams: $requestedTeams, reviewCommentUrl: $reviewCommentUrl, reviewCommentsUrl: $reviewCommentsUrl, state: $state, statusesUrl: $statusesUrl, title: $title, updatedAt: $updatedAt, url: $url, user: $user)'; } 
 }
