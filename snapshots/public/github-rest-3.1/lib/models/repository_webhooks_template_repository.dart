// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_webhooks_template_repository_owner.dart';import 'repository_webhooks_template_repository_permissions.dart';/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
final class RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle {const RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle._(this.value);

factory RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'COMMIT_OR_PR_TITLE' => commitOrPrTitle,
  _ => RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle._(json),
}; }

static const RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle prTitle = RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle._('PR_TITLE');

static const RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle commitOrPrTitle = RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle._('COMMIT_OR_PR_TITLE');

static const List<RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle> values = [prTitle, commitOrPrTitle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle($value)'; } 
 }
/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
final class RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage {const RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage._(this.value);

factory RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'COMMIT_MESSAGES' => commitMessages,
  'BLANK' => blank,
  _ => RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage._(json),
}; }

static const RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage prBody = RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage._('PR_BODY');

static const RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage commitMessages = RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage._('COMMIT_MESSAGES');

static const RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage blank = RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage._('BLANK');

static const List<RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage> values = [prBody, commitMessages, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage($value)'; } 
 }
/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
final class RepositoryWebhooksTemplateRepositoryMergeCommitTitle {const RepositoryWebhooksTemplateRepositoryMergeCommitTitle._(this.value);

factory RepositoryWebhooksTemplateRepositoryMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'MERGE_MESSAGE' => mergeMessage,
  _ => RepositoryWebhooksTemplateRepositoryMergeCommitTitle._(json),
}; }

static const RepositoryWebhooksTemplateRepositoryMergeCommitTitle prTitle = RepositoryWebhooksTemplateRepositoryMergeCommitTitle._('PR_TITLE');

static const RepositoryWebhooksTemplateRepositoryMergeCommitTitle mergeMessage = RepositoryWebhooksTemplateRepositoryMergeCommitTitle._('MERGE_MESSAGE');

static const List<RepositoryWebhooksTemplateRepositoryMergeCommitTitle> values = [prTitle, mergeMessage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryWebhooksTemplateRepositoryMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryWebhooksTemplateRepositoryMergeCommitTitle($value)'; } 
 }
/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
final class RepositoryWebhooksTemplateRepositoryMergeCommitMessage {const RepositoryWebhooksTemplateRepositoryMergeCommitMessage._(this.value);

factory RepositoryWebhooksTemplateRepositoryMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'PR_TITLE' => prTitle,
  'BLANK' => blank,
  _ => RepositoryWebhooksTemplateRepositoryMergeCommitMessage._(json),
}; }

static const RepositoryWebhooksTemplateRepositoryMergeCommitMessage prBody = RepositoryWebhooksTemplateRepositoryMergeCommitMessage._('PR_BODY');

static const RepositoryWebhooksTemplateRepositoryMergeCommitMessage prTitle = RepositoryWebhooksTemplateRepositoryMergeCommitMessage._('PR_TITLE');

static const RepositoryWebhooksTemplateRepositoryMergeCommitMessage blank = RepositoryWebhooksTemplateRepositoryMergeCommitMessage._('BLANK');

static const List<RepositoryWebhooksTemplateRepositoryMergeCommitMessage> values = [prBody, prTitle, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryWebhooksTemplateRepositoryMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryWebhooksTemplateRepositoryMergeCommitMessage($value)'; } 
 }
