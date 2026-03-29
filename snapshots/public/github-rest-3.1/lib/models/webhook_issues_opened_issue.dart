// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issue_comment.dart';import 'issue_dependencies_summary.dart';import 'issue_field_value.dart';import 'issue_type.dart';import 'sub_issues_summary.dart';import 'webhook_issues_opened_issue_assignee.dart';import 'webhook_issues_opened_issue_assignees.dart';import 'webhook_issues_opened_issue_labels.dart';import 'webhook_issues_opened_issue_milestone.dart';import 'webhook_issues_opened_issue_performed_via_github_app.dart';import 'webhook_issues_opened_issue_pull_request.dart';import 'webhook_issues_opened_issue_reactions.dart';import 'webhook_issues_opened_issue_user.dart';final class WebhookIssuesOpenedIssueActiveLockReason {const WebhookIssuesOpenedIssueActiveLockReason._(this.value);

factory WebhookIssuesOpenedIssueActiveLockReason.fromJson(String json) { return switch (json) {
  'resolved' => resolved,
  'off-topic' => offTopic,
  'too heated' => tooHeated,
  'spam' => spam,
  'null' => $null,
  _ => WebhookIssuesOpenedIssueActiveLockReason._(json),
}; }

static const WebhookIssuesOpenedIssueActiveLockReason resolved = WebhookIssuesOpenedIssueActiveLockReason._('resolved');

static const WebhookIssuesOpenedIssueActiveLockReason offTopic = WebhookIssuesOpenedIssueActiveLockReason._('off-topic');

static const WebhookIssuesOpenedIssueActiveLockReason tooHeated = WebhookIssuesOpenedIssueActiveLockReason._('too heated');

static const WebhookIssuesOpenedIssueActiveLockReason spam = WebhookIssuesOpenedIssueActiveLockReason._('spam');

static const WebhookIssuesOpenedIssueActiveLockReason $null = WebhookIssuesOpenedIssueActiveLockReason._('null');

static const List<WebhookIssuesOpenedIssueActiveLockReason> values = [resolved, offTopic, tooHeated, spam, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssuesOpenedIssueActiveLockReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssuesOpenedIssueActiveLockReason($value)'; } 
 }
/// How the author is associated with the repository.
final class WebhookIssuesOpenedIssueAuthorAssociation {const WebhookIssuesOpenedIssueAuthorAssociation._(this.value);

factory WebhookIssuesOpenedIssueAuthorAssociation.fromJson(String json) { return switch (json) {
  'COLLABORATOR' => collaborator,
  'CONTRIBUTOR' => contributor,
  'FIRST_TIMER' => firstTimer,
  'FIRST_TIME_CONTRIBUTOR' => firstTimeContributor,
  'MANNEQUIN' => mannequin,
  'MEMBER' => member,
  'NONE' => none,
  'OWNER' => owner,
  _ => WebhookIssuesOpenedIssueAuthorAssociation._(json),
}; }

static const WebhookIssuesOpenedIssueAuthorAssociation collaborator = WebhookIssuesOpenedIssueAuthorAssociation._('COLLABORATOR');

static const WebhookIssuesOpenedIssueAuthorAssociation contributor = WebhookIssuesOpenedIssueAuthorAssociation._('CONTRIBUTOR');

static const WebhookIssuesOpenedIssueAuthorAssociation firstTimer = WebhookIssuesOpenedIssueAuthorAssociation._('FIRST_TIMER');

static const WebhookIssuesOpenedIssueAuthorAssociation firstTimeContributor = WebhookIssuesOpenedIssueAuthorAssociation._('FIRST_TIME_CONTRIBUTOR');

static const WebhookIssuesOpenedIssueAuthorAssociation mannequin = WebhookIssuesOpenedIssueAuthorAssociation._('MANNEQUIN');

static const WebhookIssuesOpenedIssueAuthorAssociation member = WebhookIssuesOpenedIssueAuthorAssociation._('MEMBER');

static const WebhookIssuesOpenedIssueAuthorAssociation none = WebhookIssuesOpenedIssueAuthorAssociation._('NONE');

static const WebhookIssuesOpenedIssueAuthorAssociation owner = WebhookIssuesOpenedIssueAuthorAssociation._('OWNER');

static const List<WebhookIssuesOpenedIssueAuthorAssociation> values = [collaborator, contributor, firstTimer, firstTimeContributor, mannequin, member, none, owner];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssuesOpenedIssueAuthorAssociation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssuesOpenedIssueAuthorAssociation($value)'; } 
 }
