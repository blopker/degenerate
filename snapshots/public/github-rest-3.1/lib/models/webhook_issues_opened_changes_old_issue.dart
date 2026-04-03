// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issue_comment.dart';import 'issue_dependencies_summary.dart';import 'issue_field_value.dart';import 'issue_type.dart';import 'sub_issues_summary.dart';import 'webhook_issues_opened_changes_old_issue_assignee.dart';import 'webhook_issues_opened_changes_old_issue_assignees.dart';import 'webhook_issues_opened_changes_old_issue_labels.dart';import 'webhook_issues_opened_changes_old_issue_milestone.dart';import 'webhook_issues_opened_changes_old_issue_performed_via_github_app.dart';import 'webhook_issues_opened_changes_old_issue_pull_request.dart';import 'webhook_issues_opened_changes_old_issue_reactions.dart';import 'webhook_issues_opened_changes_old_issue_user.dart';@immutable final class WebhookIssuesOpenedChangesOldIssueActiveLockReason {const WebhookIssuesOpenedChangesOldIssueActiveLockReason._(this.value);

factory WebhookIssuesOpenedChangesOldIssueActiveLockReason.fromJson(String json) { return switch (json) {
  'resolved' => resolved,
  'off-topic' => offTopic,
  'too heated' => tooHeated,
  'spam' => spam,
  'null' => $null,
  _ => WebhookIssuesOpenedChangesOldIssueActiveLockReason._(json),
}; }

static const WebhookIssuesOpenedChangesOldIssueActiveLockReason resolved = WebhookIssuesOpenedChangesOldIssueActiveLockReason._('resolved');

static const WebhookIssuesOpenedChangesOldIssueActiveLockReason offTopic = WebhookIssuesOpenedChangesOldIssueActiveLockReason._('off-topic');

static const WebhookIssuesOpenedChangesOldIssueActiveLockReason tooHeated = WebhookIssuesOpenedChangesOldIssueActiveLockReason._('too heated');

static const WebhookIssuesOpenedChangesOldIssueActiveLockReason spam = WebhookIssuesOpenedChangesOldIssueActiveLockReason._('spam');

static const WebhookIssuesOpenedChangesOldIssueActiveLockReason $null = WebhookIssuesOpenedChangesOldIssueActiveLockReason._('null');

static const List<WebhookIssuesOpenedChangesOldIssueActiveLockReason> values = [resolved, offTopic, tooHeated, spam, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssuesOpenedChangesOldIssueActiveLockReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssuesOpenedChangesOldIssueActiveLockReason($value)'; } 
 }
/// How the author is associated with the repository.
@immutable final class WebhookIssuesOpenedChangesOldIssueAuthorAssociation {const WebhookIssuesOpenedChangesOldIssueAuthorAssociation._(this.value);

factory WebhookIssuesOpenedChangesOldIssueAuthorAssociation.fromJson(String json) { return switch (json) {
  'COLLABORATOR' => collaborator,
  'CONTRIBUTOR' => contributor,
  'FIRST_TIMER' => firstTimer,
  'FIRST_TIME_CONTRIBUTOR' => firstTimeContributor,
  'MANNEQUIN' => mannequin,
  'MEMBER' => member,
  'NONE' => none,
  'OWNER' => owner,
  _ => WebhookIssuesOpenedChangesOldIssueAuthorAssociation._(json),
}; }

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation collaborator = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('COLLABORATOR');

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation contributor = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('CONTRIBUTOR');

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation firstTimer = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('FIRST_TIMER');

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation firstTimeContributor = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('FIRST_TIME_CONTRIBUTOR');

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation mannequin = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('MANNEQUIN');

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation member = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('MEMBER');

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation none = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('NONE');

static const WebhookIssuesOpenedChangesOldIssueAuthorAssociation owner = WebhookIssuesOpenedChangesOldIssueAuthorAssociation._('OWNER');

static const List<WebhookIssuesOpenedChangesOldIssueAuthorAssociation> values = [collaborator, contributor, firstTimer, firstTimeContributor, mannequin, member, none, owner];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssuesOpenedChangesOldIssueAuthorAssociation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssuesOpenedChangesOldIssueAuthorAssociation($value)'; } 
 }
