// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'author_association.dart';import 'auto_merge.dart';import 'milestone.dart';import 'pull_request_webhook_base.dart';import 'pull_request_webhook_head.dart';import 'pull_request_webhook_labels.dart';import 'pull_request_webhook_links.dart';import 'simple_user.dart';import 'team_simple.dart';/// State of this Pull Request. Either `open` or `closed`.
final class PullRequestWebhookState {const PullRequestWebhookState._(this.value);

factory PullRequestWebhookState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => PullRequestWebhookState._(json),
}; }

static const PullRequestWebhookState open = PullRequestWebhookState._('open');

static const PullRequestWebhookState closed = PullRequestWebhookState._('closed');

static const List<PullRequestWebhookState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullRequestWebhookState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PullRequestWebhookState($value)'; } 
 }
/// The default value for a merge commit message.
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
final class PullRequestWebhookMergeCommitMessage {const PullRequestWebhookMergeCommitMessage._(this.value);

factory PullRequestWebhookMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'PR_TITLE' => prTitle,
  'BLANK' => blank,
  _ => PullRequestWebhookMergeCommitMessage._(json),
}; }

static const PullRequestWebhookMergeCommitMessage prBody = PullRequestWebhookMergeCommitMessage._('PR_BODY');

static const PullRequestWebhookMergeCommitMessage prTitle = PullRequestWebhookMergeCommitMessage._('PR_TITLE');

static const PullRequestWebhookMergeCommitMessage blank = PullRequestWebhookMergeCommitMessage._('BLANK');

static const List<PullRequestWebhookMergeCommitMessage> values = [prBody, prTitle, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullRequestWebhookMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PullRequestWebhookMergeCommitMessage($value)'; } 
 }
/// The default value for a merge commit title.
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., "Merge pull request #123 from branch-name").
final class PullRequestWebhookMergeCommitTitle {const PullRequestWebhookMergeCommitTitle._(this.value);

factory PullRequestWebhookMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'MERGE_MESSAGE' => mergeMessage,
  _ => PullRequestWebhookMergeCommitTitle._(json),
}; }

static const PullRequestWebhookMergeCommitTitle prTitle = PullRequestWebhookMergeCommitTitle._('PR_TITLE');

static const PullRequestWebhookMergeCommitTitle mergeMessage = PullRequestWebhookMergeCommitTitle._('MERGE_MESSAGE');

static const List<PullRequestWebhookMergeCommitTitle> values = [prTitle, mergeMessage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullRequestWebhookMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PullRequestWebhookMergeCommitTitle($value)'; } 
 }
/// The default value for a squash merge commit message:
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
final class PullRequestWebhookSquashMergeCommitMessage {const PullRequestWebhookSquashMergeCommitMessage._(this.value);

factory PullRequestWebhookSquashMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'COMMIT_MESSAGES' => commitMessages,
  'BLANK' => blank,
  _ => PullRequestWebhookSquashMergeCommitMessage._(json),
}; }

static const PullRequestWebhookSquashMergeCommitMessage prBody = PullRequestWebhookSquashMergeCommitMessage._('PR_BODY');

static const PullRequestWebhookSquashMergeCommitMessage commitMessages = PullRequestWebhookSquashMergeCommitMessage._('COMMIT_MESSAGES');

static const PullRequestWebhookSquashMergeCommitMessage blank = PullRequestWebhookSquashMergeCommitMessage._('BLANK');

static const List<PullRequestWebhookSquashMergeCommitMessage> values = [prBody, commitMessages, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullRequestWebhookSquashMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PullRequestWebhookSquashMergeCommitMessage($value)'; } 
 }
/// The default value for a squash merge commit title:
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
final class PullRequestWebhookSquashMergeCommitTitle {const PullRequestWebhookSquashMergeCommitTitle._(this.value);

factory PullRequestWebhookSquashMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'COMMIT_OR_PR_TITLE' => commitOrPrTitle,
  _ => PullRequestWebhookSquashMergeCommitTitle._(json),
}; }

