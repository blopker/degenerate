// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_submitted_pull_request_base_repo_license.dart';import 'webhook_pull_request_review_submitted_pull_request_base_repo_owner.dart';import 'webhook_pull_request_review_submitted_pull_request_base_repo_permissions.dart';/// The policy controlling who can create pull requests: all or collaborators_only.
@immutable final class WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy {const WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy._(this.value);

factory WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy.fromJson(String json) { return switch (json) {
  'all' => all,
  'collaborators_only' => collaboratorsOnly,
  _ => WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy._(json),
}; }

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy all = WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy._('all');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy collaboratorsOnly = WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy._('collaborators_only');

static const List<WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy> values = [all, collaboratorsOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy($value)'; } 
 }
/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
@immutable final class WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage {const WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage._(this.value);

factory WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'PR_TITLE' => prTitle,
  'BLANK' => blank,
  _ => WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage._(json),
}; }

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage prBody = WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage._('PR_BODY');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage prTitle = WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage._('PR_TITLE');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage blank = WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage._('BLANK');

static const List<WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage> values = [prBody, prTitle, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage($value)'; } 
 }
/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
@immutable final class WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle {const WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle._(this.value);

factory WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'MERGE_MESSAGE' => mergeMessage,
  _ => WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle._(json),
}; }

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle prTitle = WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle._('PR_TITLE');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle mergeMessage = WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle._('MERGE_MESSAGE');

static const List<WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle> values = [prTitle, mergeMessage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle($value)'; } 
 }
/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
@immutable final class WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage {const WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage._(this.value);

factory WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'COMMIT_MESSAGES' => commitMessages,
  'BLANK' => blank,
  _ => WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage._(json),
}; }

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage prBody = WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage._('PR_BODY');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage commitMessages = WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage._('COMMIT_MESSAGES');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage blank = WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage._('BLANK');

static const List<WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage> values = [prBody, commitMessages, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage($value)'; } 
 }
/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
@immutable final class WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle {const WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle._(this.value);

factory WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'COMMIT_OR_PR_TITLE' => commitOrPrTitle,
  _ => WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle._(json),
}; }

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle prTitle = WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle._('PR_TITLE');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle commitOrPrTitle = WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle._('COMMIT_OR_PR_TITLE');

static const List<WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle> values = [prTitle, commitOrPrTitle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle($value)'; } 
 }