/// State of the issue; either 'open' or 'closed'
@immutable final class WebhookIssuesOpenedChangesOldIssueState {const WebhookIssuesOpenedChangesOldIssueState._(this.value);

factory WebhookIssuesOpenedChangesOldIssueState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => WebhookIssuesOpenedChangesOldIssueState._(json),
}; }

static const WebhookIssuesOpenedChangesOldIssueState open = WebhookIssuesOpenedChangesOldIssueState._('open');

static const WebhookIssuesOpenedChangesOldIssueState closed = WebhookIssuesOpenedChangesOldIssueState._('closed');

static const List<WebhookIssuesOpenedChangesOldIssueState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssuesOpenedChangesOldIssueState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssuesOpenedChangesOldIssueState($value)'; } 
 }
/// The [issue](https://docs.github.com/rest/issues/issues#get-an-issue) itself.
@immutable final class WebhookIssuesOpenedChangesOldIssue {const WebhookIssuesOpenedChangesOldIssue({required this.number, required this.id, this.closedAt, this.authorAssociation, this.body, this.assignee, this.comments, this.commentsUrl, this.createdAt, this.draft, this.eventsUrl, this.htmlUrl, this.activeLockReason, this.labels, this.labelsUrl, this.locked, this.milestone, this.nodeId, this.assignees, this.performedViaGithubApp, this.pullRequest, this.reactions, this.type, this.subIssuesSummary, this.issueDependenciesSummary, this.issueFieldValues, this.state, this.stateReason, this.timelineUrl, this.title, this.updatedAt, this.url, this.pinnedComment, this.user, this.repositoryUrl, });

factory WebhookIssuesOpenedChangesOldIssue.fromJson(Map<String, dynamic> json) { return WebhookIssuesOpenedChangesOldIssue(
  activeLockReason: json['active_lock_reason'] != null ? WebhookIssuesOpenedChangesOldIssueActiveLockReason.fromJson(json['active_lock_reason'] as String) : null,
  assignee: json['assignee'] != null ? WebhookIssuesOpenedChangesOldIssueAssignee.fromJson(json['assignee'] as Map<String, dynamic>) : null,
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => WebhookIssuesOpenedChangesOldIssueAssignees.fromJson(e as Map<String, dynamic>)).toList(),
  authorAssociation: json['author_association'] != null ? WebhookIssuesOpenedChangesOldIssueAuthorAssociation.fromJson(json['author_association'] as String) : null,
  body: json['body'] as String?,
  closedAt: json['closed_at'] != null ? DateTime.parse(json['closed_at'] as String) : null,
  comments: json['comments'] != null ? (json['comments'] as num).toInt() : null,
  commentsUrl: json['comments_url'] != null ? Uri.parse(json['comments_url'] as String) : null,
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  draft: json['draft'] as bool?,
  eventsUrl: json['events_url'] != null ? Uri.parse(json['events_url'] as String) : null,
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  id: (json['id'] as num).toInt(),
  labels: (json['labels'] as List<dynamic>?)?.map((e) => WebhookIssuesOpenedChangesOldIssueLabels.fromJson(e as Map<String, dynamic>)).toList(),
  labelsUrl: json['labels_url'] as String?,
  locked: json['locked'] as bool?,
  milestone: json['milestone'] != null ? WebhookIssuesOpenedChangesOldIssueMilestone.fromJson(json['milestone'] as Map<String, dynamic>) : null,
  nodeId: json['node_id'] as String?,
  number: (json['number'] as num).toInt(),
  performedViaGithubApp: json['performed_via_github_app'] != null ? WebhookIssuesOpenedChangesOldIssuePerformedViaGithubApp.fromJson(json['performed_via_github_app'] as Map<String, dynamic>) : null,
  pullRequest: json['pull_request'] != null ? WebhookIssuesOpenedChangesOldIssuePullRequest.fromJson(json['pull_request'] as Map<String, dynamic>) : null,
  reactions: json['reactions'] != null ? WebhookIssuesOpenedChangesOldIssueReactions.fromJson(json['reactions'] as Map<String, dynamic>) : null,
  repositoryUrl: json['repository_url'] != null ? Uri.parse(json['repository_url'] as String) : null,
  subIssuesSummary: json['sub_issues_summary'] != null ? SubIssuesSummary.fromJson(json['sub_issues_summary'] as Map<String, dynamic>) : null,
  issueDependenciesSummary: json['issue_dependencies_summary'] != null ? IssueDependenciesSummary.fromJson(json['issue_dependencies_summary'] as Map<String, dynamic>) : null,
  issueFieldValues: (json['issue_field_values'] as List<dynamic>?)?.map((e) => IssueFieldValue.fromJson(e as Map<String, dynamic>)).toList(),
  state: json['state'] != null ? WebhookIssuesOpenedChangesOldIssueState.fromJson(json['state'] as String) : null,
  stateReason: json['state_reason'] as String?,
  timelineUrl: json['timeline_url'] != null ? Uri.parse(json['timeline_url'] as String) : null,
  title: json['title'] as String?,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  pinnedComment: json['pinned_comment'] != null ? IssueComment.fromJson(json['pinned_comment'] as Map<String, dynamic>) : null,
  user: json['user'] != null ? WebhookIssuesOpenedChangesOldIssueUser.fromJson(json['user'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? IssueType.fromJson(json['type'] as Map<String, dynamic>) : null,
); }

final WebhookIssuesOpenedChangesOldIssueActiveLockReason? activeLockReason;

final WebhookIssuesOpenedChangesOldIssueAssignee? assignee;

final List<WebhookIssuesOpenedChangesOldIssueAssignees?>? assignees;

/// How the author is associated with the repository.
final WebhookIssuesOpenedChangesOldIssueAuthorAssociation? authorAssociation;

/// Contents of the issue
final String? body;

final DateTime? closedAt;

final int? comments;

final Uri? commentsUrl;

final DateTime? createdAt;

final bool? draft;

final Uri? eventsUrl;

final Uri? htmlUrl;

final int id;

final List<WebhookIssuesOpenedChangesOldIssueLabels>? labels;

final String? labelsUrl;

final bool? locked;

/// A collection of related issues and pull requests.
final WebhookIssuesOpenedChangesOldIssueMilestone? milestone;

final String? nodeId;

final int number;

/// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
final WebhookIssuesOpenedChangesOldIssuePerformedViaGithubApp? performedViaGithubApp;

final WebhookIssuesOpenedChangesOldIssuePullRequest? pullRequest;

final WebhookIssuesOpenedChangesOldIssueReactions? reactions;

final Uri? repositoryUrl;

final SubIssuesSummary? subIssuesSummary;

final IssueDependenciesSummary? issueDependenciesSummary;

final List<IssueFieldValue>? issueFieldValues;

/// State of the issue; either 'open' or 'closed'
final WebhookIssuesOpenedChangesOldIssueState? state;

final String? stateReason;

final Uri? timelineUrl;

/// Title of the issue
final String? title;

final DateTime? updatedAt;

/// URL for the issue
final Uri? url;

final IssueComment? pinnedComment;

final WebhookIssuesOpenedChangesOldIssueUser? user;

final IssueType? type;

Map<String, dynamic> toJson() { return {
  if (activeLockReason != null) 'active_lock_reason': activeLockReason?.toJson(),
  if (assignee != null) 'assignee': assignee?.toJson(),
  if (assignees != null) 'assignees': assignees?.map((e) => e?.toJson()).toList(),
  if (authorAssociation != null) 'author_association': authorAssociation?.toJson(),
  'body': ?body,
  if (closedAt != null) 'closed_at': closedAt?.toIso8601String(),
  'comments': ?comments,
  if (commentsUrl != null) 'comments_url': commentsUrl?.toString(),
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'draft': ?draft,
  if (eventsUrl != null) 'events_url': eventsUrl?.toString(),
  if (htmlUrl != null) 'html_url': htmlUrl?.toString(),
  'id': id,
  if (labels != null) 'labels': labels?.map((e) => e.toJson()).toList(),
  'labels_url': ?labelsUrl,
  'locked': ?locked,
  if (milestone != null) 'milestone': milestone?.toJson(),
  'node_id': ?nodeId,
  'number': number,
  if (performedViaGithubApp != null) 'performed_via_github_app': performedViaGithubApp?.toJson(),
  if (pullRequest != null) 'pull_request': pullRequest?.toJson(),
  if (reactions != null) 'reactions': reactions?.toJson(),
  if (repositoryUrl != null) 'repository_url': repositoryUrl?.toString(),
  if (subIssuesSummary != null) 'sub_issues_summary': subIssuesSummary?.toJson(),
  if (issueDependenciesSummary != null) 'issue_dependencies_summary': issueDependenciesSummary?.toJson(),
  if (issueFieldValues != null) 'issue_field_values': issueFieldValues?.map((e) => e.toJson()).toList(),
  if (state != null) 'state': state?.toJson(),
  'state_reason': ?stateReason,
  if (timelineUrl != null) 'timeline_url': timelineUrl?.toString(),
  'title': ?title,
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  if (url != null) 'url': url?.toString(),
  if (pinnedComment != null) 'pinned_comment': pinnedComment?.toJson(),
  if (user != null) 'user': user?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('number') && json['number'] is num; } 
WebhookIssuesOpenedChangesOldIssue copyWith({WebhookIssuesOpenedChangesOldIssueActiveLockReason? Function()? activeLockReason, WebhookIssuesOpenedChangesOldIssueAssignee? Function()? assignee, List<WebhookIssuesOpenedChangesOldIssueAssignees> Function()? assignees, WebhookIssuesOpenedChangesOldIssueAuthorAssociation Function()? authorAssociation, String? Function()? body, DateTime? Function()? closedAt, int Function()? comments, Uri Function()? commentsUrl, DateTime Function()? createdAt, bool Function()? draft, Uri Function()? eventsUrl, Uri Function()? htmlUrl, int? id, List<WebhookIssuesOpenedChangesOldIssueLabels> Function()? labels, String Function()? labelsUrl, bool Function()? locked, WebhookIssuesOpenedChangesOldIssueMilestone? Function()? milestone, String Function()? nodeId, int? number, WebhookIssuesOpenedChangesOldIssuePerformedViaGithubApp? Function()? performedViaGithubApp, WebhookIssuesOpenedChangesOldIssuePullRequest Function()? pullRequest, WebhookIssuesOpenedChangesOldIssueReactions Function()? reactions, Uri Function()? repositoryUrl, SubIssuesSummary Function()? subIssuesSummary, IssueDependenciesSummary Function()? issueDependenciesSummary, List<IssueFieldValue> Function()? issueFieldValues, WebhookIssuesOpenedChangesOldIssueState Function()? state, String? Function()? stateReason, Uri Function()? timelineUrl, String Function()? title, DateTime Function()? updatedAt, Uri Function()? url, IssueComment? Function()? pinnedComment, WebhookIssuesOpenedChangesOldIssueUser? Function()? user, IssueType Function()? type, }) { return WebhookIssuesOpenedChangesOldIssue(
  activeLockReason: activeLockReason != null ? activeLockReason() : this.activeLockReason,
  assignee: assignee != null ? assignee() : this.assignee,
  assignees: assignees != null ? assignees() : this.assignees,
  authorAssociation: authorAssociation != null ? authorAssociation() : this.authorAssociation,
  body: body != null ? body() : this.body,
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  comments: comments != null ? comments() : this.comments,
  commentsUrl: commentsUrl != null ? commentsUrl() : this.commentsUrl,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  draft: draft != null ? draft() : this.draft,
  eventsUrl: eventsUrl != null ? eventsUrl() : this.eventsUrl,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  id: id ?? this.id,
  labels: labels != null ? labels() : this.labels,
  labelsUrl: labelsUrl != null ? labelsUrl() : this.labelsUrl,
  locked: locked != null ? locked() : this.locked,
  milestone: milestone != null ? milestone() : this.milestone,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  number: number ?? this.number,
  performedViaGithubApp: performedViaGithubApp != null ? performedViaGithubApp() : this.performedViaGithubApp,
  pullRequest: pullRequest != null ? pullRequest() : this.pullRequest,
  reactions: reactions != null ? reactions() : this.reactions,
  repositoryUrl: repositoryUrl != null ? repositoryUrl() : this.repositoryUrl,
  subIssuesSummary: subIssuesSummary != null ? subIssuesSummary() : this.subIssuesSummary,
  issueDependenciesSummary: issueDependenciesSummary != null ? issueDependenciesSummary() : this.issueDependenciesSummary,
  issueFieldValues: issueFieldValues != null ? issueFieldValues() : this.issueFieldValues,
  state: state != null ? state() : this.state,
  stateReason: stateReason != null ? stateReason() : this.stateReason,
  timelineUrl: timelineUrl != null ? timelineUrl() : this.timelineUrl,
  title: title != null ? title() : this.title,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url != null ? url() : this.url,
  pinnedComment: pinnedComment != null ? pinnedComment() : this.pinnedComment,
  user: user != null ? user() : this.user,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssuesOpenedChangesOldIssue &&
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
          updatedAt == other.updatedAt &&
          url == other.url &&
          pinnedComment == other.pinnedComment &&
          user == other.user &&
          type == other.type; } 
@override int get hashCode { return Object.hashAll([activeLockReason, assignee, Object.hashAll(assignees ?? const []), authorAssociation, body, closedAt, comments, commentsUrl, createdAt, draft, eventsUrl, htmlUrl, id, Object.hashAll(labels ?? const []), labelsUrl, locked, milestone, nodeId, number, performedViaGithubApp, pullRequest, reactions, repositoryUrl, subIssuesSummary, issueDependenciesSummary, Object.hashAll(issueFieldValues ?? const []), state, stateReason, timelineUrl, title, updatedAt, url, pinnedComment, user, type]); } 
@override String toString() { return 'WebhookIssuesOpenedChangesOldIssue(activeLockReason: $activeLockReason, assignee: $assignee, assignees: $assignees, authorAssociation: $authorAssociation, body: $body, closedAt: $closedAt, comments: $comments, commentsUrl: $commentsUrl, createdAt: $createdAt, draft: $draft, eventsUrl: $eventsUrl, htmlUrl: $htmlUrl, id: $id, labels: $labels, labelsUrl: $labelsUrl, locked: $locked, milestone: $milestone, nodeId: $nodeId, number: $number, performedViaGithubApp: $performedViaGithubApp, pullRequest: $pullRequest, reactions: $reactions, repositoryUrl: $repositoryUrl, subIssuesSummary: $subIssuesSummary, issueDependenciesSummary: $issueDependenciesSummary, issueFieldValues: $issueFieldValues, state: $state, stateReason: $stateReason, timelineUrl: $timelineUrl, title: $title, updatedAt: $updatedAt, url: $url, pinnedComment: $pinnedComment, user: $user, type: $type)'; } 
 }