final class RepositoryWebhooksTemplateRepository {const RepositoryWebhooksTemplateRepository({this.id, this.nodeId, this.name, this.fullName, this.owner, this.private, this.htmlUrl, this.description, this.fork, this.url, this.archiveUrl, this.assigneesUrl, this.blobsUrl, this.branchesUrl, this.collaboratorsUrl, this.commentsUrl, this.commitsUrl, this.compareUrl, this.contentsUrl, this.contributorsUrl, this.deploymentsUrl, this.downloadsUrl, this.eventsUrl, this.forksUrl, this.gitCommitsUrl, this.gitRefsUrl, this.gitTagsUrl, this.gitUrl, this.issueCommentUrl, this.issueEventsUrl, this.issuesUrl, this.keysUrl, this.labelsUrl, this.languagesUrl, this.mergesUrl, this.milestonesUrl, this.notificationsUrl, this.pullsUrl, this.releasesUrl, this.sshUrl, this.stargazersUrl, this.statusesUrl, this.subscribersUrl, this.subscriptionUrl, this.tagsUrl, this.teamsUrl, this.treesUrl, this.cloneUrl, this.mirrorUrl, this.hooksUrl, this.svnUrl, this.homepage, this.language, this.forksCount, this.stargazersCount, this.watchersCount, this.size, this.defaultBranch, this.openIssuesCount, this.isTemplate, this.topics, this.hasIssues, this.hasProjects, this.hasWiki, this.hasPages, this.hasDownloads, this.archived, this.disabled, this.visibility, this.pushedAt, this.createdAt, this.updatedAt, this.permissions, this.allowRebaseMerge, this.tempCloneToken, this.allowSquashMerge, this.allowAutoMerge, this.deleteBranchOnMerge, this.allowUpdateBranch, this.useSquashPrTitleAsDefault, this.squashMergeCommitTitle, this.squashMergeCommitMessage, this.mergeCommitTitle, this.mergeCommitMessage, this.allowMergeCommit, this.subscribersCount, this.networkCount, });

factory RepositoryWebhooksTemplateRepository.fromJson(Map<String, dynamic> json) { return RepositoryWebhooksTemplateRepository(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  nodeId: json['node_id'] as String?,
  name: json['name'] as String?,
  fullName: json['full_name'] as String?,
  owner: json['owner'] != null ? RepositoryWebhooksTemplateRepositoryOwner.fromJson(json['owner'] as Map<String, dynamic>) : null,
  private: json['private'] as bool?,
  htmlUrl: json['html_url'] as String?,
  description: json['description'] as String?,
  fork: json['fork'] as bool?,
  url: json['url'] as String?,
  archiveUrl: json['archive_url'] as String?,
  assigneesUrl: json['assignees_url'] as String?,
  blobsUrl: json['blobs_url'] as String?,
  branchesUrl: json['branches_url'] as String?,
  collaboratorsUrl: json['collaborators_url'] as String?,
  commentsUrl: json['comments_url'] as String?,
  commitsUrl: json['commits_url'] as String?,
  compareUrl: json['compare_url'] as String?,
  contentsUrl: json['contents_url'] as String?,
  contributorsUrl: json['contributors_url'] as String?,
  deploymentsUrl: json['deployments_url'] as String?,
  downloadsUrl: json['downloads_url'] as String?,
  eventsUrl: json['events_url'] as String?,
  forksUrl: json['forks_url'] as String?,
  gitCommitsUrl: json['git_commits_url'] as String?,
  gitRefsUrl: json['git_refs_url'] as String?,
  gitTagsUrl: json['git_tags_url'] as String?,
  gitUrl: json['git_url'] as String?,
  issueCommentUrl: json['issue_comment_url'] as String?,
  issueEventsUrl: json['issue_events_url'] as String?,
  issuesUrl: json['issues_url'] as String?,
  keysUrl: json['keys_url'] as String?,
  labelsUrl: json['labels_url'] as String?,
  languagesUrl: json['languages_url'] as String?,
  mergesUrl: json['merges_url'] as String?,
  milestonesUrl: json['milestones_url'] as String?,
  notificationsUrl: json['notifications_url'] as String?,
  pullsUrl: json['pulls_url'] as String?,
  releasesUrl: json['releases_url'] as String?,
  sshUrl: json['ssh_url'] as String?,
  stargazersUrl: json['stargazers_url'] as String?,
  statusesUrl: json['statuses_url'] as String?,
  subscribersUrl: json['subscribers_url'] as String?,
  subscriptionUrl: json['subscription_url'] as String?,
  tagsUrl: json['tags_url'] as String?,
  teamsUrl: json['teams_url'] as String?,
  treesUrl: json['trees_url'] as String?,
  cloneUrl: json['clone_url'] as String?,
  mirrorUrl: json['mirror_url'] as String?,
  hooksUrl: json['hooks_url'] as String?,
  svnUrl: json['svn_url'] as String?,
  homepage: json['homepage'] as String?,
  language: json['language'] as String?,
  forksCount: json['forks_count'] != null ? (json['forks_count'] as num).toInt() : null,
  stargazersCount: json['stargazers_count'] != null ? (json['stargazers_count'] as num).toInt() : null,
  watchersCount: json['watchers_count'] != null ? (json['watchers_count'] as num).toInt() : null,
  size: json['size'] != null ? (json['size'] as num).toInt() : null,
  defaultBranch: json['default_branch'] as String?,
  openIssuesCount: json['open_issues_count'] != null ? (json['open_issues_count'] as num).toInt() : null,
  isTemplate: json['is_template'] as bool?,
  topics: (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
  hasIssues: json['has_issues'] as bool?,
  hasProjects: json['has_projects'] as bool?,
  hasWiki: json['has_wiki'] as bool?,
  hasPages: json['has_pages'] as bool?,
  hasDownloads: json['has_downloads'] as bool?,
  archived: json['archived'] as bool?,
  disabled: json['disabled'] as bool?,
  visibility: json['visibility'] as String?,
  pushedAt: json['pushed_at'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  permissions: json['permissions'] != null ? RepositoryWebhooksTemplateRepositoryPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  allowRebaseMerge: json['allow_rebase_merge'] as bool?,
  tempCloneToken: json['temp_clone_token'] as String?,
  allowSquashMerge: json['allow_squash_merge'] as bool?,
  allowAutoMerge: json['allow_auto_merge'] as bool?,
  deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
  allowUpdateBranch: json['allow_update_branch'] as bool?,
  useSquashPrTitleAsDefault: json['use_squash_pr_title_as_default'] as bool?,
  squashMergeCommitTitle: json['squash_merge_commit_title'] != null ? RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle.fromJson(json['squash_merge_commit_title'] as String) : null,
  squashMergeCommitMessage: json['squash_merge_commit_message'] != null ? RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage.fromJson(json['squash_merge_commit_message'] as String) : null,
  mergeCommitTitle: json['merge_commit_title'] != null ? RepositoryWebhooksTemplateRepositoryMergeCommitTitle.fromJson(json['merge_commit_title'] as String) : null,
  mergeCommitMessage: json['merge_commit_message'] != null ? RepositoryWebhooksTemplateRepositoryMergeCommitMessage.fromJson(json['merge_commit_message'] as String) : null,
  allowMergeCommit: json['allow_merge_commit'] as bool?,
  subscribersCount: json['subscribers_count'] != null ? (json['subscribers_count'] as num).toInt() : null,
  networkCount: json['network_count'] != null ? (json['network_count'] as num).toInt() : null,
); }

final int? id;

final String? nodeId;

final String? name;

final String? fullName;

final RepositoryWebhooksTemplateRepositoryOwner? owner;

final bool? private;

final String? htmlUrl;

final String? description;

final bool? fork;

final String? url;

final String? archiveUrl;

final String? assigneesUrl;

final String? blobsUrl;

final String? branchesUrl;

final String? collaboratorsUrl;

final String? commentsUrl;

final String? commitsUrl;

final String? compareUrl;

final String? contentsUrl;

final String? contributorsUrl;

final String? deploymentsUrl;

final String? downloadsUrl;

final String? eventsUrl;

final String? forksUrl;

final String? gitCommitsUrl;

final String? gitRefsUrl;

final String? gitTagsUrl;

final String? gitUrl;

final String? issueCommentUrl;

final String? issueEventsUrl;

final String? issuesUrl;

final String? keysUrl;

final String? labelsUrl;

final String? languagesUrl;

final String? mergesUrl;

final String? milestonesUrl;

final String? notificationsUrl;

final String? pullsUrl;

final String? releasesUrl;

final String? sshUrl;

final String? stargazersUrl;

final String? statusesUrl;

final String? subscribersUrl;

final String? subscriptionUrl;

final String? tagsUrl;

final String? teamsUrl;

final String? treesUrl;

final String? cloneUrl;

final String? mirrorUrl;

final String? hooksUrl;

final String? svnUrl;

final String? homepage;

final String? language;

final int? forksCount;

final int? stargazersCount;

final int? watchersCount;

final int? size;

final String? defaultBranch;

final int? openIssuesCount;

final bool? isTemplate;

final List<String>? topics;

final bool? hasIssues;

final bool? hasProjects;

final bool? hasWiki;

final bool? hasPages;

final bool? hasDownloads;

final bool? archived;

final bool? disabled;

final String? visibility;

final String? pushedAt;

final String? createdAt;

final String? updatedAt;

final RepositoryWebhooksTemplateRepositoryPermissions? permissions;

final bool? allowRebaseMerge;

final String? tempCloneToken;

final bool? allowSquashMerge;

final bool? allowAutoMerge;

final bool? deleteBranchOnMerge;

final bool? allowUpdateBranch;

final bool? useSquashPrTitleAsDefault;

/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
final RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle? squashMergeCommitTitle;

/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
final RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage? squashMergeCommitMessage;

/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
final RepositoryWebhooksTemplateRepositoryMergeCommitTitle? mergeCommitTitle;

/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
final RepositoryWebhooksTemplateRepositoryMergeCommitMessage? mergeCommitMessage;

final bool? allowMergeCommit;

final int? subscribersCount;

final int? networkCount;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'node_id': ?nodeId,
  'name': ?name,
  'full_name': ?fullName,
  if (owner != null) 'owner': owner?.toJson(),
  'private': ?private,
  'html_url': ?htmlUrl,
  'description': ?description,
  'fork': ?fork,
  'url': ?url,
  'archive_url': ?archiveUrl,
  'assignees_url': ?assigneesUrl,
  'blobs_url': ?blobsUrl,
  'branches_url': ?branchesUrl,
  'collaborators_url': ?collaboratorsUrl,
  'comments_url': ?commentsUrl,
  'commits_url': ?commitsUrl,
  'compare_url': ?compareUrl,
  'contents_url': ?contentsUrl,
  'contributors_url': ?contributorsUrl,
  'deployments_url': ?deploymentsUrl,
  'downloads_url': ?downloadsUrl,
  'events_url': ?eventsUrl,
  'forks_url': ?forksUrl,
  'git_commits_url': ?gitCommitsUrl,
  'git_refs_url': ?gitRefsUrl,
  'git_tags_url': ?gitTagsUrl,
  'git_url': ?gitUrl,
  'issue_comment_url': ?issueCommentUrl,
  'issue_events_url': ?issueEventsUrl,
  'issues_url': ?issuesUrl,
  'keys_url': ?keysUrl,
  'labels_url': ?labelsUrl,
  'languages_url': ?languagesUrl,
  'merges_url': ?mergesUrl,
  'milestones_url': ?milestonesUrl,
  'notifications_url': ?notificationsUrl,
  'pulls_url': ?pullsUrl,
  'releases_url': ?releasesUrl,
  'ssh_url': ?sshUrl,
  'stargazers_url': ?stargazersUrl,
  'statuses_url': ?statusesUrl,
  'subscribers_url': ?subscribersUrl,
  'subscription_url': ?subscriptionUrl,
  'tags_url': ?tagsUrl,
  'teams_url': ?teamsUrl,
  'trees_url': ?treesUrl,
  'clone_url': ?cloneUrl,
  'mirror_url': ?mirrorUrl,
  'hooks_url': ?hooksUrl,
  'svn_url': ?svnUrl,
  'homepage': ?homepage,
  'language': ?language,
  'forks_count': ?forksCount,
  'stargazers_count': ?stargazersCount,
  'watchers_count': ?watchersCount,
  'size': ?size,
  'default_branch': ?defaultBranch,
  'open_issues_count': ?openIssuesCount,
  'is_template': ?isTemplate,
  'topics': ?topics,
  'has_issues': ?hasIssues,
  'has_projects': ?hasProjects,
  'has_wiki': ?hasWiki,
  'has_pages': ?hasPages,
  'has_downloads': ?hasDownloads,
  'archived': ?archived,
  'disabled': ?disabled,
  'visibility': ?visibility,
  'pushed_at': ?pushedAt,
  'created_at': ?createdAt,
  'updated_at': ?updatedAt,
  if (permissions != null) 'permissions': permissions?.toJson(),
  'allow_rebase_merge': ?allowRebaseMerge,
  'temp_clone_token': ?tempCloneToken,
  'allow_squash_merge': ?allowSquashMerge,
  'allow_auto_merge': ?allowAutoMerge,
  'delete_branch_on_merge': ?deleteBranchOnMerge,
  'allow_update_branch': ?allowUpdateBranch,
  'use_squash_pr_title_as_default': ?useSquashPrTitleAsDefault,
  if (squashMergeCommitTitle != null) 'squash_merge_commit_title': squashMergeCommitTitle?.toJson(),
  if (squashMergeCommitMessage != null) 'squash_merge_commit_message': squashMergeCommitMessage?.toJson(),
  if (mergeCommitTitle != null) 'merge_commit_title': mergeCommitTitle?.toJson(),
  if (mergeCommitMessage != null) 'merge_commit_message': mergeCommitMessage?.toJson(),
  'allow_merge_commit': ?allowMergeCommit,
  'subscribers_count': ?subscribersCount,
  'network_count': ?networkCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RepositoryWebhooksTemplateRepository copyWith({int Function()? id, String Function()? nodeId, String Function()? name, String Function()? fullName, RepositoryWebhooksTemplateRepositoryOwner Function()? owner, bool Function()? private, String Function()? htmlUrl, String Function()? description, bool Function()? fork, String Function()? url, String Function()? archiveUrl, String Function()? assigneesUrl, String Function()? blobsUrl, String Function()? branchesUrl, String Function()? collaboratorsUrl, String Function()? commentsUrl, String Function()? commitsUrl, String Function()? compareUrl, String Function()? contentsUrl, String Function()? contributorsUrl, String Function()? deploymentsUrl, String Function()? downloadsUrl, String Function()? eventsUrl, String Function()? forksUrl, String Function()? gitCommitsUrl, String Function()? gitRefsUrl, String Function()? gitTagsUrl, String Function()? gitUrl, String Function()? issueCommentUrl, String Function()? issueEventsUrl, String Function()? issuesUrl, String Function()? keysUrl, String Function()? labelsUrl, String Function()? languagesUrl, String Function()? mergesUrl, String Function()? milestonesUrl, String Function()? notificationsUrl, String Function()? pullsUrl, String Function()? releasesUrl, String Function()? sshUrl, String Function()? stargazersUrl, String Function()? statusesUrl, String Function()? subscribersUrl, String Function()? subscriptionUrl, String Function()? tagsUrl, String Function()? teamsUrl, String Function()? treesUrl, String Function()? cloneUrl, String Function()? mirrorUrl, String Function()? hooksUrl, String Function()? svnUrl, String Function()? homepage, String Function()? language, int Function()? forksCount, int Function()? stargazersCount, int Function()? watchersCount, int Function()? size, String Function()? defaultBranch, int Function()? openIssuesCount, bool Function()? isTemplate, List<String> Function()? topics, bool Function()? hasIssues, bool Function()? hasProjects, bool Function()? hasWiki, bool Function()? hasPages, bool Function()? hasDownloads, bool Function()? archived, bool Function()? disabled, String Function()? visibility, String Function()? pushedAt, String Function()? createdAt, String Function()? updatedAt, RepositoryWebhooksTemplateRepositoryPermissions Function()? permissions, bool Function()? allowRebaseMerge, String Function()? tempCloneToken, bool Function()? allowSquashMerge, bool Function()? allowAutoMerge, bool Function()? deleteBranchOnMerge, bool Function()? allowUpdateBranch, bool Function()? useSquashPrTitleAsDefault, RepositoryWebhooksTemplateRepositorySquashMergeCommitTitle Function()? squashMergeCommitTitle, RepositoryWebhooksTemplateRepositorySquashMergeCommitMessage Function()? squashMergeCommitMessage, RepositoryWebhooksTemplateRepositoryMergeCommitTitle Function()? mergeCommitTitle, RepositoryWebhooksTemplateRepositoryMergeCommitMessage Function()? mergeCommitMessage, bool Function()? allowMergeCommit, int Function()? subscribersCount, int Function()? networkCount, }) { return RepositoryWebhooksTemplateRepository(
  id: id != null ? id() : this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  name: name != null ? name() : this.name,
  fullName: fullName != null ? fullName() : this.fullName,
  owner: owner != null ? owner() : this.owner,
  private: private != null ? private() : this.private,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  description: description != null ? description() : this.description,
  fork: fork != null ? fork() : this.fork,
  url: url != null ? url() : this.url,
  archiveUrl: archiveUrl != null ? archiveUrl() : this.archiveUrl,
  assigneesUrl: assigneesUrl != null ? assigneesUrl() : this.assigneesUrl,
  blobsUrl: blobsUrl != null ? blobsUrl() : this.blobsUrl,
  branchesUrl: branchesUrl != null ? branchesUrl() : this.branchesUrl,
  collaboratorsUrl: collaboratorsUrl != null ? collaboratorsUrl() : this.collaboratorsUrl,
  commentsUrl: commentsUrl != null ? commentsUrl() : this.commentsUrl,
  commitsUrl: commitsUrl != null ? commitsUrl() : this.commitsUrl,
  compareUrl: compareUrl != null ? compareUrl() : this.compareUrl,
  contentsUrl: contentsUrl != null ? contentsUrl() : this.contentsUrl,
  contributorsUrl: contributorsUrl != null ? contributorsUrl() : this.contributorsUrl,
  deploymentsUrl: deploymentsUrl != null ? deploymentsUrl() : this.deploymentsUrl,
  downloadsUrl: downloadsUrl != null ? downloadsUrl() : this.downloadsUrl,
  eventsUrl: eventsUrl != null ? eventsUrl() : this.eventsUrl,
  forksUrl: forksUrl != null ? forksUrl() : this.forksUrl,
  gitCommitsUrl: gitCommitsUrl != null ? gitCommitsUrl() : this.gitCommitsUrl,
  gitRefsUrl: gitRefsUrl != null ? gitRefsUrl() : this.gitRefsUrl,
  gitTagsUrl: gitTagsUrl != null ? gitTagsUrl() : this.gitTagsUrl,
  gitUrl: gitUrl != null ? gitUrl() : this.gitUrl,
  issueCommentUrl: issueCommentUrl != null ? issueCommentUrl() : this.issueCommentUrl,
  issueEventsUrl: issueEventsUrl != null ? issueEventsUrl() : this.issueEventsUrl,
  issuesUrl: issuesUrl != null ? issuesUrl() : this.issuesUrl,
  keysUrl: keysUrl != null ? keysUrl() : this.keysUrl,
  labelsUrl: labelsUrl != null ? labelsUrl() : this.labelsUrl,
  languagesUrl: languagesUrl != null ? languagesUrl() : this.languagesUrl,
  mergesUrl: mergesUrl != null ? mergesUrl() : this.mergesUrl,
  milestonesUrl: milestonesUrl != null ? milestonesUrl() : this.milestonesUrl,
  notificationsUrl: notificationsUrl != null ? notificationsUrl() : this.notificationsUrl,
  pullsUrl: pullsUrl != null ? pullsUrl() : this.pullsUrl,
  releasesUrl: releasesUrl != null ? releasesUrl() : this.releasesUrl,
  sshUrl: sshUrl != null ? sshUrl() : this.sshUrl,
  stargazersUrl: stargazersUrl != null ? stargazersUrl() : this.stargazersUrl,
  statusesUrl: statusesUrl != null ? statusesUrl() : this.statusesUrl,
  subscribersUrl: subscribersUrl != null ? subscribersUrl() : this.subscribersUrl,
  subscriptionUrl: subscriptionUrl != null ? subscriptionUrl() : this.subscriptionUrl,
  tagsUrl: tagsUrl != null ? tagsUrl() : this.tagsUrl,
  teamsUrl: teamsUrl != null ? teamsUrl() : this.teamsUrl,
  treesUrl: treesUrl != null ? treesUrl() : this.treesUrl,
  cloneUrl: cloneUrl != null ? cloneUrl() : this.cloneUrl,
  mirrorUrl: mirrorUrl != null ? mirrorUrl() : this.mirrorUrl,
  hooksUrl: hooksUrl != null ? hooksUrl() : this.hooksUrl,
  svnUrl: svnUrl != null ? svnUrl() : this.svnUrl,
  homepage: homepage != null ? homepage() : this.homepage,
  language: language != null ? language() : this.language,
  forksCount: forksCount != null ? forksCount() : this.forksCount,
  stargazersCount: stargazersCount != null ? stargazersCount() : this.stargazersCount,
  watchersCount: watchersCount != null ? watchersCount() : this.watchersCount,
  size: size != null ? size() : this.size,
  defaultBranch: defaultBranch != null ? defaultBranch() : this.defaultBranch,
  openIssuesCount: openIssuesCount != null ? openIssuesCount() : this.openIssuesCount,
  isTemplate: isTemplate != null ? isTemplate() : this.isTemplate,
  topics: topics != null ? topics() : this.topics,
  hasIssues: hasIssues != null ? hasIssues() : this.hasIssues,
  hasProjects: hasProjects != null ? hasProjects() : this.hasProjects,
  hasWiki: hasWiki != null ? hasWiki() : this.hasWiki,
  hasPages: hasPages != null ? hasPages() : this.hasPages,
  hasDownloads: hasDownloads != null ? hasDownloads() : this.hasDownloads,
  archived: archived != null ? archived() : this.archived,
  disabled: disabled != null ? disabled() : this.disabled,
  visibility: visibility != null ? visibility() : this.visibility,
  pushedAt: pushedAt != null ? pushedAt() : this.pushedAt,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  permissions: permissions != null ? permissions() : this.permissions,
  allowRebaseMerge: allowRebaseMerge != null ? allowRebaseMerge() : this.allowRebaseMerge,
  tempCloneToken: tempCloneToken != null ? tempCloneToken() : this.tempCloneToken,
  allowSquashMerge: allowSquashMerge != null ? allowSquashMerge() : this.allowSquashMerge,
  allowAutoMerge: allowAutoMerge != null ? allowAutoMerge() : this.allowAutoMerge,
  deleteBranchOnMerge: deleteBranchOnMerge != null ? deleteBranchOnMerge() : this.deleteBranchOnMerge,
  allowUpdateBranch: allowUpdateBranch != null ? allowUpdateBranch() : this.allowUpdateBranch,
  useSquashPrTitleAsDefault: useSquashPrTitleAsDefault != null ? useSquashPrTitleAsDefault() : this.useSquashPrTitleAsDefault,
  squashMergeCommitTitle: squashMergeCommitTitle != null ? squashMergeCommitTitle() : this.squashMergeCommitTitle,
  squashMergeCommitMessage: squashMergeCommitMessage != null ? squashMergeCommitMessage() : this.squashMergeCommitMessage,
  mergeCommitTitle: mergeCommitTitle != null ? mergeCommitTitle() : this.mergeCommitTitle,
  mergeCommitMessage: mergeCommitMessage != null ? mergeCommitMessage() : this.mergeCommitMessage,
  allowMergeCommit: allowMergeCommit != null ? allowMergeCommit() : this.allowMergeCommit,
  subscribersCount: subscribersCount != null ? subscribersCount() : this.subscribersCount,
  networkCount: networkCount != null ? networkCount() : this.networkCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryWebhooksTemplateRepository &&
          id == other.id &&
          nodeId == other.nodeId &&
          name == other.name &&
          fullName == other.fullName &&
          owner == other.owner &&
          private == other.private &&
          htmlUrl == other.htmlUrl &&
          description == other.description &&
          fork == other.fork &&
          url == other.url &&
          archiveUrl == other.archiveUrl &&
          assigneesUrl == other.assigneesUrl &&
          blobsUrl == other.blobsUrl &&
          branchesUrl == other.branchesUrl &&
          collaboratorsUrl == other.collaboratorsUrl &&
          commentsUrl == other.commentsUrl &&
          commitsUrl == other.commitsUrl &&
          compareUrl == other.compareUrl &&
          contentsUrl == other.contentsUrl &&
          contributorsUrl == other.contributorsUrl &&
          deploymentsUrl == other.deploymentsUrl &&
          downloadsUrl == other.downloadsUrl &&
          eventsUrl == other.eventsUrl &&
          forksUrl == other.forksUrl &&
          gitCommitsUrl == other.gitCommitsUrl &&
          gitRefsUrl == other.gitRefsUrl &&
          gitTagsUrl == other.gitTagsUrl &&
          gitUrl == other.gitUrl &&
          issueCommentUrl == other.issueCommentUrl &&
          issueEventsUrl == other.issueEventsUrl &&
          issuesUrl == other.issuesUrl &&
          keysUrl == other.keysUrl &&
          labelsUrl == other.labelsUrl &&
          languagesUrl == other.languagesUrl &&
          mergesUrl == other.mergesUrl &&
          milestonesUrl == other.milestonesUrl &&
          notificationsUrl == other.notificationsUrl &&
          pullsUrl == other.pullsUrl &&
          releasesUrl == other.releasesUrl &&
          sshUrl == other.sshUrl &&
          stargazersUrl == other.stargazersUrl &&
          statusesUrl == other.statusesUrl &&
          subscribersUrl == other.subscribersUrl &&
          subscriptionUrl == other.subscriptionUrl &&
          tagsUrl == other.tagsUrl &&
          teamsUrl == other.teamsUrl &&
          treesUrl == other.treesUrl &&
          cloneUrl == other.cloneUrl &&
          mirrorUrl == other.mirrorUrl &&
          hooksUrl == other.hooksUrl &&
          svnUrl == other.svnUrl &&
          homepage == other.homepage &&
          language == other.language &&
          forksCount == other.forksCount &&
          stargazersCount == other.stargazersCount &&
          watchersCount == other.watchersCount &&
          size == other.size &&
          defaultBranch == other.defaultBranch &&
          openIssuesCount == other.openIssuesCount &&
          isTemplate == other.isTemplate &&
          listEquals(topics, other.topics) &&
          hasIssues == other.hasIssues &&
          hasProjects == other.hasProjects &&
          hasWiki == other.hasWiki &&
          hasPages == other.hasPages &&
          hasDownloads == other.hasDownloads &&
          archived == other.archived &&
          disabled == other.disabled &&
          visibility == other.visibility &&
          pushedAt == other.pushedAt &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          permissions == other.permissions &&
          allowRebaseMerge == other.allowRebaseMerge &&
          tempCloneToken == other.tempCloneToken &&
          allowSquashMerge == other.allowSquashMerge &&
          allowAutoMerge == other.allowAutoMerge &&
          deleteBranchOnMerge == other.deleteBranchOnMerge &&
          allowUpdateBranch == other.allowUpdateBranch &&
          useSquashPrTitleAsDefault == other.useSquashPrTitleAsDefault &&
          squashMergeCommitTitle == other.squashMergeCommitTitle &&
          squashMergeCommitMessage == other.squashMergeCommitMessage &&
          mergeCommitTitle == other.mergeCommitTitle &&
          mergeCommitMessage == other.mergeCommitMessage &&
          allowMergeCommit == other.allowMergeCommit &&
          subscribersCount == other.subscribersCount &&
          networkCount == other.networkCount; } 
@override int get hashCode { return Object.hashAll([id, nodeId, name, fullName, owner, private, htmlUrl, description, fork, url, archiveUrl, assigneesUrl, blobsUrl, branchesUrl, collaboratorsUrl, commentsUrl, commitsUrl, compareUrl, contentsUrl, contributorsUrl, deploymentsUrl, downloadsUrl, eventsUrl, forksUrl, gitCommitsUrl, gitRefsUrl, gitTagsUrl, gitUrl, issueCommentUrl, issueEventsUrl, issuesUrl, keysUrl, labelsUrl, languagesUrl, mergesUrl, milestonesUrl, notificationsUrl, pullsUrl, releasesUrl, sshUrl, stargazersUrl, statusesUrl, subscribersUrl, subscriptionUrl, tagsUrl, teamsUrl, treesUrl, cloneUrl, mirrorUrl, hooksUrl, svnUrl, homepage, language, forksCount, stargazersCount, watchersCount, size, defaultBranch, openIssuesCount, isTemplate, Object.hashAll(topics ?? const []), hasIssues, hasProjects, hasWiki, hasPages, hasDownloads, archived, disabled, visibility, pushedAt, createdAt, updatedAt, permissions, allowRebaseMerge, tempCloneToken, allowSquashMerge, allowAutoMerge, deleteBranchOnMerge, allowUpdateBranch, useSquashPrTitleAsDefault, squashMergeCommitTitle, squashMergeCommitMessage, mergeCommitTitle, mergeCommitMessage, allowMergeCommit, subscribersCount, networkCount]); } 
@override String toString() { return 'RepositoryWebhooksTemplateRepository(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, owner: $owner, private: $private, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, archiveUrl: $archiveUrl, assigneesUrl: $assigneesUrl, blobsUrl: $blobsUrl, branchesUrl: $branchesUrl, collaboratorsUrl: $collaboratorsUrl, commentsUrl: $commentsUrl, commitsUrl: $commitsUrl, compareUrl: $compareUrl, contentsUrl: $contentsUrl, contributorsUrl: $contributorsUrl, deploymentsUrl: $deploymentsUrl, downloadsUrl: $downloadsUrl, eventsUrl: $eventsUrl, forksUrl: $forksUrl, gitCommitsUrl: $gitCommitsUrl, gitRefsUrl: $gitRefsUrl, gitTagsUrl: $gitTagsUrl, gitUrl: $gitUrl, issueCommentUrl: $issueCommentUrl, issueEventsUrl: $issueEventsUrl, issuesUrl: $issuesUrl, keysUrl: $keysUrl, labelsUrl: $labelsUrl, languagesUrl: $languagesUrl, mergesUrl: $mergesUrl, milestonesUrl: $milestonesUrl, notificationsUrl: $notificationsUrl, pullsUrl: $pullsUrl, releasesUrl: $releasesUrl, sshUrl: $sshUrl, stargazersUrl: $stargazersUrl, statusesUrl: $statusesUrl, subscribersUrl: $subscribersUrl, subscriptionUrl: $subscriptionUrl, tagsUrl: $tagsUrl, teamsUrl: $teamsUrl, treesUrl: $treesUrl, cloneUrl: $cloneUrl, mirrorUrl: $mirrorUrl, hooksUrl: $hooksUrl, svnUrl: $svnUrl, homepage: $homepage, language: $language, forksCount: $forksCount, stargazersCount: $stargazersCount, watchersCount: $watchersCount, size: $size, defaultBranch: $defaultBranch, openIssuesCount: $openIssuesCount, isTemplate: $isTemplate, topics: $topics, hasIssues: $hasIssues, hasProjects: $hasProjects, hasWiki: $hasWiki, hasPages: $hasPages, hasDownloads: $hasDownloads, archived: $archived, disabled: $disabled, visibility: $visibility, pushedAt: $pushedAt, createdAt: $createdAt, updatedAt: $updatedAt, permissions: $permissions, allowRebaseMerge: $allowRebaseMerge, tempCloneToken: $tempCloneToken, allowSquashMerge: $allowSquashMerge, allowAutoMerge: $allowAutoMerge, deleteBranchOnMerge: $deleteBranchOnMerge, allowUpdateBranch: $allowUpdateBranch, useSquashPrTitleAsDefault: $useSquashPrTitleAsDefault, squashMergeCommitTitle: $squashMergeCommitTitle, squashMergeCommitMessage: $squashMergeCommitMessage, mergeCommitTitle: $mergeCommitTitle, mergeCommitMessage: $mergeCommitMessage, allowMergeCommit: $allowMergeCommit, subscribersCount: $subscribersCount, networkCount: $networkCount)'; } 
 }