static const PullRequestWebhookSquashMergeCommitTitle prTitle = PullRequestWebhookSquashMergeCommitTitle._('PR_TITLE');

static const PullRequestWebhookSquashMergeCommitTitle commitOrPrTitle = PullRequestWebhookSquashMergeCommitTitle._('COMMIT_OR_PR_TITLE');

static const List<PullRequestWebhookSquashMergeCommitTitle> values = [prTitle, commitOrPrTitle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullRequestWebhookSquashMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PullRequestWebhookSquashMergeCommitTitle($value)'; } 
 }
final class PullRequestWebhook {const PullRequestWebhook({required this.url, required this.id, required this.nodeId, required this.htmlUrl, required this.diffUrl, required this.patchUrl, required this.issueUrl, required this.commitsUrl, required this.reviewCommentsUrl, required this.reviewCommentUrl, required this.commentsUrl, required this.statusesUrl, required this.number, required this.state, required this.locked, required this.title, required this.user, required this.body, required this.labels, required this.milestone, this.activeLockReason, required this.createdAt, required this.updatedAt, required this.closedAt, required this.mergedAt, required this.mergeCommitSha, required this.assignee, this.assignees, this.requestedReviewers, this.requestedTeams, required this.head, required this.base, required this.links, required this.authorAssociation, required this.autoMerge, this.draft, required this.merged, required this.mergeable, this.rebaseable, required this.mergeableState, required this.mergedBy, required this.comments, required this.reviewComments, required this.maintainerCanModify, required this.commits, required this.additions, required this.deletions, required this.changedFiles, this.allowAutoMerge = false, this.allowUpdateBranch, this.deleteBranchOnMerge = false, this.mergeCommitMessage, this.mergeCommitTitle, this.squashMergeCommitMessage, this.squashMergeCommitTitle, this.useSquashPrTitleAsDefault = false, });

factory PullRequestWebhook.fromJson(Map<String, dynamic> json) { return PullRequestWebhook(
  url: Uri.parse(json['url'] as String),
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  htmlUrl: Uri.parse(json['html_url'] as String),
  diffUrl: Uri.parse(json['diff_url'] as String),
  patchUrl: Uri.parse(json['patch_url'] as String),
  issueUrl: Uri.parse(json['issue_url'] as String),
  commitsUrl: Uri.parse(json['commits_url'] as String),
  reviewCommentsUrl: Uri.parse(json['review_comments_url'] as String),
  reviewCommentUrl: json['review_comment_url'] as String,
  commentsUrl: Uri.parse(json['comments_url'] as String),
  statusesUrl: Uri.parse(json['statuses_url'] as String),
  number: (json['number'] as num).toInt(),
  state: PullRequestWebhookState.fromJson(json['state'] as String),
  locked: json['locked'] as bool,
  title: json['title'] as String,
  user: SimpleUser.fromJson(json['user'] as Map<String, dynamic>),
  body: json['body'] as String?,
  labels: (json['labels'] as List<dynamic>).map((e) => PullRequestWebhookLabels.fromJson(e as Map<String, dynamic>)).toList(),
  milestone: json['milestone'] != null ? Milestone.fromJson(json['milestone'] as Map<String, dynamic>) : null,
  activeLockReason: json['active_lock_reason'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  closedAt: json['closed_at'] != null ? DateTime.parse(json['closed_at'] as String) : null,
  mergedAt: json['merged_at'] != null ? DateTime.parse(json['merged_at'] as String) : null,
  mergeCommitSha: json['merge_commit_sha'] as String?,
  assignee: json['assignee'] != null ? SimpleUser.fromJson(json['assignee'] as Map<String, dynamic>) : null,
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  requestedReviewers: (json['requested_reviewers'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  requestedTeams: (json['requested_teams'] as List<dynamic>?)?.map((e) => TeamSimple.fromJson(e as Map<String, dynamic>)).toList(),
  head: PullRequestWebhookHead.fromJson(json['head'] as Map<String, dynamic>),
  base: PullRequestWebhookBase.fromJson(json['base'] as Map<String, dynamic>),
  links: PullRequestWebhookLinks.fromJson(json['_links'] as Map<String, dynamic>),
  authorAssociation: AuthorAssociation.fromJson(json['author_association'] as String),
  autoMerge: AutoMerge.fromJson(json['auto_merge'] as Map<String, dynamic>),
  draft: json['draft'] as bool?,
  merged: json['merged'] as bool,
  mergeable: json['mergeable'] as bool?,
  rebaseable: json['rebaseable'] as bool?,
  mergeableState: json['mergeable_state'] as String,
  mergedBy: json['merged_by'] != null ? SimpleUser.fromJson(json['merged_by'] as Map<String, dynamic>) : null,
  comments: (json['comments'] as num).toInt(),
  reviewComments: (json['review_comments'] as num).toInt(),
  maintainerCanModify: json['maintainer_can_modify'] as bool,
  commits: (json['commits'] as num).toInt(),
  additions: (json['additions'] as num).toInt(),
  deletions: (json['deletions'] as num).toInt(),
  changedFiles: (json['changed_files'] as num).toInt(),
  allowAutoMerge: json.containsKey('allow_auto_merge') ? json['allow_auto_merge'] as bool : false,
  allowUpdateBranch: json['allow_update_branch'] as bool?,
  deleteBranchOnMerge: json.containsKey('delete_branch_on_merge') ? json['delete_branch_on_merge'] as bool : false,
  mergeCommitMessage: json['merge_commit_message'] != null ? PullRequestWebhookMergeCommitMessage.fromJson(json['merge_commit_message'] as String) : null,
  mergeCommitTitle: json['merge_commit_title'] != null ? PullRequestWebhookMergeCommitTitle.fromJson(json['merge_commit_title'] as String) : null,
  squashMergeCommitMessage: json['squash_merge_commit_message'] != null ? PullRequestWebhookSquashMergeCommitMessage.fromJson(json['squash_merge_commit_message'] as String) : null,
  squashMergeCommitTitle: json['squash_merge_commit_title'] != null ? PullRequestWebhookSquashMergeCommitTitle.fromJson(json['squash_merge_commit_title'] as String) : null,
  useSquashPrTitleAsDefault: json.containsKey('use_squash_pr_title_as_default') ? json['use_squash_pr_title_as_default'] as bool : false,
); }

final Uri url;

final int id;

final String nodeId;

final Uri htmlUrl;

final Uri diffUrl;

final Uri patchUrl;

final Uri issueUrl;

final Uri commitsUrl;

final Uri reviewCommentsUrl;

final String reviewCommentUrl;

final Uri commentsUrl;

final Uri statusesUrl;

/// Number uniquely identifying the pull request within its repository.
final int number;

/// State of this Pull Request. Either `open` or `closed`.
final PullRequestWebhookState state;

final bool locked;

/// The title of the pull request.
final String title;

final SimpleUser user;

final String? body;

final List<PullRequestWebhookLabels> labels;

final Milestone? milestone;

final String? activeLockReason;

final DateTime createdAt;

final DateTime updatedAt;

final DateTime? closedAt;

final DateTime? mergedAt;

final String? mergeCommitSha;

final SimpleUser? assignee;

final List<SimpleUser>? assignees;

final List<SimpleUser>? requestedReviewers;

final List<TeamSimple>? requestedTeams;

final PullRequestWebhookHead head;

final PullRequestWebhookBase base;

final PullRequestWebhookLinks links;

/// How the author is associated with the repository.
final AuthorAssociation authorAssociation;

final AutoMerge autoMerge;

/// Indicates whether or not the pull request is a draft.
final bool? draft;

final bool merged;

final bool? mergeable;

final bool? rebaseable;

final String mergeableState;

final SimpleUser? mergedBy;

final int comments;

final int reviewComments;

/// Indicates whether maintainers can modify the pull request.
final bool maintainerCanModify;

final int commits;

final int additions;

final int deletions;

final int changedFiles;

/// Whether to allow auto-merge for pull requests.
final bool allowAutoMerge;

/// Whether to allow updating the pull request's branch.
final bool? allowUpdateBranch;

/// Whether to delete head branches when pull requests are merged.
final bool deleteBranchOnMerge;

/// The default value for a merge commit message.
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
final PullRequestWebhookMergeCommitMessage? mergeCommitMessage;

/// The default value for a merge commit title.
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., "Merge pull request #123 from branch-name").
final PullRequestWebhookMergeCommitTitle? mergeCommitTitle;

/// The default value for a squash merge commit message:
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
final PullRequestWebhookSquashMergeCommitMessage? squashMergeCommitMessage;

/// The default value for a squash merge commit title:
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
final PullRequestWebhookSquashMergeCommitTitle? squashMergeCommitTitle;

/// Whether a squash merge commit can use the pull request title as default. **This property is closing down. Please use `squash_merge_commit_title` instead.**
final bool useSquashPrTitleAsDefault;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'id': id,
  'node_id': nodeId,
  'html_url': htmlUrl.toString(),
  'diff_url': diffUrl.toString(),
  'patch_url': patchUrl.toString(),
  'issue_url': issueUrl.toString(),
  'commits_url': commitsUrl.toString(),
  'review_comments_url': reviewCommentsUrl.toString(),
  'review_comment_url': reviewCommentUrl,
  'comments_url': commentsUrl.toString(),
  'statuses_url': statusesUrl.toString(),
  'number': number,
  'state': state.toJson(),
  'locked': locked,
  'title': title,
  'user': user.toJson(),
  'body': ?body,
  'labels': labels.map((e) => e.toJson()).toList(),
  if (milestone != null) 'milestone': milestone?.toJson(),
  'active_lock_reason': ?activeLockReason,
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  if (closedAt != null) 'closed_at': closedAt?.toIso8601String(),
  if (mergedAt != null) 'merged_at': mergedAt?.toIso8601String(),
  'merge_commit_sha': ?mergeCommitSha,
  if (assignee != null) 'assignee': assignee?.toJson(),
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
  if (requestedReviewers != null) 'requested_reviewers': requestedReviewers?.map((e) => e.toJson()).toList(),
  if (requestedTeams != null) 'requested_teams': requestedTeams?.map((e) => e.toJson()).toList(),
  'head': head.toJson(),
  'base': base.toJson(),
  '_links': links.toJson(),
  'author_association': authorAssociation.toJson(),
  'auto_merge': autoMerge.toJson(),
  'draft': ?draft,
  'merged': merged,
  'mergeable': ?mergeable,
  'rebaseable': ?rebaseable,
  'mergeable_state': mergeableState,
  if (mergedBy != null) 'merged_by': mergedBy?.toJson(),
  'comments': comments,
  'review_comments': reviewComments,
  'maintainer_can_modify': maintainerCanModify,
  'commits': commits,
  'additions': additions,
  'deletions': deletions,
  'changed_files': changedFiles,
  'allow_auto_merge': allowAutoMerge,
  'allow_update_branch': ?allowUpdateBranch,
  'delete_branch_on_merge': deleteBranchOnMerge,
  if (mergeCommitMessage != null) 'merge_commit_message': mergeCommitMessage?.toJson(),
  if (mergeCommitTitle != null) 'merge_commit_title': mergeCommitTitle?.toJson(),
  if (squashMergeCommitMessage != null) 'squash_merge_commit_message': squashMergeCommitMessage?.toJson(),
  if (squashMergeCommitTitle != null) 'squash_merge_commit_title': squashMergeCommitTitle?.toJson(),
  'use_squash_pr_title_as_default': useSquashPrTitleAsDefault,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('diff_url') && json['diff_url'] is String &&
      json.containsKey('patch_url') && json['patch_url'] is String &&
      json.containsKey('issue_url') && json['issue_url'] is String &&
      json.containsKey('commits_url') && json['commits_url'] is String &&
      json.containsKey('review_comments_url') && json['review_comments_url'] is String &&
      json.containsKey('review_comment_url') && json['review_comment_url'] is String &&
      json.containsKey('comments_url') && json['comments_url'] is String &&
      json.containsKey('statuses_url') && json['statuses_url'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('state') &&
      json.containsKey('locked') && json['locked'] is bool &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('user') &&
      json.containsKey('body') && json['body'] is String &&
      json.containsKey('labels') &&
      json.containsKey('milestone') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('closed_at') && json['closed_at'] is String &&
      json.containsKey('merged_at') && json['merged_at'] is String &&
      json.containsKey('merge_commit_sha') && json['merge_commit_sha'] is String &&
      json.containsKey('assignee') &&
      json.containsKey('head') &&
      json.containsKey('base') &&
      json.containsKey('_links') &&
      json.containsKey('author_association') &&
      json.containsKey('auto_merge') &&
      json.containsKey('merged') && json['merged'] is bool &&
      json.containsKey('mergeable') && json['mergeable'] is bool &&
      json.containsKey('mergeable_state') && json['mergeable_state'] is String &&
      json.containsKey('merged_by') &&
      json.containsKey('comments') && json['comments'] is num &&
      json.containsKey('review_comments') && json['review_comments'] is num &&
      json.containsKey('maintainer_can_modify') && json['maintainer_can_modify'] is bool &&
      json.containsKey('commits') && json['commits'] is num &&
      json.containsKey('additions') && json['additions'] is num &&
      json.containsKey('deletions') && json['deletions'] is num &&
      json.containsKey('changed_files') && json['changed_files'] is num; } 
PullRequestWebhook copyWith({Uri? url, int? id, String? nodeId, Uri? htmlUrl, Uri? diffUrl, Uri? patchUrl, Uri? issueUrl, Uri? commitsUrl, Uri? reviewCommentsUrl, String? reviewCommentUrl, Uri? commentsUrl, Uri? statusesUrl, int? number, PullRequestWebhookState? state, bool? locked, String? title, SimpleUser? user, String? Function()? body, List<PullRequestWebhookLabels>? labels, Milestone? Function()? milestone, String? Function()? activeLockReason, DateTime? createdAt, DateTime? updatedAt, DateTime? Function()? closedAt, DateTime? Function()? mergedAt, String? Function()? mergeCommitSha, SimpleUser? Function()? assignee, List<SimpleUser> Function()? assignees, List<SimpleUser> Function()? requestedReviewers, List<TeamSimple> Function()? requestedTeams, PullRequestWebhookHead? head, PullRequestWebhookBase? base, PullRequestWebhookLinks? links, AuthorAssociation? authorAssociation, AutoMerge? autoMerge, bool Function()? draft, bool? merged, bool? Function()? mergeable, bool? Function()? rebaseable, String? mergeableState, SimpleUser? Function()? mergedBy, int? comments, int? reviewComments, bool? maintainerCanModify, int? commits, int? additions, int? deletions, int? changedFiles, bool Function()? allowAutoMerge, bool Function()? allowUpdateBranch, bool Function()? deleteBranchOnMerge, PullRequestWebhookMergeCommitMessage Function()? mergeCommitMessage, PullRequestWebhookMergeCommitTitle Function()? mergeCommitTitle, PullRequestWebhookSquashMergeCommitMessage Function()? squashMergeCommitMessage, PullRequestWebhookSquashMergeCommitTitle Function()? squashMergeCommitTitle, bool Function()? useSquashPrTitleAsDefault, }) { return PullRequestWebhook(
  url: url ?? this.url,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  diffUrl: diffUrl ?? this.diffUrl,
  patchUrl: patchUrl ?? this.patchUrl,
  issueUrl: issueUrl ?? this.issueUrl,
  commitsUrl: commitsUrl ?? this.commitsUrl,
  reviewCommentsUrl: reviewCommentsUrl ?? this.reviewCommentsUrl,
  reviewCommentUrl: reviewCommentUrl ?? this.reviewCommentUrl,
  commentsUrl: commentsUrl ?? this.commentsUrl,
  statusesUrl: statusesUrl ?? this.statusesUrl,
  number: number ?? this.number,
  state: state ?? this.state,
  locked: locked ?? this.locked,
  title: title ?? this.title,
  user: user ?? this.user,
  body: body != null ? body() : this.body,
  labels: labels ?? this.labels,
  milestone: milestone != null ? milestone() : this.milestone,
  activeLockReason: activeLockReason != null ? activeLockReason() : this.activeLockReason,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  mergedAt: mergedAt != null ? mergedAt() : this.mergedAt,
  mergeCommitSha: mergeCommitSha != null ? mergeCommitSha() : this.mergeCommitSha,
  assignee: assignee != null ? assignee() : this.assignee,
  assignees: assignees != null ? assignees() : this.assignees,
  requestedReviewers: requestedReviewers != null ? requestedReviewers() : this.requestedReviewers,
  requestedTeams: requestedTeams != null ? requestedTeams() : this.requestedTeams,
  head: head ?? this.head,
  base: base ?? this.base,
  links: links ?? this.links,
  authorAssociation: authorAssociation ?? this.authorAssociation,
  autoMerge: autoMerge ?? this.autoMerge,
  draft: draft != null ? draft() : this.draft,
  merged: merged ?? this.merged,
  mergeable: mergeable != null ? mergeable() : this.mergeable,
  rebaseable: rebaseable != null ? rebaseable() : this.rebaseable,
  mergeableState: mergeableState ?? this.mergeableState,
  mergedBy: mergedBy != null ? mergedBy() : this.mergedBy,
  comments: comments ?? this.comments,
  reviewComments: reviewComments ?? this.reviewComments,
  maintainerCanModify: maintainerCanModify ?? this.maintainerCanModify,
  commits: commits ?? this.commits,
  additions: additions ?? this.additions,
  deletions: deletions ?? this.deletions,
  changedFiles: changedFiles ?? this.changedFiles,
  allowAutoMerge: allowAutoMerge != null ? allowAutoMerge() : this.allowAutoMerge,
  allowUpdateBranch: allowUpdateBranch != null ? allowUpdateBranch() : this.allowUpdateBranch,
  deleteBranchOnMerge: deleteBranchOnMerge != null ? deleteBranchOnMerge() : this.deleteBranchOnMerge,
  mergeCommitMessage: mergeCommitMessage != null ? mergeCommitMessage() : this.mergeCommitMessage,
  mergeCommitTitle: mergeCommitTitle != null ? mergeCommitTitle() : this.mergeCommitTitle,
  squashMergeCommitMessage: squashMergeCommitMessage != null ? squashMergeCommitMessage() : this.squashMergeCommitMessage,
  squashMergeCommitTitle: squashMergeCommitTitle != null ? squashMergeCommitTitle() : this.squashMergeCommitTitle,
  useSquashPrTitleAsDefault: useSquashPrTitleAsDefault != null ? useSquashPrTitleAsDefault() : this.useSquashPrTitleAsDefault,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestWebhook &&
          url == other.url &&
          id == other.id &&
          nodeId == other.nodeId &&
          htmlUrl == other.htmlUrl &&
          diffUrl == other.diffUrl &&
          patchUrl == other.patchUrl &&
          issueUrl == other.issueUrl &&
          commitsUrl == other.commitsUrl &&
          reviewCommentsUrl == other.reviewCommentsUrl &&
          reviewCommentUrl == other.reviewCommentUrl &&
          commentsUrl == other.commentsUrl &&
          statusesUrl == other.statusesUrl &&
          number == other.number &&
          state == other.state &&
          locked == other.locked &&
          title == other.title &&
          user == other.user &&
          body == other.body &&
          listEquals(labels, other.labels) &&
          milestone == other.milestone &&
          activeLockReason == other.activeLockReason &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          closedAt == other.closedAt &&
          mergedAt == other.mergedAt &&
          mergeCommitSha == other.mergeCommitSha &&
          assignee == other.assignee &&
          listEquals(assignees, other.assignees) &&
          listEquals(requestedReviewers, other.requestedReviewers) &&
          listEquals(requestedTeams, other.requestedTeams) &&
          head == other.head &&
          base == other.base &&
          links == other.links &&
          authorAssociation == other.authorAssociation &&
          autoMerge == other.autoMerge &&
          draft == other.draft &&
          merged == other.merged &&
          mergeable == other.mergeable &&
          rebaseable == other.rebaseable &&
          mergeableState == other.mergeableState &&
          mergedBy == other.mergedBy &&
          comments == other.comments &&
          reviewComments == other.reviewComments &&
          maintainerCanModify == other.maintainerCanModify &&
          commits == other.commits &&
          additions == other.additions &&
          deletions == other.deletions &&
          changedFiles == other.changedFiles &&
          allowAutoMerge == other.allowAutoMerge &&
          allowUpdateBranch == other.allowUpdateBranch &&
          deleteBranchOnMerge == other.deleteBranchOnMerge &&
          mergeCommitMessage == other.mergeCommitMessage &&
          mergeCommitTitle == other.mergeCommitTitle &&
          squashMergeCommitMessage == other.squashMergeCommitMessage &&
          squashMergeCommitTitle == other.squashMergeCommitTitle &&
          useSquashPrTitleAsDefault == other.useSquashPrTitleAsDefault; } 
@override int get hashCode { return Object.hashAll([url, id, nodeId, htmlUrl, diffUrl, patchUrl, issueUrl, commitsUrl, reviewCommentsUrl, reviewCommentUrl, commentsUrl, statusesUrl, number, state, locked, title, user, body, Object.hashAll(labels), milestone, activeLockReason, createdAt, updatedAt, closedAt, mergedAt, mergeCommitSha, assignee, Object.hashAll(assignees ?? const []), Object.hashAll(requestedReviewers ?? const []), Object.hashAll(requestedTeams ?? const []), head, base, links, authorAssociation, autoMerge, draft, merged, mergeable, rebaseable, mergeableState, mergedBy, comments, reviewComments, maintainerCanModify, commits, additions, deletions, changedFiles, allowAutoMerge, allowUpdateBranch, deleteBranchOnMerge, mergeCommitMessage, mergeCommitTitle, squashMergeCommitMessage, squashMergeCommitTitle, useSquashPrTitleAsDefault]); } 
@override String toString() { return 'PullRequestWebhook(url: $url, id: $id, nodeId: $nodeId, htmlUrl: $htmlUrl, diffUrl: $diffUrl, patchUrl: $patchUrl, issueUrl: $issueUrl, commitsUrl: $commitsUrl, reviewCommentsUrl: $reviewCommentsUrl, reviewCommentUrl: $reviewCommentUrl, commentsUrl: $commentsUrl, statusesUrl: $statusesUrl, number: $number, state: $state, locked: $locked, title: $title, user: $user, body: $body, labels: $labels, milestone: $milestone, activeLockReason: $activeLockReason, createdAt: $createdAt, updatedAt: $updatedAt, closedAt: $closedAt, mergedAt: $mergedAt, mergeCommitSha: $mergeCommitSha, assignee: $assignee, assignees: $assignees, requestedReviewers: $requestedReviewers, requestedTeams: $requestedTeams, head: $head, base: $base, links: $links, authorAssociation: $authorAssociation, autoMerge: $autoMerge, draft: $draft, merged: $merged, mergeable: $mergeable, rebaseable: $rebaseable, mergeableState: $mergeableState, mergedBy: $mergedBy, comments: $comments, reviewComments: $reviewComments, maintainerCanModify: $maintainerCanModify, commits: $commits, additions: $additions, deletions: $deletions, changedFiles: $changedFiles, allowAutoMerge: $allowAutoMerge, allowUpdateBranch: $allowUpdateBranch, deleteBranchOnMerge: $deleteBranchOnMerge, mergeCommitMessage: $mergeCommitMessage, mergeCommitTitle: $mergeCommitTitle, squashMergeCommitMessage: $squashMergeCommitMessage, squashMergeCommitTitle: $squashMergeCommitTitle, useSquashPrTitleAsDefault: $useSquashPrTitleAsDefault)'; } 
 }