/// State of the issue; either 'open' or 'closed'
final class WebhookIssuesOpenedIssueState {const WebhookIssuesOpenedIssueState._(this.value);

factory WebhookIssuesOpenedIssueState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => WebhookIssuesOpenedIssueState._(json),
}; }

static const WebhookIssuesOpenedIssueState open = WebhookIssuesOpenedIssueState._('open');

static const WebhookIssuesOpenedIssueState closed = WebhookIssuesOpenedIssueState._('closed');

static const List<WebhookIssuesOpenedIssueState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssuesOpenedIssueState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssuesOpenedIssueState($value)'; } 
 }
/// The [issue](https://docs.github.com/rest/issues/issues#get-an-issue) itself.
final class WebhookIssuesOpenedIssue {const WebhookIssuesOpenedIssue({required this.activeLockReason, this.assignee, required this.assignees, required this.authorAssociation, required this.body, required this.closedAt, required this.comments, required this.commentsUrl, required this.createdAt, this.draft, required this.eventsUrl, required this.htmlUrl, required this.id, this.labels, required this.labelsUrl, this.locked, required this.milestone, required this.nodeId, required this.number, this.performedViaGithubApp, this.pullRequest, required this.reactions, required this.repositoryUrl, this.subIssuesSummary, this.issueDependenciesSummary, this.issueFieldValues, this.state, this.stateReason, this.timelineUrl, required this.title, this.type, required this.updatedAt, required this.url, this.pinnedComment, required this.user, });

factory WebhookIssuesOpenedIssue.fromJson(Map<String, dynamic> json) { return WebhookIssuesOpenedIssue(
  activeLockReason: json['active_lock_reason'] != null ? WebhookIssuesOpenedIssueActiveLockReason.fromJson(json['active_lock_reason'] as String) : null,
  assignee: json['assignee'] != null ? WebhookIssuesOpenedIssueAssignee.fromJson(json['assignee'] as Map<String, dynamic>) : null,
  assignees: (json['assignees'] as List<dynamic>).map((e) => WebhookIssuesOpenedIssueAssignees.fromJson(e as Map<String, dynamic>)).toList(),
  authorAssociation: WebhookIssuesOpenedIssueAuthorAssociation.fromJson(json['author_association'] as String),
  body: json['body'] as String?,
  closedAt: json['closed_at'] != null ? DateTime.parse(json['closed_at'] as String) : null,
  comments: (json['comments'] as num).toInt(),
  commentsUrl: Uri.parse(json['comments_url'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  draft: json['draft'] as bool?,
  eventsUrl: Uri.parse(json['events_url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  labels: (json['labels'] as List<dynamic>?)?.map((e) => WebhookIssuesOpenedIssueLabels.fromJson(e as Map<String, dynamic>)).toList(),
  labelsUrl: json['labels_url'] as String,
  locked: json['locked'] as bool?,
  milestone: json['milestone'] != null ? WebhookIssuesOpenedIssueMilestone.fromJson(json['milestone'] as Map<String, dynamic>) : null,
  nodeId: json['node_id'] as String,
  number: (json['number'] as num).toInt(),
  performedViaGithubApp: json['performed_via_github_app'] != null ? WebhookIssuesOpenedIssuePerformedViaGithubApp.fromJson(json['performed_via_github_app'] as Map<String, dynamic>) : null,
  pullRequest: json['pull_request'] != null ? WebhookIssuesOpenedIssuePullRequest.fromJson(json['pull_request'] as Map<String, dynamic>) : null,
  reactions: WebhookIssuesOpenedIssueReactions.fromJson(json['reactions'] as Map<String, dynamic>),
  repositoryUrl: Uri.parse(json['repository_url'] as String),
  subIssuesSummary: json['sub_issues_summary'] != null ? SubIssuesSummary.fromJson(json['sub_issues_summary'] as Map<String, dynamic>) : null,
  issueDependenciesSummary: json['issue_dependencies_summary'] != null ? IssueDependenciesSummary.fromJson(json['issue_dependencies_summary'] as Map<String, dynamic>) : null,
  issueFieldValues: (json['issue_field_values'] as List<dynamic>?)?.map((e) => IssueFieldValue.fromJson(e as Map<String, dynamic>)).toList(),
  state: json['state'] != null ? WebhookIssuesOpenedIssueState.fromJson(json['state'] as String) : null,
  stateReason: json['state_reason'] as String?,
  timelineUrl: json['timeline_url'] != null ? Uri.parse(json['timeline_url'] as String) : null,
  title: json['title'] as String,
  type: json['type'] != null ? IssueType.fromJson(json['type'] as Map<String, dynamic>) : null,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
  pinnedComment: json['pinned_comment'] != null ? IssueComment.fromJson(json['pinned_comment'] as Map<String, dynamic>) : null,
  user: json['user'] != null ? WebhookIssuesOpenedIssueUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final WebhookIssuesOpenedIssueActiveLockReason? activeLockReason;

final WebhookIssuesOpenedIssueAssignee? assignee;

final List<WebhookIssuesOpenedIssueAssignees?> assignees;

/// How the author is associated with the repository.
final WebhookIssuesOpenedIssueAuthorAssociation authorAssociation;

/// Contents of the issue
final String? body;

final DateTime? closedAt;

final int comments;

final Uri commentsUrl;

final DateTime createdAt;

final bool? draft;

final Uri eventsUrl;

final Uri htmlUrl;

final int id;

final List<WebhookIssuesOpenedIssueLabels>? labels;

final String labelsUrl;

final bool? locked;

/// A collection of related issues and pull requests.
final WebhookIssuesOpenedIssueMilestone? milestone;

final String nodeId;

final int number;

/// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
final WebhookIssuesOpenedIssuePerformedViaGithubApp? performedViaGithubApp;

final WebhookIssuesOpenedIssuePullRequest? pullRequest;

final WebhookIssuesOpenedIssueReactions reactions;

final Uri repositoryUrl;

final SubIssuesSummary? subIssuesSummary;

final IssueDependenciesSummary? issueDependenciesSummary;

final List<IssueFieldValue>? issueFieldValues;

/// State of the issue; either 'open' or 'closed'
final WebhookIssuesOpenedIssueState? state;

final String? stateReason;

final Uri? timelineUrl;

/// Title of the issue
final String title;

final IssueType? type;

final DateTime updatedAt;

/// URL for the issue
final Uri url;

final IssueComment? pinnedComment;

final WebhookIssuesOpenedIssueUser? user;

Map<String, dynamic> toJson() { return {
  if (activeLockReason != null) 'active_lock_reason': activeLockReason?.toJson(),
  if (assignee != null) 'assignee': assignee?.toJson(),
  'assignees': assignees.map((e) => e?.toJson()).toList(),
  'author_association': authorAssociation.toJson(),
  'body': ?body,
  if (closedAt != null) 'closed_at': closedAt?.toIso8601String(),
  'comments': comments,
  'comments_url': commentsUrl.toString(),
  'created_at': createdAt.toIso8601String(),
  'draft': ?draft,
  'events_url': eventsUrl.toString(),
  'html_url': htmlUrl.toString(),
  'id': id,
  if (labels != null) 'labels': labels?.map((e) => e.toJson()).toList(),
  'labels_url': labelsUrl,
  'locked': ?locked,
  if (milestone != null) 'milestone': milestone?.toJson(),
  'node_id': nodeId,
  'number': number,
  if (performedViaGithubApp != null) 'performed_via_github_app': performedViaGithubApp?.toJson(),
  if (pullRequest != null) 'pull_request': pullRequest?.toJson(),
  'reactions': reactions.toJson(),
  'repository_url': repositoryUrl.toString(),
  if (subIssuesSummary != null) 'sub_issues_summary': subIssuesSummary?.toJson(),
  if (issueDependenciesSummary != null) 'issue_dependencies_summary': issueDependenciesSummary?.toJson(),
  if (issueFieldValues != null) 'issue_field_values': issueFieldValues?.map((e) => e.toJson()).toList(),
  if (state != null) 'state': state?.toJson(),
  'state_reason': ?stateReason,
  if (timelineUrl != null) 'timeline_url': timelineUrl?.toString(),
  'title': title,
  if (type != null) 'type': type?.toJson(),
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
  if (pinnedComment != null) 'pinned_comment': pinnedComment?.toJson(),
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active_lock_reason') &&
      json.containsKey('assignees') &&
      json.containsKey('author_association') &&
      json.containsKey('body') && json['body'] is String &&
      json.containsKey('closed_at') && json['closed_at'] is String &&
      json.containsKey('comments') && json['comments'] is num &&
      json.containsKey('comments_url') && json['comments_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('events_url') && json['events_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('labels_url') && json['labels_url'] is String &&
      json.containsKey('milestone') &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('reactions') &&
      json.containsKey('repository_url') && json['repository_url'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('user'); } 
WebhookIssuesOpenedIssue copyWith({WebhookIssuesOpenedIssueActiveLockReason? Function()? activeLockReason, WebhookIssuesOpenedIssueAssignee? Function()? assignee, List<WebhookIssuesOpenedIssueAssignees?>? assignees, WebhookIssuesOpenedIssueAuthorAssociation? authorAssociation, String? Function()? body, DateTime? Function()? closedAt, int? comments, Uri? commentsUrl, DateTime? createdAt, bool Function()? draft, Uri? eventsUrl, Uri? htmlUrl, int? id, List<WebhookIssuesOpenedIssueLabels> Function()? labels, String? labelsUrl, bool Function()? locked, WebhookIssuesOpenedIssueMilestone? Function()? milestone, String? nodeId, int? number, WebhookIssuesOpenedIssuePerformedViaGithubApp? Function()? performedViaGithubApp, WebhookIssuesOpenedIssuePullRequest Function()? pullRequest, WebhookIssuesOpenedIssueReactions? reactions, Uri? repositoryUrl, SubIssuesSummary Function()? subIssuesSummary, IssueDependenciesSummary Function()? issueDependenciesSummary, List<IssueFieldValue> Function()? issueFieldValues, WebhookIssuesOpenedIssueState Function()? state, String? Function()? stateReason, Uri Function()? timelineUrl, String? title, IssueType Function()? type, DateTime? updatedAt, Uri? url, IssueComment? Function()? pinnedComment, WebhookIssuesOpenedIssueUser? Function()? user, }) { return WebhookIssuesOpenedIssue(
  activeLockReason: activeLockReason != null ? activeLockReason() : this.activeLockReason,
  assignee: assignee != null ? assignee() : this.assignee,
  assignees: assignees ?? this.assignees,
  authorAssociation: authorAssociation ?? this.authorAssociation,
  body: body != null ? body() : this.body,
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  comments: comments ?? this.comments,
  commentsUrl: commentsUrl ?? this.commentsUrl,
  createdAt: createdAt ?? this.createdAt,
  draft: draft != null ? draft() : this.draft,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  labels: labels != null ? labels() : this.labels,
  labelsUrl: labelsUrl ?? this.labelsUrl,
  locked: locked != null ? locked() : this.locked,
  milestone: milestone != null ? milestone() : this.milestone,
  nodeId: nodeId ?? this.nodeId,
  number: number ?? this.number,
  performedViaGithubApp: performedViaGithubApp != null ? performedViaGithubApp() : this.performedViaGithubApp,
  pullRequest: pullRequest != null ? pullRequest() : this.pullRequest,
  reactions: reactions ?? this.reactions,
  repositoryUrl: repositoryUrl ?? this.repositoryUrl,
  subIssuesSummary: subIssuesSummary != null ? subIssuesSummary() : this.subIssuesSummary,
  issueDependenciesSummary: issueDependenciesSummary != null ? issueDependenciesSummary() : this.issueDependenciesSummary,
  issueFieldValues: issueFieldValues != null ? issueFieldValues() : this.issueFieldValues,
  state: state != null ? state() : this.state,
  stateReason: stateReason != null ? stateReason() : this.stateReason,
  timelineUrl: timelineUrl != null ? timelineUrl() : this.timelineUrl,
  title: title ?? this.title,
  type: type != null ? type() : this.type,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
  pinnedComment: pinnedComment != null ? pinnedComment() : this.pinnedComment,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssuesOpenedIssue &&
          activeLockReason == other.activeLockReason &&
          assignee == other.assignee &&
          listEquals(assignees, other.assignees) &&
          authorAssociation == other.authorAssociation &&
          body == other.body &&
          closedAt == other.closedAt &&
          comments == other.comments &&
          commentsUrl == other.commentsUrl &&
          createdAt == other.createdAt &&
          draft == other.draft &&
          eventsUrl == other.eventsUrl &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          listEquals(labels, other.labels) &&
          labelsUrl == other.labelsUrl &&
          locked == other.locked &&
          milestone == other.milestone &&
          nodeId == other.nodeId &&
          number == other.number &&
          performedViaGithubApp == other.performedViaGithubApp &&
          pullRequest == other.pullRequest &&
          reactions == other.reactions &&
          repositoryUrl == other.repositoryUrl &&
          subIssuesSummary == other.subIssuesSummary &&
          issueDependenciesSummary == other.issueDependenciesSummary &&
          listEquals(issueFieldValues, other.issueFieldValues) &&
          state == other.state &&
          stateReason == other.stateReason &&
          timelineUrl == other.timelineUrl &&
          title == other.title &&
          type == other.type &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          pinnedComment == other.pinnedComment &&
          user == other.user; } 
@override int get hashCode { return Object.hashAll([activeLockReason, assignee, Object.hashAll(assignees), authorAssociation, body, closedAt, comments, commentsUrl, createdAt, draft, eventsUrl, htmlUrl, id, Object.hashAll(labels ?? const []), labelsUrl, locked, milestone, nodeId, number, performedViaGithubApp, pullRequest, reactions, repositoryUrl, subIssuesSummary, issueDependenciesSummary, Object.hashAll(issueFieldValues ?? const []), state, stateReason, timelineUrl, title, type, updatedAt, url, pinnedComment, user]); } 
@override String toString() { return 'WebhookIssuesOpenedIssue(activeLockReason: $activeLockReason, assignee: $assignee, assignees: $assignees, authorAssociation: $authorAssociation, body: $body, closedAt: $closedAt, comments: $comments, commentsUrl: $commentsUrl, createdAt: $createdAt, draft: $draft, eventsUrl: $eventsUrl, htmlUrl: $htmlUrl, id: $id, labels: $labels, labelsUrl: $labelsUrl, locked: $locked, milestone: $milestone, nodeId: $nodeId, number: $number, performedViaGithubApp: $performedViaGithubApp, pullRequest: $pullRequest, reactions: $reactions, repositoryUrl: $repositoryUrl, subIssuesSummary: $subIssuesSummary, issueDependenciesSummary: $issueDependenciesSummary, issueFieldValues: $issueFieldValues, state: $state, stateReason: $stateReason, timelineUrl: $timelineUrl, title: $title, type: $type, updatedAt: $updatedAt, url: $url, pinnedComment: $pinnedComment, user: $user)'; } 
 }
