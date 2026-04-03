// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'author_association.dart';import 'integration.dart';import 'issue_comment.dart';import 'issue_dependencies_summary.dart';import 'issue_field_value.dart';import 'issue_labels.dart';import 'issue_labels_variant2.dart';import 'issue_pull_request.dart';import 'issue_type.dart';import 'milestone.dart';import 'reaction_rollup.dart';import 'repository.dart';import 'simple_user.dart';import 'sub_issues_summary.dart';/// The reason for the current state
@immutable final class IssueStateReason {const IssueStateReason._(this.value);

factory IssueStateReason.fromJson(String json) { return switch (json) {
  'completed' => completed,
  'reopened' => reopened,
  'not_planned' => notPlanned,
  'duplicate' => duplicate,
  'null' => $null,
  _ => IssueStateReason._(json),
}; }

static const IssueStateReason completed = IssueStateReason._('completed');

static const IssueStateReason reopened = IssueStateReason._('reopened');

static const IssueStateReason notPlanned = IssueStateReason._('not_planned');

static const IssueStateReason duplicate = IssueStateReason._('duplicate');

static const IssueStateReason $null = IssueStateReason._('null');

static const List<IssueStateReason> values = [completed, reopened, notPlanned, duplicate, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssueStateReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssueStateReason($value)'; } 
 }
/// Issues are a great way to keep track of tasks, enhancements, and bugs for your projects.
@immutable final class Issue {const Issue({required this.user, required this.nodeId, required this.url, required this.repositoryUrl, required this.labelsUrl, required this.commentsUrl, required this.eventsUrl, required this.htmlUrl, required this.number, required this.state, required this.title, required this.id, required this.labels, required this.assignee, required this.milestone, required this.locked, required this.closedAt, required this.createdAt, required this.updatedAt, required this.comments, this.activeLockReason, this.pullRequest, this.assignees, this.body, this.stateReason, this.issueFieldValues, this.closedBy, this.bodyHtml, this.bodyText, this.timelineUrl, this.type, this.repository, this.performedViaGithubApp, this.authorAssociation, this.reactions, this.subIssuesSummary, this.parentIssueUrl, this.pinnedComment, this.issueDependenciesSummary, this.draft, });

factory Issue.fromJson(Map<String, dynamic> json) { return Issue(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  url: Uri.parse(json['url'] as String),
  repositoryUrl: Uri.parse(json['repository_url'] as String),
  labelsUrl: json['labels_url'] as String,
  commentsUrl: Uri.parse(json['comments_url'] as String),
  eventsUrl: Uri.parse(json['events_url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
  number: (json['number'] as num).toInt(),
  state: json['state'] as String,
  stateReason: json['state_reason'] != null ? IssueStateReason.fromJson(json['state_reason'] as String) : null,
  title: json['title'] as String,
  body: json['body'] as String?,
  user: json['user'] != null ? SimpleUser.fromJson(json['user'] as Map<String, dynamic>) : null,
  labels: (json['labels'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => IssueLabelsVariant2.fromJson(v as Map<String, dynamic>),)).toList(),
  assignee: json['assignee'] != null ? SimpleUser.fromJson(json['assignee'] as Map<String, dynamic>) : null,
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  milestone: json['milestone'] != null ? Milestone.fromJson(json['milestone'] as Map<String, dynamic>) : null,
  locked: json['locked'] as bool,
  activeLockReason: json['active_lock_reason'] as String?,
  comments: (json['comments'] as num).toInt(),
  pullRequest: json['pull_request'] != null ? IssuePullRequest.fromJson(json['pull_request'] as Map<String, dynamic>) : null,
  closedAt: json['closed_at'] != null ? DateTime.parse(json['closed_at'] as String) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  draft: json['draft'] as bool?,
  closedBy: json['closed_by'] != null ? SimpleUser.fromJson(json['closed_by'] as Map<String, dynamic>) : null,
  bodyHtml: json['body_html'] as String?,
  bodyText: json['body_text'] as String?,
  timelineUrl: json['timeline_url'] != null ? Uri.parse(json['timeline_url'] as String) : null,
  type: json['type'] != null ? IssueType.fromJson(json['type'] as Map<String, dynamic>) : null,
  repository: json['repository'] != null ? Repository.fromJson(json['repository'] as Map<String, dynamic>) : null,
  performedViaGithubApp: json['performed_via_github_app'] != null ? Integration.fromJson(json['performed_via_github_app'] as Map<String, dynamic>) : null,
  authorAssociation: json['author_association'] != null ? AuthorAssociation.fromJson(json['author_association'] as String) : null,
  reactions: json['reactions'] != null ? ReactionRollup.fromJson(json['reactions'] as Map<String, dynamic>) : null,
  subIssuesSummary: json['sub_issues_summary'] != null ? SubIssuesSummary.fromJson(json['sub_issues_summary'] as Map<String, dynamic>) : null,
  parentIssueUrl: json['parent_issue_url'] != null ? Uri.parse(json['parent_issue_url'] as String) : null,
  pinnedComment: json['pinned_comment'] != null ? IssueComment.fromJson(json['pinned_comment'] as Map<String, dynamic>) : null,
  issueDependenciesSummary: json['issue_dependencies_summary'] != null ? IssueDependenciesSummary.fromJson(json['issue_dependencies_summary'] as Map<String, dynamic>) : null,
  issueFieldValues: (json['issue_field_values'] as List<dynamic>?)?.map((e) => IssueFieldValue.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int id;

final String nodeId;

/// URL for the issue
final Uri url;

final Uri repositoryUrl;

final String labelsUrl;

final Uri commentsUrl;

final Uri eventsUrl;

final Uri htmlUrl;

/// Number uniquely identifying the issue within its repository
final int number;

/// State of the issue; either 'open' or 'closed'
final String state;

/// The reason for the current state
final IssueStateReason? stateReason;

/// Title of the issue
final String title;

/// Contents of the issue
final String? body;

final SimpleUser? user;

/// Labels to associate with this issue; pass one or more label names to replace the set of labels on this issue; send an empty array to clear all labels from the issue; note that the labels are silently dropped for users without push access to the repository
final List<IssueLabels> labels;

final SimpleUser? assignee;

final List<SimpleUser>? assignees;

final Milestone? milestone;

final bool locked;

final String? activeLockReason;

final int comments;

final IssuePullRequest? pullRequest;

final DateTime? closedAt;

final DateTime createdAt;

final DateTime updatedAt;

final bool? draft;

final SimpleUser? closedBy;

final String? bodyHtml;

final String? bodyText;

final Uri? timelineUrl;

final IssueType? type;

final Repository? repository;

final Integration? performedViaGithubApp;

/// How the author is associated with the repository.
final AuthorAssociation? authorAssociation;

final ReactionRollup? reactions;

final SubIssuesSummary? subIssuesSummary;

/// URL to get the parent issue of this issue, if it is a sub-issue
final Uri? parentIssueUrl;

final IssueComment? pinnedComment;

final IssueDependenciesSummary? issueDependenciesSummary;

final List<IssueFieldValue>? issueFieldValues;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'url': url.toString(),
  'repository_url': repositoryUrl.toString(),
  'labels_url': labelsUrl,
  'comments_url': commentsUrl.toString(),
  'events_url': eventsUrl.toString(),
  'html_url': htmlUrl.toString(),
  'number': number,
  'state': state,
  if (stateReason != null) 'state_reason': stateReason?.toJson(),
  'title': title,
  'body': ?body,
  if (user != null) 'user': user?.toJson(),
  'labels': labels.map((e) => e.toJson()).toList(),
  if (assignee != null) 'assignee': assignee?.toJson(),
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
  if (milestone != null) 'milestone': milestone?.toJson(),
  'locked': locked,
  'active_lock_reason': ?activeLockReason,
  'comments': comments,
  if (pullRequest != null) 'pull_request': pullRequest?.toJson(),
  if (closedAt != null) 'closed_at': closedAt?.toIso8601String(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'draft': ?draft,
  if (closedBy != null) 'closed_by': closedBy?.toJson(),
  'body_html': ?bodyHtml,
  'body_text': ?bodyText,
  if (timelineUrl != null) 'timeline_url': timelineUrl?.toString(),
  if (type != null) 'type': type?.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  if (performedViaGithubApp != null) 'performed_via_github_app': performedViaGithubApp?.toJson(),
  if (authorAssociation != null) 'author_association': authorAssociation?.toJson(),
  if (reactions != null) 'reactions': reactions?.toJson(),
  if (subIssuesSummary != null) 'sub_issues_summary': subIssuesSummary?.toJson(),
  if (parentIssueUrl != null) 'parent_issue_url': parentIssueUrl?.toString(),
  if (pinnedComment != null) 'pinned_comment': pinnedComment?.toJson(),
  if (issueDependenciesSummary != null) 'issue_dependencies_summary': issueDependenciesSummary?.toJson(),
  if (issueFieldValues != null) 'issue_field_values': issueFieldValues?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('repository_url') && json['repository_url'] is String &&
      json.containsKey('labels_url') && json['labels_url'] is String &&
      json.containsKey('comments_url') && json['comments_url'] is String &&
      json.containsKey('events_url') && json['events_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('state') && json['state'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('user') &&
      json.containsKey('labels') &&
      json.containsKey('assignee') &&
      json.containsKey('milestone') &&
      json.containsKey('locked') && json['locked'] is bool &&
      json.containsKey('comments') && json['comments'] is num &&
      json.containsKey('closed_at') && json['closed_at'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
Issue copyWith({int? id, String? nodeId, Uri? url, Uri? repositoryUrl, String? labelsUrl, Uri? commentsUrl, Uri? eventsUrl, Uri? htmlUrl, int? number, String? state, IssueStateReason? Function()? stateReason, String? title, String? Function()? body, SimpleUser? Function()? user, List<IssueLabels>? labels, SimpleUser? Function()? assignee, List<SimpleUser> Function()? assignees, Milestone? Function()? milestone, bool? locked, String? Function()? activeLockReason, int? comments, IssuePullRequest Function()? pullRequest, DateTime? Function()? closedAt, DateTime? createdAt, DateTime? updatedAt, bool Function()? draft, SimpleUser? Function()? closedBy, String Function()? bodyHtml, String Function()? bodyText, Uri Function()? timelineUrl, IssueType Function()? type, Repository Function()? repository, Integration? Function()? performedViaGithubApp, AuthorAssociation Function()? authorAssociation, ReactionRollup Function()? reactions, SubIssuesSummary Function()? subIssuesSummary, Uri? Function()? parentIssueUrl, IssueComment? Function()? pinnedComment, IssueDependenciesSummary Function()? issueDependenciesSummary, List<IssueFieldValue> Function()? issueFieldValues, }) { return Issue(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  url: url ?? this.url,
  repositoryUrl: repositoryUrl ?? this.repositoryUrl,
  labelsUrl: labelsUrl ?? this.labelsUrl,
  commentsUrl: commentsUrl ?? this.commentsUrl,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  number: number ?? this.number,
  state: state ?? this.state,
  stateReason: stateReason != null ? stateReason() : this.stateReason,
  title: title ?? this.title,
  body: body != null ? body() : this.body,
  user: user != null ? user() : this.user,
  labels: labels ?? this.labels,
  assignee: assignee != null ? assignee() : this.assignee,
  assignees: assignees != null ? assignees() : this.assignees,
  milestone: milestone != null ? milestone() : this.milestone,
  locked: locked ?? this.locked,
  activeLockReason: activeLockReason != null ? activeLockReason() : this.activeLockReason,
  comments: comments ?? this.comments,
  pullRequest: pullRequest != null ? pullRequest() : this.pullRequest,
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  draft: draft != null ? draft() : this.draft,
  closedBy: closedBy != null ? closedBy() : this.closedBy,
  bodyHtml: bodyHtml != null ? bodyHtml() : this.bodyHtml,
  bodyText: bodyText != null ? bodyText() : this.bodyText,
  timelineUrl: timelineUrl != null ? timelineUrl() : this.timelineUrl,
  type: type != null ? type() : this.type,
  repository: repository != null ? repository() : this.repository,
  performedViaGithubApp: performedViaGithubApp != null ? performedViaGithubApp() : this.performedViaGithubApp,
  authorAssociation: authorAssociation != null ? authorAssociation() : this.authorAssociation,
  reactions: reactions != null ? reactions() : this.reactions,
  subIssuesSummary: subIssuesSummary != null ? subIssuesSummary() : this.subIssuesSummary,
  parentIssueUrl: parentIssueUrl != null ? parentIssueUrl() : this.parentIssueUrl,
  pinnedComment: pinnedComment != null ? pinnedComment() : this.pinnedComment,
  issueDependenciesSummary: issueDependenciesSummary != null ? issueDependenciesSummary() : this.issueDependenciesSummary,
  issueFieldValues: issueFieldValues != null ? issueFieldValues() : this.issueFieldValues,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Issue &&
          id == other.id &&
          nodeId == other.nodeId &&
          url == other.url &&
          repositoryUrl == other.repositoryUrl &&
          labelsUrl == other.labelsUrl &&
          commentsUrl == other.commentsUrl &&
          eventsUrl == other.eventsUrl &&
          htmlUrl == other.htmlUrl &&
          number == other.number &&
          state == other.state &&
          stateReason == other.stateReason &&
          title == other.title &&
          body == other.body &&
          user == other.user &&
          listEquals(labels, other.labels) &&
          assignee == other.assignee &&
          listEquals(assignees, other.assignees) &&
          milestone == other.milestone &&
          locked == other.locked &&
          activeLockReason == other.activeLockReason &&
          comments == other.comments &&
          pullRequest == other.pullRequest &&
          closedAt == other.closedAt &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          draft == other.draft &&
          closedBy == other.closedBy &&
          bodyHtml == other.bodyHtml &&
          bodyText == other.bodyText &&
          timelineUrl == other.timelineUrl &&
          type == other.type &&
          repository == other.repository &&
          performedViaGithubApp == other.performedViaGithubApp &&
          authorAssociation == other.authorAssociation &&
          reactions == other.reactions &&
          subIssuesSummary == other.subIssuesSummary &&
          parentIssueUrl == other.parentIssueUrl &&
          pinnedComment == other.pinnedComment &&
          issueDependenciesSummary == other.issueDependenciesSummary &&
          listEquals(issueFieldValues, other.issueFieldValues); } 
@override int get hashCode { return Object.hashAll([id, nodeId, url, repositoryUrl, labelsUrl, commentsUrl, eventsUrl, htmlUrl, number, state, stateReason, title, body, user, Object.hashAll(labels), assignee, Object.hashAll(assignees ?? const []), milestone, locked, activeLockReason, comments, pullRequest, closedAt, createdAt, updatedAt, draft, closedBy, bodyHtml, bodyText, timelineUrl, type, repository, performedViaGithubApp, authorAssociation, reactions, subIssuesSummary, parentIssueUrl, pinnedComment, issueDependenciesSummary, Object.hashAll(issueFieldValues ?? const [])]); } 
@override String toString() { return 'Issue(id: $id, nodeId: $nodeId, url: $url, repositoryUrl: $repositoryUrl, labelsUrl: $labelsUrl, commentsUrl: $commentsUrl, eventsUrl: $eventsUrl, htmlUrl: $htmlUrl, number: $number, state: $state, stateReason: $stateReason, title: $title, body: $body, user: $user, labels: $labels, assignee: $assignee, assignees: $assignees, milestone: $milestone, locked: $locked, activeLockReason: $activeLockReason, comments: $comments, pullRequest: $pullRequest, closedAt: $closedAt, createdAt: $createdAt, updatedAt: $updatedAt, draft: $draft, closedBy: $closedBy, bodyHtml: $bodyHtml, bodyText: $bodyText, timelineUrl: $timelineUrl, type: $type, repository: $repository, performedViaGithubApp: $performedViaGithubApp, authorAssociation: $authorAssociation, reactions: $reactions, subIssuesSummary: $subIssuesSummary, parentIssueUrl: $parentIssueUrl, pinnedComment: $pinnedComment, issueDependenciesSummary: $issueDependenciesSummary, issueFieldValues: $issueFieldValues)'; } 
 }