@immutable final class WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility {const WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility._(this.value);

factory WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility.fromJson(String json) { return switch (json) {
  'public' => public,
  'private' => private,
  'internal' => internal,
  _ => WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility._(json),
}; }

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility public = WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility._('public');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility private = WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility._('private');

static const WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility internal = WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility._('internal');

static const List<WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility> values = [public, private, internal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility($value)'; } 
 }
/// A git repository
@immutable final class WebhookPullRequestReviewSubmittedPullRequestBaseRepo {const WebhookPullRequestReviewSubmittedPullRequestBaseRepo({required this.gitRefsUrl, required this.watchersCount, required this.watchers, required this.visibility, required this.url, required this.updatedAt, required this.archiveUrl, required this.treesUrl, required this.assigneesUrl, required this.blobsUrl, required this.branchesUrl, required this.cloneUrl, required this.collaboratorsUrl, required this.commentsUrl, required this.commitsUrl, required this.compareUrl, required this.contentsUrl, required this.contributorsUrl, required this.createdAt, required this.defaultBranch, required this.topics, required this.deploymentsUrl, required this.description, required this.teamsUrl, required this.downloadsUrl, required this.eventsUrl, required this.fork, required this.forks, required this.forksCount, required this.forksUrl, required this.fullName, required this.gitCommitsUrl, required this.tagsUrl, required this.gitTagsUrl, required this.gitUrl, required this.svnUrl, required this.subscriptionUrl, required this.hasPages, required this.subscribersUrl, required this.statusesUrl, required this.stargazersUrl, required this.stargazersCount, required this.sshUrl, required this.homepage, required this.hooksUrl, required this.htmlUrl, required this.id, required this.size, required this.issueCommentUrl, required this.issueEventsUrl, required this.issuesUrl, required this.keysUrl, required this.labelsUrl, required this.language, required this.languagesUrl, required this.license, required this.releasesUrl, required this.pushedAt, required this.pullsUrl, required this.mergesUrl, required this.milestonesUrl, required this.mirrorUrl, required this.name, required this.nodeId, required this.private, required this.openIssues, required this.openIssuesCount, required this.owner, required this.notificationsUrl, this.permissions, this.webCommitSignoffRequired, this.public, this.mergeCommitTitle, this.mergeCommitMessage, this.masterBranch, this.roleName, this.isTemplate, this.squashMergeCommitMessage, this.squashMergeCommitTitle, this.pullRequestCreationPolicy, this.stargazers, this.hasPullRequests = true, this.hasDiscussions = false, this.hasWiki = true, this.hasProjects = true, this.hasIssues = true, this.hasDownloads = true, this.allowAutoMerge = false, this.disabled, this.deleteBranchOnMerge = false, this.archived = false, this.allowUpdateBranch, this.allowSquashMerge = true, this.useSquashPrTitleAsDefault = false, this.allowRebaseMerge = true, this.allowMergeCommit = true, this.allowForking, this.organization, });

factory WebhookPullRequestReviewSubmittedPullRequestBaseRepo.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewSubmittedPullRequestBaseRepo(
  allowAutoMerge: json.containsKey('allow_auto_merge') ? json['allow_auto_merge'] as bool : false,
  allowForking: json['allow_forking'] as bool?,
  allowMergeCommit: json.containsKey('allow_merge_commit') ? json['allow_merge_commit'] as bool : true,
  allowRebaseMerge: json.containsKey('allow_rebase_merge') ? json['allow_rebase_merge'] as bool : true,
  allowSquashMerge: json.containsKey('allow_squash_merge') ? json['allow_squash_merge'] as bool : true,
  allowUpdateBranch: json['allow_update_branch'] as bool?,
  archiveUrl: json['archive_url'] as String,
  archived: json['archived'] as bool,
  assigneesUrl: json['assignees_url'] as String,
  blobsUrl: json['blobs_url'] as String,
  branchesUrl: json['branches_url'] as String,
  cloneUrl: Uri.parse(json['clone_url'] as String),
  collaboratorsUrl: json['collaborators_url'] as String,
  commentsUrl: json['comments_url'] as String,
  commitsUrl: json['commits_url'] as String,
  compareUrl: json['compare_url'] as String,
  contentsUrl: json['contents_url'] as String,
  contributorsUrl: Uri.parse(json['contributors_url'] as String),
  createdAt: json['created_at'],
  defaultBranch: json['default_branch'] as String,
  deleteBranchOnMerge: json.containsKey('delete_branch_on_merge') ? json['delete_branch_on_merge'] as bool : false,
  deploymentsUrl: Uri.parse(json['deployments_url'] as String),
  description: json['description'] as String?,
  disabled: json['disabled'] as bool?,
  downloadsUrl: Uri.parse(json['downloads_url'] as String),
  eventsUrl: Uri.parse(json['events_url'] as String),
  fork: json['fork'] as bool,
  forks: (json['forks'] as num).toInt(),
  forksCount: (json['forks_count'] as num).toInt(),
  forksUrl: Uri.parse(json['forks_url'] as String),
  fullName: json['full_name'] as String,
  gitCommitsUrl: json['git_commits_url'] as String,
  gitRefsUrl: json['git_refs_url'] as String,
  gitTagsUrl: json['git_tags_url'] as String,
  gitUrl: Uri.parse(json['git_url'] as String),
  hasDownloads: json['has_downloads'] as bool,
  hasIssues: json['has_issues'] as bool,
  hasPages: json['has_pages'] as bool,
  hasProjects: json['has_projects'] as bool,
  hasWiki: json['has_wiki'] as bool,
  hasDiscussions: json['has_discussions'] as bool,
  hasPullRequests: json.containsKey('has_pull_requests') ? json['has_pull_requests'] as bool : true,
  pullRequestCreationPolicy: json['pull_request_creation_policy'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy.fromJson(json['pull_request_creation_policy'] as String) : null,
  homepage: json['homepage'] as String?,
  hooksUrl: Uri.parse(json['hooks_url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  isTemplate: json['is_template'] as bool?,
  issueCommentUrl: json['issue_comment_url'] as String,
  issueEventsUrl: json['issue_events_url'] as String,
  issuesUrl: json['issues_url'] as String,
  keysUrl: json['keys_url'] as String,
  labelsUrl: json['labels_url'] as String,
  language: json['language'] as String?,
  languagesUrl: Uri.parse(json['languages_url'] as String),
  license: json['license'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoLicense.fromJson(json['license'] as Map<String, dynamic>) : null,
  masterBranch: json['master_branch'] as String?,
  mergeCommitMessage: json['merge_commit_message'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage.fromJson(json['merge_commit_message'] as String) : null,
  mergeCommitTitle: json['merge_commit_title'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle.fromJson(json['merge_commit_title'] as String) : null,
  mergesUrl: Uri.parse(json['merges_url'] as String),
  milestonesUrl: json['milestones_url'] as String,
  mirrorUrl: json['mirror_url'] != null ? Uri.parse(json['mirror_url'] as String) : null,
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  notificationsUrl: json['notifications_url'] as String,
  openIssues: (json['open_issues'] as num).toInt(),
  openIssuesCount: (json['open_issues_count'] as num).toInt(),
  organization: json['organization'] as String?,
  owner: json['owner'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoOwner.fromJson(json['owner'] as Map<String, dynamic>) : null,
  permissions: json['permissions'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  private: json['private'] as bool,
  public: json['public'] as bool?,
  pullsUrl: json['pulls_url'] as String,
  pushedAt: json['pushed_at'],
  releasesUrl: json['releases_url'] as String,
  roleName: json['role_name'] as String?,
  size: (json['size'] as num).toInt(),
  squashMergeCommitMessage: json['squash_merge_commit_message'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage.fromJson(json['squash_merge_commit_message'] as String) : null,
  squashMergeCommitTitle: json['squash_merge_commit_title'] != null ? WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle.fromJson(json['squash_merge_commit_title'] as String) : null,
  sshUrl: json['ssh_url'] as String,
  stargazers: json['stargazers'] != null ? (json['stargazers'] as num).toInt() : null,
  stargazersCount: (json['stargazers_count'] as num).toInt(),
  stargazersUrl: Uri.parse(json['stargazers_url'] as String),
  statusesUrl: json['statuses_url'] as String,
  subscribersUrl: Uri.parse(json['subscribers_url'] as String),
  subscriptionUrl: Uri.parse(json['subscription_url'] as String),
  svnUrl: Uri.parse(json['svn_url'] as String),
  tagsUrl: Uri.parse(json['tags_url'] as String),
  teamsUrl: Uri.parse(json['teams_url'] as String),
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
  treesUrl: json['trees_url'] as String,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
  useSquashPrTitleAsDefault: json.containsKey('use_squash_pr_title_as_default') ? json['use_squash_pr_title_as_default'] as bool : false,
  visibility: WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility.fromJson(json['visibility'] as String),
  watchers: (json['watchers'] as num).toInt(),
  watchersCount: (json['watchers_count'] as num).toInt(),
  webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
); }

/// Whether to allow auto-merge for pull requests.
final bool allowAutoMerge;

/// Whether to allow private forks
final bool? allowForking;

/// Whether to allow merge commits for pull requests.
final bool allowMergeCommit;

/// Whether to allow rebase merges for pull requests.
final bool allowRebaseMerge;

/// Whether to allow squash merges for pull requests.
final bool allowSquashMerge;

final bool? allowUpdateBranch;

final String archiveUrl;

/// Whether the repository is archived.
final bool archived;

final String assigneesUrl;

final String blobsUrl;

final String branchesUrl;

final Uri cloneUrl;

final String collaboratorsUrl;

final String commentsUrl;

final String commitsUrl;

final String compareUrl;

final String contentsUrl;

final Uri contributorsUrl;

/// One of: int, DateTime
final dynamic createdAt;

/// The default branch of the repository.
final String defaultBranch;

/// Whether to delete head branches when pull requests are merged
final bool deleteBranchOnMerge;

final Uri deploymentsUrl;

final String? description;

/// Returns whether or not this repository is disabled.
final bool? disabled;

final Uri downloadsUrl;

final Uri eventsUrl;

final bool fork;

final int forks;

final int forksCount;

final Uri forksUrl;

final String fullName;

final String gitCommitsUrl;

final String gitRefsUrl;

final String gitTagsUrl;

final Uri gitUrl;

/// Whether downloads are enabled.
final bool hasDownloads;

/// Whether issues are enabled.
final bool hasIssues;

final bool hasPages;

/// Whether projects are enabled.
final bool hasProjects;

/// Whether the wiki is enabled.
final bool hasWiki;

/// Whether discussions are enabled.
final bool hasDiscussions;

/// Whether pull requests are enabled.
final bool hasPullRequests;

/// The policy controlling who can create pull requests: all or collaborators_only.
final WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy? pullRequestCreationPolicy;

final String? homepage;

final Uri hooksUrl;

final Uri htmlUrl;

/// Unique identifier of the repository
final int id;

final bool? isTemplate;

final String issueCommentUrl;

final String issueEventsUrl;

final String issuesUrl;

final String keysUrl;

final String labelsUrl;

final String? language;

final Uri languagesUrl;

final WebhookPullRequestReviewSubmittedPullRequestBaseRepoLicense? license;

final String? masterBranch;

/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
final WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage? mergeCommitMessage;

/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
final WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle? mergeCommitTitle;

final Uri mergesUrl;

final String milestonesUrl;

final Uri? mirrorUrl;

/// The name of the repository.
final String name;

final String nodeId;

final String notificationsUrl;

final int openIssues;

final int openIssuesCount;

final String? organization;

final WebhookPullRequestReviewSubmittedPullRequestBaseRepoOwner? owner;

final WebhookPullRequestReviewSubmittedPullRequestBaseRepoPermissions? permissions;

/// Whether the repository is private or public.
final bool private;

final bool? public;

final String pullsUrl;

/// One of: int, DateTime
final dynamic pushedAt;

final String releasesUrl;

final String? roleName;

final int size;

/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
final WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage? squashMergeCommitMessage;

/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
final WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle? squashMergeCommitTitle;

final String sshUrl;

final int? stargazers;

final int stargazersCount;

final Uri stargazersUrl;

final String statusesUrl;

final Uri subscribersUrl;

final Uri subscriptionUrl;

final Uri svnUrl;

final Uri tagsUrl;

final Uri teamsUrl;

final List<String> topics;

final String treesUrl;

final DateTime updatedAt;

final Uri url;

/// Whether a squash merge commit can use the pull request title as default. **This property is closing down. Please use `squash_merge_commit_title` instead.
final bool useSquashPrTitleAsDefault;

final WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility visibility;

final int watchers;

final int watchersCount;

/// Whether to require contributors to sign off on web-based commits
final bool? webCommitSignoffRequired;

Map<String, dynamic> toJson() { return {
  'allow_auto_merge': allowAutoMerge,
  'allow_forking': ?allowForking,
  'allow_merge_commit': allowMergeCommit,
  'allow_rebase_merge': allowRebaseMerge,
  'allow_squash_merge': allowSquashMerge,
  'allow_update_branch': ?allowUpdateBranch,
  'archive_url': archiveUrl,
  'archived': archived,
  'assignees_url': assigneesUrl,
  'blobs_url': blobsUrl,
  'branches_url': branchesUrl,
  'clone_url': cloneUrl.toString(),
  'collaborators_url': collaboratorsUrl,
  'comments_url': commentsUrl,
  'commits_url': commitsUrl,
  'compare_url': compareUrl,
  'contents_url': contentsUrl,
  'contributors_url': contributorsUrl.toString(),
  'created_at': createdAt,
  'default_branch': defaultBranch,
  'delete_branch_on_merge': deleteBranchOnMerge,
  'deployments_url': deploymentsUrl.toString(),
  'description': ?description,
  'disabled': ?disabled,
  'downloads_url': downloadsUrl.toString(),
  'events_url': eventsUrl.toString(),
  'fork': fork,
  'forks': forks,
  'forks_count': forksCount,
  'forks_url': forksUrl.toString(),
  'full_name': fullName,
  'git_commits_url': gitCommitsUrl,
  'git_refs_url': gitRefsUrl,
  'git_tags_url': gitTagsUrl,
  'git_url': gitUrl.toString(),
  'has_downloads': hasDownloads,
  'has_issues': hasIssues,
  'has_pages': hasPages,
  'has_projects': hasProjects,
  'has_wiki': hasWiki,
  'has_discussions': hasDiscussions,
  'has_pull_requests': hasPullRequests,
  if (pullRequestCreationPolicy != null) 'pull_request_creation_policy': pullRequestCreationPolicy?.toJson(),
  'homepage': ?homepage,
  'hooks_url': hooksUrl.toString(),
  'html_url': htmlUrl.toString(),
  'id': id,
  'is_template': ?isTemplate,
  'issue_comment_url': issueCommentUrl,
  'issue_events_url': issueEventsUrl,
  'issues_url': issuesUrl,
  'keys_url': keysUrl,
  'labels_url': labelsUrl,
  'language': ?language,
  'languages_url': languagesUrl.toString(),
  if (license != null) 'license': license?.toJson(),
  'master_branch': ?masterBranch,
  if (mergeCommitMessage != null) 'merge_commit_message': mergeCommitMessage?.toJson(),
  if (mergeCommitTitle != null) 'merge_commit_title': mergeCommitTitle?.toJson(),
  'merges_url': mergesUrl.toString(),
  'milestones_url': milestonesUrl,
  if (mirrorUrl != null) 'mirror_url': mirrorUrl?.toString(),
  'name': name,
  'node_id': nodeId,
  'notifications_url': notificationsUrl,
  'open_issues': openIssues,
  'open_issues_count': openIssuesCount,
  'organization': ?organization,
  if (owner != null) 'owner': owner?.toJson(),
  if (permissions != null) 'permissions': permissions?.toJson(),
  'private': private,
  'public': ?public,
  'pulls_url': pullsUrl,
  'pushed_at': ?pushedAt,
  'releases_url': releasesUrl,
  'role_name': ?roleName,
  'size': size,
  if (squashMergeCommitMessage != null) 'squash_merge_commit_message': squashMergeCommitMessage?.toJson(),
  if (squashMergeCommitTitle != null) 'squash_merge_commit_title': squashMergeCommitTitle?.toJson(),
  'ssh_url': sshUrl,
  'stargazers': ?stargazers,
  'stargazers_count': stargazersCount,
  'stargazers_url': stargazersUrl.toString(),
  'statuses_url': statusesUrl,
  'subscribers_url': subscribersUrl.toString(),
  'subscription_url': subscriptionUrl.toString(),
  'svn_url': svnUrl.toString(),
  'tags_url': tagsUrl.toString(),
  'teams_url': teamsUrl.toString(),
  'topics': topics,
  'trees_url': treesUrl,
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
  'use_squash_pr_title_as_default': useSquashPrTitleAsDefault,
  'visibility': visibility.toJson(),
  'watchers': watchers,
  'watchers_count': watchersCount,
  'web_commit_signoff_required': ?webCommitSignoffRequired,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('archive_url') && json['archive_url'] is String &&
      json.containsKey('archived') && json['archived'] is bool &&
      json.containsKey('assignees_url') && json['assignees_url'] is String &&
      json.containsKey('blobs_url') && json['blobs_url'] is String &&
      json.containsKey('branches_url') && json['branches_url'] is String &&
      json.containsKey('clone_url') && json['clone_url'] is String &&
      json.containsKey('collaborators_url') && json['collaborators_url'] is String &&
      json.containsKey('comments_url') && json['comments_url'] is String &&
      json.containsKey('commits_url') && json['commits_url'] is String &&
      json.containsKey('compare_url') && json['compare_url'] is String &&
      json.containsKey('contents_url') && json['contents_url'] is String &&
      json.containsKey('contributors_url') && json['contributors_url'] is String &&
      json.containsKey('created_at') &&
      json.containsKey('default_branch') && json['default_branch'] is String &&
      json.containsKey('deployments_url') && json['deployments_url'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('downloads_url') && json['downloads_url'] is String &&
      json.containsKey('events_url') && json['events_url'] is String &&
      json.containsKey('fork') && json['fork'] is bool &&
      json.containsKey('forks') && json['forks'] is num &&
      json.containsKey('forks_count') && json['forks_count'] is num &&
      json.containsKey('forks_url') && json['forks_url'] is String &&
      json.containsKey('full_name') && json['full_name'] is String &&
      json.containsKey('git_commits_url') && json['git_commits_url'] is String &&
      json.containsKey('git_refs_url') && json['git_refs_url'] is String &&
      json.containsKey('git_tags_url') && json['git_tags_url'] is String &&
      json.containsKey('git_url') && json['git_url'] is String &&
      json.containsKey('has_downloads') && json['has_downloads'] is bool &&
      json.containsKey('has_issues') && json['has_issues'] is bool &&
      json.containsKey('has_pages') && json['has_pages'] is bool &&
      json.containsKey('has_projects') && json['has_projects'] is bool &&
      json.containsKey('has_wiki') && json['has_wiki'] is bool &&
      json.containsKey('has_discussions') && json['has_discussions'] is bool &&
      json.containsKey('homepage') && json['homepage'] is String &&
      json.containsKey('hooks_url') && json['hooks_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('issue_comment_url') && json['issue_comment_url'] is String &&
      json.containsKey('issue_events_url') && json['issue_events_url'] is String &&
      json.containsKey('issues_url') && json['issues_url'] is String &&
      json.containsKey('keys_url') && json['keys_url'] is String &&
      json.containsKey('labels_url') && json['labels_url'] is String &&
      json.containsKey('language') && json['language'] is String &&
      json.containsKey('languages_url') && json['languages_url'] is String &&
      json.containsKey('license') &&
      json.containsKey('merges_url') && json['merges_url'] is String &&
      json.containsKey('milestones_url') && json['milestones_url'] is String &&
      json.containsKey('mirror_url') && json['mirror_url'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('notifications_url') && json['notifications_url'] is String &&
      json.containsKey('open_issues') && json['open_issues'] is num &&
      json.containsKey('open_issues_count') && json['open_issues_count'] is num &&
      json.containsKey('owner') &&
      json.containsKey('private') && json['private'] is bool &&
      json.containsKey('pulls_url') && json['pulls_url'] is String &&
      json.containsKey('pushed_at') &&
      json.containsKey('releases_url') && json['releases_url'] is String &&
      json.containsKey('size') && json['size'] is num &&
      json.containsKey('ssh_url') && json['ssh_url'] is String &&
      json.containsKey('stargazers_count') && json['stargazers_count'] is num &&
      json.containsKey('stargazers_url') && json['stargazers_url'] is String &&
      json.containsKey('statuses_url') && json['statuses_url'] is String &&
      json.containsKey('subscribers_url') && json['subscribers_url'] is String &&
      json.containsKey('subscription_url') && json['subscription_url'] is String &&
      json.containsKey('svn_url') && json['svn_url'] is String &&
      json.containsKey('tags_url') && json['tags_url'] is String &&
      json.containsKey('teams_url') && json['teams_url'] is String &&
      json.containsKey('topics') &&
      json.containsKey('trees_url') && json['trees_url'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('visibility') &&
      json.containsKey('watchers') && json['watchers'] is num &&
      json.containsKey('watchers_count') && json['watchers_count'] is num; } 
WebhookPullRequestReviewSubmittedPullRequestBaseRepo copyWith({bool Function()? allowAutoMerge, bool Function()? allowForking, bool Function()? allowMergeCommit, bool Function()? allowRebaseMerge, bool Function()? allowSquashMerge, bool Function()? allowUpdateBranch, String? archiveUrl, bool? archived, String? assigneesUrl, String? blobsUrl, String? branchesUrl, Uri? cloneUrl, String? collaboratorsUrl, String? commentsUrl, String? commitsUrl, String? compareUrl, String? contentsUrl, Uri? contributorsUrl, dynamic createdAt, String? defaultBranch, bool Function()? deleteBranchOnMerge, Uri? deploymentsUrl, String? Function()? description, bool Function()? disabled, Uri? downloadsUrl, Uri? eventsUrl, bool? fork, int? forks, int? forksCount, Uri? forksUrl, String? fullName, String? gitCommitsUrl, String? gitRefsUrl, String? gitTagsUrl, Uri? gitUrl, bool? hasDownloads, bool? hasIssues, bool? hasPages, bool? hasProjects, bool? hasWiki, bool? hasDiscussions, bool Function()? hasPullRequests, WebhookPullRequestReviewSubmittedPullRequestBaseRepoPullRequestCreationPolicy Function()? pullRequestCreationPolicy, String? Function()? homepage, Uri? hooksUrl, Uri? htmlUrl, int? id, bool Function()? isTemplate, String? issueCommentUrl, String? issueEventsUrl, String? issuesUrl, String? keysUrl, String? labelsUrl, String? Function()? language, Uri? languagesUrl, WebhookPullRequestReviewSubmittedPullRequestBaseRepoLicense? Function()? license, String Function()? masterBranch, WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitMessage Function()? mergeCommitMessage, WebhookPullRequestReviewSubmittedPullRequestBaseRepoMergeCommitTitle Function()? mergeCommitTitle, Uri? mergesUrl, String? milestonesUrl, Uri? Function()? mirrorUrl, String? name, String? nodeId, String? notificationsUrl, int? openIssues, int? openIssuesCount, String Function()? organization, WebhookPullRequestReviewSubmittedPullRequestBaseRepoOwner? Function()? owner, WebhookPullRequestReviewSubmittedPullRequestBaseRepoPermissions Function()? permissions, bool? private, bool Function()? public, String? pullsUrl, dynamic Function()? pushedAt, String? releasesUrl, String? Function()? roleName, int? size, WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitMessage Function()? squashMergeCommitMessage, WebhookPullRequestReviewSubmittedPullRequestBaseRepoSquashMergeCommitTitle Function()? squashMergeCommitTitle, String? sshUrl, int Function()? stargazers, int? stargazersCount, Uri? stargazersUrl, String? statusesUrl, Uri? subscribersUrl, Uri? subscriptionUrl, Uri? svnUrl, Uri? tagsUrl, Uri? teamsUrl, List<String>? topics, String? treesUrl, DateTime? updatedAt, Uri? url, bool Function()? useSquashPrTitleAsDefault, WebhookPullRequestReviewSubmittedPullRequestBaseRepoVisibility? visibility, int? watchers, int? watchersCount, bool Function()? webCommitSignoffRequired, }) { return WebhookPullRequestReviewSubmittedPullRequestBaseRepo(
  allowAutoMerge: allowAutoMerge != null ? allowAutoMerge() : this.allowAutoMerge,
  allowForking: allowForking != null ? allowForking() : this.allowForking,
  allowMergeCommit: allowMergeCommit != null ? allowMergeCommit() : this.allowMergeCommit,
  allowRebaseMerge: allowRebaseMerge != null ? allowRebaseMerge() : this.allowRebaseMerge,
  allowSquashMerge: allowSquashMerge != null ? allowSquashMerge() : this.allowSquashMerge,
  allowUpdateBranch: allowUpdateBranch != null ? allowUpdateBranch() : this.allowUpdateBranch,
  archiveUrl: archiveUrl ?? this.archiveUrl,
  archived: archived ?? this.archived,
  assigneesUrl: assigneesUrl ?? this.assigneesUrl,
  blobsUrl: blobsUrl ?? this.blobsUrl,
  branchesUrl: branchesUrl ?? this.branchesUrl,
  cloneUrl: cloneUrl ?? this.cloneUrl,
  collaboratorsUrl: collaboratorsUrl ?? this.collaboratorsUrl,
  commentsUrl: commentsUrl ?? this.commentsUrl,
  commitsUrl: commitsUrl ?? this.commitsUrl,
  compareUrl: compareUrl ?? this.compareUrl,
  contentsUrl: contentsUrl ?? this.contentsUrl,
  contributorsUrl: contributorsUrl ?? this.contributorsUrl,
  createdAt: createdAt ?? this.createdAt,
  defaultBranch: defaultBranch ?? this.defaultBranch,
  deleteBranchOnMerge: deleteBranchOnMerge != null ? deleteBranchOnMerge() : this.deleteBranchOnMerge,
  deploymentsUrl: deploymentsUrl ?? this.deploymentsUrl,
  description: description != null ? description() : this.description,
  disabled: disabled != null ? disabled() : this.disabled,
  downloadsUrl: downloadsUrl ?? this.downloadsUrl,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  fork: fork ?? this.fork,
  forks: forks ?? this.forks,
  forksCount: forksCount ?? this.forksCount,
  forksUrl: forksUrl ?? this.forksUrl,
  fullName: fullName ?? this.fullName,
  gitCommitsUrl: gitCommitsUrl ?? this.gitCommitsUrl,
  gitRefsUrl: gitRefsUrl ?? this.gitRefsUrl,
  gitTagsUrl: gitTagsUrl ?? this.gitTagsUrl,
  gitUrl: gitUrl ?? this.gitUrl,
  hasDownloads: hasDownloads ?? this.hasDownloads,
  hasIssues: hasIssues ?? this.hasIssues,
  hasPages: hasPages ?? this.hasPages,
  hasProjects: hasProjects ?? this.hasProjects,
  hasWiki: hasWiki ?? this.hasWiki,
  hasDiscussions: hasDiscussions ?? this.hasDiscussions,
  hasPullRequests: hasPullRequests != null ? hasPullRequests() : this.hasPullRequests,
  pullRequestCreationPolicy: pullRequestCreationPolicy != null ? pullRequestCreationPolicy() : this.pullRequestCreationPolicy,
  homepage: homepage != null ? homepage() : this.homepage,
  hooksUrl: hooksUrl ?? this.hooksUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  isTemplate: isTemplate != null ? isTemplate() : this.isTemplate,
  issueCommentUrl: issueCommentUrl ?? this.issueCommentUrl,
  issueEventsUrl: issueEventsUrl ?? this.issueEventsUrl,
  issuesUrl: issuesUrl ?? this.issuesUrl,
  keysUrl: keysUrl ?? this.keysUrl,
  labelsUrl: labelsUrl ?? this.labelsUrl,
  language: language != null ? language() : this.language,
  languagesUrl: languagesUrl ?? this.languagesUrl,
  license: license != null ? license() : this.license,
  masterBranch: masterBranch != null ? masterBranch() : this.masterBranch,
  mergeCommitMessage: mergeCommitMessage != null ? mergeCommitMessage() : this.mergeCommitMessage,
  mergeCommitTitle: mergeCommitTitle != null ? mergeCommitTitle() : this.mergeCommitTitle,
  mergesUrl: mergesUrl ?? this.mergesUrl,
  milestonesUrl: milestonesUrl ?? this.milestonesUrl,
  mirrorUrl: mirrorUrl != null ? mirrorUrl() : this.mirrorUrl,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  notificationsUrl: notificationsUrl ?? this.notificationsUrl,
  openIssues: openIssues ?? this.openIssues,
  openIssuesCount: openIssuesCount ?? this.openIssuesCount,
  organization: organization != null ? organization() : this.organization,
  owner: owner != null ? owner() : this.owner,
  permissions: permissions != null ? permissions() : this.permissions,
  private: private ?? this.private,
  public: public != null ? public() : this.public,
  pullsUrl: pullsUrl ?? this.pullsUrl,
  pushedAt: pushedAt != null ? pushedAt() : this.pushedAt,
  releasesUrl: releasesUrl ?? this.releasesUrl,
  roleName: roleName != null ? roleName() : this.roleName,
  size: size ?? this.size,
  squashMergeCommitMessage: squashMergeCommitMessage != null ? squashMergeCommitMessage() : this.squashMergeCommitMessage,
  squashMergeCommitTitle: squashMergeCommitTitle != null ? squashMergeCommitTitle() : this.squashMergeCommitTitle,
  sshUrl: sshUrl ?? this.sshUrl,
  stargazers: stargazers != null ? stargazers() : this.stargazers,
  stargazersCount: stargazersCount ?? this.stargazersCount,
  stargazersUrl: stargazersUrl ?? this.stargazersUrl,
  statusesUrl: statusesUrl ?? this.statusesUrl,
  subscribersUrl: subscribersUrl ?? this.subscribersUrl,
  subscriptionUrl: subscriptionUrl ?? this.subscriptionUrl,
  svnUrl: svnUrl ?? this.svnUrl,
  tagsUrl: tagsUrl ?? this.tagsUrl,
  teamsUrl: teamsUrl ?? this.teamsUrl,
  topics: topics ?? this.topics,
  treesUrl: treesUrl ?? this.treesUrl,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
  useSquashPrTitleAsDefault: useSquashPrTitleAsDefault != null ? useSquashPrTitleAsDefault() : this.useSquashPrTitleAsDefault,
  visibility: visibility ?? this.visibility,
  watchers: watchers ?? this.watchers,
  watchersCount: watchersCount ?? this.watchersCount,
  webCommitSignoffRequired: webCommitSignoffRequired != null ? webCommitSignoffRequired() : this.webCommitSignoffRequired,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewSubmittedPullRequestBaseRepo &&
          allowAutoMerge == other.allowAutoMerge &&
          allowForking == other.allowForking &&
          allowMergeCommit == other.allowMergeCommit &&
          allowRebaseMerge == other.allowRebaseMerge &&
          allowSquashMerge == other.allowSquashMerge &&
          allowUpdateBranch == other.allowUpdateBranch &&
          archiveUrl == other.archiveUrl &&
          archived == other.archived &&
          assigneesUrl == other.assigneesUrl &&
          blobsUrl == other.blobsUrl &&
          branchesUrl == other.branchesUrl &&
          cloneUrl == other.cloneUrl &&
          collaboratorsUrl == other.collaboratorsUrl &&
          commentsUrl == other.commentsUrl &&
          commitsUrl == other.commitsUrl &&
          compareUrl == other.compareUrl &&
          contentsUrl == other.contentsUrl &&
          contributorsUrl == other.contributorsUrl &&
          createdAt == other.createdAt &&
          defaultBranch == other.defaultBranch &&
          deleteBranchOnMerge == other.deleteBranchOnMerge &&
          deploymentsUrl == other.deploymentsUrl &&
          description == other.description &&
          disabled == other.disabled &&
          downloadsUrl == other.downloadsUrl &&
          eventsUrl == other.eventsUrl &&
          fork == other.fork &&
          forks == other.forks &&
          forksCount == other.forksCount &&
          forksUrl == other.forksUrl &&
          fullName == other.fullName &&
          gitCommitsUrl == other.gitCommitsUrl &&
          gitRefsUrl == other.gitRefsUrl &&
          gitTagsUrl == other.gitTagsUrl &&
          gitUrl == other.gitUrl &&
          hasDownloads == other.hasDownloads &&
          hasIssues == other.hasIssues &&
          hasPages == other.hasPages &&
          hasProjects == other.hasProjects &&
          hasWiki == other.hasWiki &&
          hasDiscussions == other.hasDiscussions &&
          hasPullRequests == other.hasPullRequests &&
          pullRequestCreationPolicy == other.pullRequestCreationPolicy &&
          homepage == other.homepage &&
          hooksUrl == other.hooksUrl &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          isTemplate == other.isTemplate &&
          issueCommentUrl == other.issueCommentUrl &&
          issueEventsUrl == other.issueEventsUrl &&
          issuesUrl == other.issuesUrl &&
          keysUrl == other.keysUrl &&
          labelsUrl == other.labelsUrl &&
          language == other.language &&
          languagesUrl == other.languagesUrl &&
          license == other.license &&
          masterBranch == other.masterBranch &&
          mergeCommitMessage == other.mergeCommitMessage &&
          mergeCommitTitle == other.mergeCommitTitle &&
          mergesUrl == other.mergesUrl &&
          milestonesUrl == other.milestonesUrl &&
          mirrorUrl == other.mirrorUrl &&
          name == other.name &&
          nodeId == other.nodeId &&
          notificationsUrl == other.notificationsUrl &&
          openIssues == other.openIssues &&
          openIssuesCount == other.openIssuesCount &&
          organization == other.organization &&
          owner == other.owner &&
          permissions == other.permissions &&
          private == other.private &&
          public == other.public &&
          pullsUrl == other.pullsUrl &&
          pushedAt == other.pushedAt &&
          releasesUrl == other.releasesUrl &&
          roleName == other.roleName &&
          size == other.size &&
          squashMergeCommitMessage == other.squashMergeCommitMessage &&
          squashMergeCommitTitle == other.squashMergeCommitTitle &&
          sshUrl == other.sshUrl &&
          stargazers == other.stargazers &&
          stargazersCount == other.stargazersCount &&
          stargazersUrl == other.stargazersUrl &&
          statusesUrl == other.statusesUrl &&
          subscribersUrl == other.subscribersUrl &&
          subscriptionUrl == other.subscriptionUrl &&
          svnUrl == other.svnUrl &&
          tagsUrl == other.tagsUrl &&
          teamsUrl == other.teamsUrl &&
          listEquals(topics, other.topics) &&
          treesUrl == other.treesUrl &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          useSquashPrTitleAsDefault == other.useSquashPrTitleAsDefault &&
          visibility == other.visibility &&
          watchers == other.watchers &&
          watchersCount == other.watchersCount &&
          webCommitSignoffRequired == other.webCommitSignoffRequired; } 
@override int get hashCode { return Object.hashAll([allowAutoMerge, allowForking, allowMergeCommit, allowRebaseMerge, allowSquashMerge, allowUpdateBranch, archiveUrl, archived, assigneesUrl, blobsUrl, branchesUrl, cloneUrl, collaboratorsUrl, commentsUrl, commitsUrl, compareUrl, contentsUrl, contributorsUrl, createdAt, defaultBranch, deleteBranchOnMerge, deploymentsUrl, description, disabled, downloadsUrl, eventsUrl, fork, forks, forksCount, forksUrl, fullName, gitCommitsUrl, gitRefsUrl, gitTagsUrl, gitUrl, hasDownloads, hasIssues, hasPages, hasProjects, hasWiki, hasDiscussions, hasPullRequests, pullRequestCreationPolicy, homepage, hooksUrl, htmlUrl, id, isTemplate, issueCommentUrl, issueEventsUrl, issuesUrl, keysUrl, labelsUrl, language, languagesUrl, license, masterBranch, mergeCommitMessage, mergeCommitTitle, mergesUrl, milestonesUrl, mirrorUrl, name, nodeId, notificationsUrl, openIssues, openIssuesCount, organization, owner, permissions, private, public, pullsUrl, pushedAt, releasesUrl, roleName, size, squashMergeCommitMessage, squashMergeCommitTitle, sshUrl, stargazers, stargazersCount, stargazersUrl, statusesUrl, subscribersUrl, subscriptionUrl, svnUrl, tagsUrl, teamsUrl, Object.hashAll(topics), treesUrl, updatedAt, url, useSquashPrTitleAsDefault, visibility, watchers, watchersCount, webCommitSignoffRequired]); } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestBaseRepo(allowAutoMerge: $allowAutoMerge, allowForking: $allowForking, allowMergeCommit: $allowMergeCommit, allowRebaseMerge: $allowRebaseMerge, allowSquashMerge: $allowSquashMerge, allowUpdateBranch: $allowUpdateBranch, archiveUrl: $archiveUrl, archived: $archived, assigneesUrl: $assigneesUrl, blobsUrl: $blobsUrl, branchesUrl: $branchesUrl, cloneUrl: $cloneUrl, collaboratorsUrl: $collaboratorsUrl, commentsUrl: $commentsUrl, commitsUrl: $commitsUrl, compareUrl: $compareUrl, contentsUrl: $contentsUrl, contributorsUrl: $contributorsUrl, createdAt: $createdAt, defaultBranch: $defaultBranch, deleteBranchOnMerge: $deleteBranchOnMerge, deploymentsUrl: $deploymentsUrl, description: $description, disabled: $disabled, downloadsUrl: $downloadsUrl, eventsUrl: $eventsUrl, fork: $fork, forks: $forks, forksCount: $forksCount, forksUrl: $forksUrl, fullName: $fullName, gitCommitsUrl: $gitCommitsUrl, gitRefsUrl: $gitRefsUrl, gitTagsUrl: $gitTagsUrl, gitUrl: $gitUrl, hasDownloads: $hasDownloads, hasIssues: $hasIssues, hasPages: $hasPages, hasProjects: $hasProjects, hasWiki: $hasWiki, hasDiscussions: $hasDiscussions, hasPullRequests: $hasPullRequests, pullRequestCreationPolicy: $pullRequestCreationPolicy, homepage: $homepage, hooksUrl: $hooksUrl, htmlUrl: $htmlUrl, id: $id, isTemplate: $isTemplate, issueCommentUrl: $issueCommentUrl, issueEventsUrl: $issueEventsUrl, issuesUrl: $issuesUrl, keysUrl: $keysUrl, labelsUrl: $labelsUrl, language: $language, languagesUrl: $languagesUrl, license: $license, masterBranch: $masterBranch, mergeCommitMessage: $mergeCommitMessage, mergeCommitTitle: $mergeCommitTitle, mergesUrl: $mergesUrl, milestonesUrl: $milestonesUrl, mirrorUrl: $mirrorUrl, name: $name, nodeId: $nodeId, notificationsUrl: $notificationsUrl, openIssues: $openIssues, openIssuesCount: $openIssuesCount, organization: $organization, owner: $owner, permissions: $permissions, private: $private, public: $public, pullsUrl: $pullsUrl, pushedAt: $pushedAt, releasesUrl: $releasesUrl, roleName: $roleName, size: $size, squashMergeCommitMessage: $squashMergeCommitMessage, squashMergeCommitTitle: $squashMergeCommitTitle, sshUrl: $sshUrl, stargazers: $stargazers, stargazersCount: $stargazersCount, stargazersUrl: $stargazersUrl, statusesUrl: $statusesUrl, subscribersUrl: $subscribersUrl, subscriptionUrl: $subscriptionUrl, svnUrl: $svnUrl, tagsUrl: $tagsUrl, teamsUrl: $teamsUrl, topics: $topics, treesUrl: $treesUrl, updatedAt: $updatedAt, url: $url, useSquashPrTitleAsDefault: $useSquashPrTitleAsDefault, visibility: $visibility, watchers: $watchers, watchersCount: $watchersCount, webCommitSignoffRequired: $webCommitSignoffRequired)'; } 
 }
