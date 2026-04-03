// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'license_simple.dart';import 'repo_search_result_item_permissions.dart';import 'search_result_text_matches2.dart';import 'simple_user.dart';/// The policy controlling who can create pull requests: all or collaborators_only.
@immutable final class RepoSearchResultItemPullRequestCreationPolicy {const RepoSearchResultItemPullRequestCreationPolicy._(this.value);

factory RepoSearchResultItemPullRequestCreationPolicy.fromJson(String json) { return switch (json) {
  'all' => all,
  'collaborators_only' => collaboratorsOnly,
  _ => RepoSearchResultItemPullRequestCreationPolicy._(json),
}; }

static const RepoSearchResultItemPullRequestCreationPolicy all = RepoSearchResultItemPullRequestCreationPolicy._('all');

static const RepoSearchResultItemPullRequestCreationPolicy collaboratorsOnly = RepoSearchResultItemPullRequestCreationPolicy._('collaborators_only');

static const List<RepoSearchResultItemPullRequestCreationPolicy> values = [all, collaboratorsOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepoSearchResultItemPullRequestCreationPolicy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepoSearchResultItemPullRequestCreationPolicy($value)'; } 
 }
/// Repo Search Result Item
@immutable final class RepoSearchResultItem {const RepoSearchResultItem({required this.assigneesUrl, required this.nodeId, required this.name, required this.fullName, required this.owner, required this.private, required this.htmlUrl, required this.description, required this.fork, required this.url, required this.createdAt, required this.updatedAt, required this.pushedAt, required this.homepage, required this.size, required this.stargazersCount, required this.watchersCount, required this.language, required this.forksCount, required this.openIssuesCount, required this.license, required this.defaultBranch, required this.score, required this.forksUrl, required this.keysUrl, required this.collaboratorsUrl, required this.teamsUrl, required this.hooksUrl, required this.issueEventsUrl, required this.eventsUrl, required this.id, required this.branchesUrl, required this.tagsUrl, required this.blobsUrl, required this.gitTagsUrl, required this.gitRefsUrl, required this.treesUrl, required this.statusesUrl, required this.languagesUrl, required this.stargazersUrl, required this.contributorsUrl, required this.subscribersUrl, required this.subscriptionUrl, required this.commitsUrl, required this.gitCommitsUrl, required this.commentsUrl, required this.issueCommentUrl, required this.contentsUrl, required this.compareUrl, required this.mergesUrl, required this.archiveUrl, required this.downloadsUrl, required this.issuesUrl, required this.pullsUrl, required this.milestonesUrl, required this.notificationsUrl, required this.labelsUrl, required this.releasesUrl, required this.deploymentsUrl, required this.gitUrl, required this.disabled, required this.cloneUrl, required this.svnUrl, required this.forks, required this.openIssues, required this.watchers, required this.archived, required this.mirrorUrl, required this.hasIssues, required this.hasProjects, required this.hasPages, required this.hasWiki, required this.sshUrl, required this.hasDownloads, this.hasPullRequests, this.pullRequestCreationPolicy, this.topics, this.webCommitSignoffRequired, this.visibility, this.masterBranch, this.permissions, this.textMatches, this.tempCloneToken, this.allowMergeCommit, this.allowSquashMerge, this.allowRebaseMerge, this.allowAutoMerge, this.deleteBranchOnMerge, this.allowForking, this.isTemplate, this.hasDiscussions, });

factory RepoSearchResultItem.fromJson(Map<String, dynamic> json) { return RepoSearchResultItem(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  name: json['name'] as String,
  fullName: json['full_name'] as String,
  owner: json['owner'] != null ? SimpleUser.fromJson(json['owner'] as Map<String, dynamic>) : null,
  private: json['private'] as bool,
  htmlUrl: Uri.parse(json['html_url'] as String),
  description: json['description'] as String?,
  fork: json['fork'] as bool,
  url: Uri.parse(json['url'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  pushedAt: DateTime.parse(json['pushed_at'] as String),
  homepage: json['homepage'] != null ? Uri.parse(json['homepage'] as String) : null,
  size: (json['size'] as num).toInt(),
  stargazersCount: (json['stargazers_count'] as num).toInt(),
  watchersCount: (json['watchers_count'] as num).toInt(),
  language: json['language'] as String?,
  forksCount: (json['forks_count'] as num).toInt(),
  openIssuesCount: (json['open_issues_count'] as num).toInt(),
  masterBranch: json['master_branch'] as String?,
  defaultBranch: json['default_branch'] as String,
  score: (json['score'] as num).toDouble(),
  forksUrl: Uri.parse(json['forks_url'] as String),
  keysUrl: json['keys_url'] as String,
  collaboratorsUrl: json['collaborators_url'] as String,
  teamsUrl: Uri.parse(json['teams_url'] as String),
  hooksUrl: Uri.parse(json['hooks_url'] as String),
  issueEventsUrl: json['issue_events_url'] as String,
  eventsUrl: Uri.parse(json['events_url'] as String),
  assigneesUrl: json['assignees_url'] as String,
  branchesUrl: json['branches_url'] as String,
  tagsUrl: Uri.parse(json['tags_url'] as String),
  blobsUrl: json['blobs_url'] as String,
  gitTagsUrl: json['git_tags_url'] as String,
  gitRefsUrl: json['git_refs_url'] as String,
  treesUrl: json['trees_url'] as String,
  statusesUrl: json['statuses_url'] as String,
  languagesUrl: Uri.parse(json['languages_url'] as String),
  stargazersUrl: Uri.parse(json['stargazers_url'] as String),
  contributorsUrl: Uri.parse(json['contributors_url'] as String),
  subscribersUrl: Uri.parse(json['subscribers_url'] as String),
  subscriptionUrl: Uri.parse(json['subscription_url'] as String),
  commitsUrl: json['commits_url'] as String,
  gitCommitsUrl: json['git_commits_url'] as String,
  commentsUrl: json['comments_url'] as String,
  issueCommentUrl: json['issue_comment_url'] as String,
  contentsUrl: json['contents_url'] as String,
  compareUrl: json['compare_url'] as String,
  mergesUrl: Uri.parse(json['merges_url'] as String),
  archiveUrl: json['archive_url'] as String,
  downloadsUrl: Uri.parse(json['downloads_url'] as String),
  issuesUrl: json['issues_url'] as String,
  pullsUrl: json['pulls_url'] as String,
  milestonesUrl: json['milestones_url'] as String,
  notificationsUrl: json['notifications_url'] as String,
  labelsUrl: json['labels_url'] as String,
  releasesUrl: json['releases_url'] as String,
  deploymentsUrl: Uri.parse(json['deployments_url'] as String),
  gitUrl: json['git_url'] as String,
  sshUrl: json['ssh_url'] as String,
  cloneUrl: json['clone_url'] as String,
  svnUrl: Uri.parse(json['svn_url'] as String),
  forks: (json['forks'] as num).toInt(),
  openIssues: (json['open_issues'] as num).toInt(),
  watchers: (json['watchers'] as num).toInt(),
  topics: (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
  mirrorUrl: json['mirror_url'] != null ? Uri.parse(json['mirror_url'] as String) : null,
  hasIssues: json['has_issues'] as bool,
  hasProjects: json['has_projects'] as bool,
  hasPages: json['has_pages'] as bool,
  hasWiki: json['has_wiki'] as bool,
  hasDownloads: json['has_downloads'] as bool,
  hasDiscussions: json['has_discussions'] as bool?,
  hasPullRequests: json['has_pull_requests'] as bool?,
  pullRequestCreationPolicy: json['pull_request_creation_policy'] != null ? RepoSearchResultItemPullRequestCreationPolicy.fromJson(json['pull_request_creation_policy'] as String) : null,
  archived: json['archived'] as bool,
  disabled: json['disabled'] as bool,
  visibility: json['visibility'] as String?,
  license: json['license'] != null ? LicenseSimple.fromJson(json['license'] as Map<String, dynamic>) : null,
  permissions: json['permissions'] != null ? RepoSearchResultItemPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  textMatches: (json['text_matches'] as List<dynamic>?)?.map((e) => SearchResultTextMatches2.fromJson(e as Map<String, dynamic>)).toList(),
  tempCloneToken: json['temp_clone_token'] as String?,
  allowMergeCommit: json['allow_merge_commit'] as bool?,
  allowSquashMerge: json['allow_squash_merge'] as bool?,
  allowRebaseMerge: json['allow_rebase_merge'] as bool?,
  allowAutoMerge: json['allow_auto_merge'] as bool?,
  deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
  allowForking: json['allow_forking'] as bool?,
  isTemplate: json['is_template'] as bool?,
  webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
); }

final int id;

final String nodeId;

final String name;

final String fullName;

final SimpleUser? owner;

final bool private;

final Uri htmlUrl;

final String? description;

final bool fork;

final Uri url;

final DateTime createdAt;

final DateTime updatedAt;

final DateTime pushedAt;

final Uri? homepage;

final int size;

final int stargazersCount;

final int watchersCount;

final String? language;

final int forksCount;

final int openIssuesCount;

final String? masterBranch;

final String defaultBranch;

final double score;

final Uri forksUrl;

final String keysUrl;

final String collaboratorsUrl;

final Uri teamsUrl;

final Uri hooksUrl;

final String issueEventsUrl;

final Uri eventsUrl;

final String assigneesUrl;

final String branchesUrl;

final Uri tagsUrl;

final String blobsUrl;

final String gitTagsUrl;

final String gitRefsUrl;

final String treesUrl;

final String statusesUrl;

final Uri languagesUrl;

final Uri stargazersUrl;

final Uri contributorsUrl;

final Uri subscribersUrl;

final Uri subscriptionUrl;

final String commitsUrl;

final String gitCommitsUrl;

final String commentsUrl;

final String issueCommentUrl;

final String contentsUrl;

final String compareUrl;

final Uri mergesUrl;

final String archiveUrl;

final Uri downloadsUrl;

final String issuesUrl;

final String pullsUrl;

final String milestonesUrl;

final String notificationsUrl;

final String labelsUrl;

final String releasesUrl;

final Uri deploymentsUrl;

final String gitUrl;

final String sshUrl;

final String cloneUrl;

final Uri svnUrl;

final int forks;

final int openIssues;

final int watchers;

final List<String>? topics;

final Uri? mirrorUrl;

final bool hasIssues;

final bool hasProjects;

final bool hasPages;

final bool hasWiki;

final bool hasDownloads;

final bool? hasDiscussions;

final bool? hasPullRequests;

/// The policy controlling who can create pull requests: all or collaborators_only.
final RepoSearchResultItemPullRequestCreationPolicy? pullRequestCreationPolicy;

final bool archived;

/// Returns whether or not this repository disabled.
final bool disabled;

/// The repository visibility: public, private, or internal.
final String? visibility;

final LicenseSimple? license;

final RepoSearchResultItemPermissions? permissions;

final List<SearchResultTextMatches2>? textMatches;

final String? tempCloneToken;

final bool? allowMergeCommit;

final bool? allowSquashMerge;

final bool? allowRebaseMerge;

final bool? allowAutoMerge;

final bool? deleteBranchOnMerge;

final bool? allowForking;

final bool? isTemplate;

final bool? webCommitSignoffRequired;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'name': name,
  'full_name': fullName,
  if (owner != null) 'owner': owner?.toJson(),
  'private': private,
  'html_url': htmlUrl.toString(),
  'description': ?description,
  'fork': fork,
  'url': url.toString(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'pushed_at': pushedAt.toIso8601String(),
  if (homepage != null) 'homepage': homepage?.toString(),
  'size': size,
  'stargazers_count': stargazersCount,
  'watchers_count': watchersCount,
  'language': ?language,
  'forks_count': forksCount,
  'open_issues_count': openIssuesCount,
  'master_branch': ?masterBranch,
  'default_branch': defaultBranch,
  'score': score,
  'forks_url': forksUrl.toString(),
  'keys_url': keysUrl,
  'collaborators_url': collaboratorsUrl,
  'teams_url': teamsUrl.toString(),
  'hooks_url': hooksUrl.toString(),
  'issue_events_url': issueEventsUrl,
  'events_url': eventsUrl.toString(),
  'assignees_url': assigneesUrl,
  'branches_url': branchesUrl,
  'tags_url': tagsUrl.toString(),
  'blobs_url': blobsUrl,
  'git_tags_url': gitTagsUrl,
  'git_refs_url': gitRefsUrl,
  'trees_url': treesUrl,
  'statuses_url': statusesUrl,
  'languages_url': languagesUrl.toString(),
  'stargazers_url': stargazersUrl.toString(),
  'contributors_url': contributorsUrl.toString(),
  'subscribers_url': subscribersUrl.toString(),
  'subscription_url': subscriptionUrl.toString(),
  'commits_url': commitsUrl,
  'git_commits_url': gitCommitsUrl,
  'comments_url': commentsUrl,
  'issue_comment_url': issueCommentUrl,
  'contents_url': contentsUrl,
  'compare_url': compareUrl,
  'merges_url': mergesUrl.toString(),
  'archive_url': archiveUrl,
  'downloads_url': downloadsUrl.toString(),
  'issues_url': issuesUrl,
  'pulls_url': pullsUrl,
  'milestones_url': milestonesUrl,
  'notifications_url': notificationsUrl,
  'labels_url': labelsUrl,
  'releases_url': releasesUrl,
  'deployments_url': deploymentsUrl.toString(),
  'git_url': gitUrl,
  'ssh_url': sshUrl,
  'clone_url': cloneUrl,
  'svn_url': svnUrl.toString(),
  'forks': forks,
  'open_issues': openIssues,
  'watchers': watchers,
  'topics': ?topics,
  if (mirrorUrl != null) 'mirror_url': mirrorUrl?.toString(),
  'has_issues': hasIssues,
  'has_projects': hasProjects,
  'has_pages': hasPages,
  'has_wiki': hasWiki,
  'has_downloads': hasDownloads,
  'has_discussions': ?hasDiscussions,
  'has_pull_requests': ?hasPullRequests,
  if (pullRequestCreationPolicy != null) 'pull_request_creation_policy': pullRequestCreationPolicy?.toJson(),
  'archived': archived,
  'disabled': disabled,
  'visibility': ?visibility,
  if (license != null) 'license': license?.toJson(),
  if (permissions != null) 'permissions': permissions?.toJson(),
  if (textMatches != null) 'text_matches': textMatches?.map((e) => e.toJson()).toList(),
  'temp_clone_token': ?tempCloneToken,
  'allow_merge_commit': ?allowMergeCommit,
  'allow_squash_merge': ?allowSquashMerge,
  'allow_rebase_merge': ?allowRebaseMerge,
  'allow_auto_merge': ?allowAutoMerge,
  'delete_branch_on_merge': ?deleteBranchOnMerge,
  'allow_forking': ?allowForking,
  'is_template': ?isTemplate,
  'web_commit_signoff_required': ?webCommitSignoffRequired,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('full_name') && json['full_name'] is String &&
      json.containsKey('owner') &&
      json.containsKey('private') && json['private'] is bool &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('fork') && json['fork'] is bool &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('pushed_at') && json['pushed_at'] is String &&
      json.containsKey('homepage') && json['homepage'] is String &&
      json.containsKey('size') && json['size'] is num &&
      json.containsKey('stargazers_count') && json['stargazers_count'] is num &&
      json.containsKey('watchers_count') && json['watchers_count'] is num &&
      json.containsKey('language') && json['language'] is String &&
      json.containsKey('forks_count') && json['forks_count'] is num &&
      json.containsKey('open_issues_count') && json['open_issues_count'] is num &&
      json.containsKey('default_branch') && json['default_branch'] is String &&
      json.containsKey('score') && json['score'] is num &&
      json.containsKey('forks_url') && json['forks_url'] is String &&
      json.containsKey('keys_url') && json['keys_url'] is String &&
      json.containsKey('collaborators_url') && json['collaborators_url'] is String &&
      json.containsKey('teams_url') && json['teams_url'] is String &&
      json.containsKey('hooks_url') && json['hooks_url'] is String &&
      json.containsKey('issue_events_url') && json['issue_events_url'] is String &&
      json.containsKey('events_url') && json['events_url'] is String &&
      json.containsKey('assignees_url') && json['assignees_url'] is String &&
      json.containsKey('branches_url') && json['branches_url'] is String &&
      json.containsKey('tags_url') && json['tags_url'] is String &&
      json.containsKey('blobs_url') && json['blobs_url'] is String &&
      json.containsKey('git_tags_url') && json['git_tags_url'] is String &&
      json.containsKey('git_refs_url') && json['git_refs_url'] is String &&
      json.containsKey('trees_url') && json['trees_url'] is String &&
      json.containsKey('statuses_url') && json['statuses_url'] is String &&
      json.containsKey('languages_url') && json['languages_url'] is String &&
      json.containsKey('stargazers_url') && json['stargazers_url'] is String &&
      json.containsKey('contributors_url') && json['contributors_url'] is String &&
      json.containsKey('subscribers_url') && json['subscribers_url'] is String &&
      json.containsKey('subscription_url') && json['subscription_url'] is String &&
      json.containsKey('commits_url') && json['commits_url'] is String &&
      json.containsKey('git_commits_url') && json['git_commits_url'] is String &&
      json.containsKey('comments_url') && json['comments_url'] is String &&
      json.containsKey('issue_comment_url') && json['issue_comment_url'] is String &&
      json.containsKey('contents_url') && json['contents_url'] is String &&
      json.containsKey('compare_url') && json['compare_url'] is String &&
      json.containsKey('merges_url') && json['merges_url'] is String &&
      json.containsKey('archive_url') && json['archive_url'] is String &&
      json.containsKey('downloads_url') && json['downloads_url'] is String &&
      json.containsKey('issues_url') && json['issues_url'] is String &&
      json.containsKey('pulls_url') && json['pulls_url'] is String &&
      json.containsKey('milestones_url') && json['milestones_url'] is String &&
      json.containsKey('notifications_url') && json['notifications_url'] is String &&
      json.containsKey('labels_url') && json['labels_url'] is String &&
      json.containsKey('releases_url') && json['releases_url'] is String &&
      json.containsKey('deployments_url') && json['deployments_url'] is String &&
      json.containsKey('git_url') && json['git_url'] is String &&
      json.containsKey('ssh_url') && json['ssh_url'] is String &&
      json.containsKey('clone_url') && json['clone_url'] is String &&
      json.containsKey('svn_url') && json['svn_url'] is String &&
      json.containsKey('forks') && json['forks'] is num &&
      json.containsKey('open_issues') && json['open_issues'] is num &&
      json.containsKey('watchers') && json['watchers'] is num &&
      json.containsKey('mirror_url') && json['mirror_url'] is String &&
      json.containsKey('has_issues') && json['has_issues'] is bool &&
      json.containsKey('has_projects') && json['has_projects'] is bool &&
      json.containsKey('has_pages') && json['has_pages'] is bool &&
      json.containsKey('has_wiki') && json['has_wiki'] is bool &&
      json.containsKey('has_downloads') && json['has_downloads'] is bool &&
      json.containsKey('archived') && json['archived'] is bool &&
      json.containsKey('disabled') && json['disabled'] is bool &&
      json.containsKey('license'); } 
RepoSearchResultItem copyWith({int? id, String? nodeId, String? name, String? fullName, SimpleUser? Function()? owner, bool? private, Uri? htmlUrl, String? Function()? description, bool? fork, Uri? url, DateTime? createdAt, DateTime? updatedAt, DateTime? pushedAt, Uri? Function()? homepage, int? size, int? stargazersCount, int? watchersCount, String? Function()? language, int? forksCount, int? openIssuesCount, String Function()? masterBranch, String? defaultBranch, double? score, Uri? forksUrl, String? keysUrl, String? collaboratorsUrl, Uri? teamsUrl, Uri? hooksUrl, String? issueEventsUrl, Uri? eventsUrl, String? assigneesUrl, String? branchesUrl, Uri? tagsUrl, String? blobsUrl, String? gitTagsUrl, String? gitRefsUrl, String? treesUrl, String? statusesUrl, Uri? languagesUrl, Uri? stargazersUrl, Uri? contributorsUrl, Uri? subscribersUrl, Uri? subscriptionUrl, String? commitsUrl, String? gitCommitsUrl, String? commentsUrl, String? issueCommentUrl, String? contentsUrl, String? compareUrl, Uri? mergesUrl, String? archiveUrl, Uri? downloadsUrl, String? issuesUrl, String? pullsUrl, String? milestonesUrl, String? notificationsUrl, String? labelsUrl, String? releasesUrl, Uri? deploymentsUrl, String? gitUrl, String? sshUrl, String? cloneUrl, Uri? svnUrl, int? forks, int? openIssues, int? watchers, List<String> Function()? topics, Uri? Function()? mirrorUrl, bool? hasIssues, bool? hasProjects, bool? hasPages, bool? hasWiki, bool? hasDownloads, bool Function()? hasDiscussions, bool Function()? hasPullRequests, RepoSearchResultItemPullRequestCreationPolicy Function()? pullRequestCreationPolicy, bool? archived, bool? disabled, String Function()? visibility, LicenseSimple? Function()? license, RepoSearchResultItemPermissions Function()? permissions, List<SearchResultTextMatches2> Function()? textMatches, String Function()? tempCloneToken, bool Function()? allowMergeCommit, bool Function()? allowSquashMerge, bool Function()? allowRebaseMerge, bool Function()? allowAutoMerge, bool Function()? deleteBranchOnMerge, bool Function()? allowForking, bool Function()? isTemplate, bool Function()? webCommitSignoffRequired, }) { return RepoSearchResultItem(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  name: name ?? this.name,
  fullName: fullName ?? this.fullName,
  owner: owner != null ? owner() : this.owner,
  private: private ?? this.private,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  description: description != null ? description() : this.description,
  fork: fork ?? this.fork,
  url: url ?? this.url,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  pushedAt: pushedAt ?? this.pushedAt,
  homepage: homepage != null ? homepage() : this.homepage,
  size: size ?? this.size,
  stargazersCount: stargazersCount ?? this.stargazersCount,
  watchersCount: watchersCount ?? this.watchersCount,
  language: language != null ? language() : this.language,
  forksCount: forksCount ?? this.forksCount,
  openIssuesCount: openIssuesCount ?? this.openIssuesCount,
  masterBranch: masterBranch != null ? masterBranch() : this.masterBranch,
  defaultBranch: defaultBranch ?? this.defaultBranch,
  score: score ?? this.score,
  forksUrl: forksUrl ?? this.forksUrl,
  keysUrl: keysUrl ?? this.keysUrl,
  collaboratorsUrl: collaboratorsUrl ?? this.collaboratorsUrl,
  teamsUrl: teamsUrl ?? this.teamsUrl,
  hooksUrl: hooksUrl ?? this.hooksUrl,
  issueEventsUrl: issueEventsUrl ?? this.issueEventsUrl,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  assigneesUrl: assigneesUrl ?? this.assigneesUrl,
  branchesUrl: branchesUrl ?? this.branchesUrl,
  tagsUrl: tagsUrl ?? this.tagsUrl,
  blobsUrl: blobsUrl ?? this.blobsUrl,
  gitTagsUrl: gitTagsUrl ?? this.gitTagsUrl,
  gitRefsUrl: gitRefsUrl ?? this.gitRefsUrl,
  treesUrl: treesUrl ?? this.treesUrl,
  statusesUrl: statusesUrl ?? this.statusesUrl,
  languagesUrl: languagesUrl ?? this.languagesUrl,
  stargazersUrl: stargazersUrl ?? this.stargazersUrl,
  contributorsUrl: contributorsUrl ?? this.contributorsUrl,
  subscribersUrl: subscribersUrl ?? this.subscribersUrl,
  subscriptionUrl: subscriptionUrl ?? this.subscriptionUrl,
  commitsUrl: commitsUrl ?? this.commitsUrl,
  gitCommitsUrl: gitCommitsUrl ?? this.gitCommitsUrl,
  commentsUrl: commentsUrl ?? this.commentsUrl,
  issueCommentUrl: issueCommentUrl ?? this.issueCommentUrl,
  contentsUrl: contentsUrl ?? this.contentsUrl,
  compareUrl: compareUrl ?? this.compareUrl,
  mergesUrl: mergesUrl ?? this.mergesUrl,
  archiveUrl: archiveUrl ?? this.archiveUrl,
  downloadsUrl: downloadsUrl ?? this.downloadsUrl,
  issuesUrl: issuesUrl ?? this.issuesUrl,
  pullsUrl: pullsUrl ?? this.pullsUrl,
  milestonesUrl: milestonesUrl ?? this.milestonesUrl,
  notificationsUrl: notificationsUrl ?? this.notificationsUrl,
  labelsUrl: labelsUrl ?? this.labelsUrl,
  releasesUrl: releasesUrl ?? this.releasesUrl,
  deploymentsUrl: deploymentsUrl ?? this.deploymentsUrl,
  gitUrl: gitUrl ?? this.gitUrl,
  sshUrl: sshUrl ?? this.sshUrl,
  cloneUrl: cloneUrl ?? this.cloneUrl,
  svnUrl: svnUrl ?? this.svnUrl,
  forks: forks ?? this.forks,
  openIssues: openIssues ?? this.openIssues,
  watchers: watchers ?? this.watchers,
  topics: topics != null ? topics() : this.topics,
  mirrorUrl: mirrorUrl != null ? mirrorUrl() : this.mirrorUrl,
  hasIssues: hasIssues ?? this.hasIssues,
  hasProjects: hasProjects ?? this.hasProjects,
  hasPages: hasPages ?? this.hasPages,
  hasWiki: hasWiki ?? this.hasWiki,
  hasDownloads: hasDownloads ?? this.hasDownloads,
  hasDiscussions: hasDiscussions != null ? hasDiscussions() : this.hasDiscussions,
  hasPullRequests: hasPullRequests != null ? hasPullRequests() : this.hasPullRequests,
  pullRequestCreationPolicy: pullRequestCreationPolicy != null ? pullRequestCreationPolicy() : this.pullRequestCreationPolicy,
  archived: archived ?? this.archived,
  disabled: disabled ?? this.disabled,
  visibility: visibility != null ? visibility() : this.visibility,
  license: license != null ? license() : this.license,
  permissions: permissions != null ? permissions() : this.permissions,
  textMatches: textMatches != null ? textMatches() : this.textMatches,
  tempCloneToken: tempCloneToken != null ? tempCloneToken() : this.tempCloneToken,
  allowMergeCommit: allowMergeCommit != null ? allowMergeCommit() : this.allowMergeCommit,
  allowSquashMerge: allowSquashMerge != null ? allowSquashMerge() : this.allowSquashMerge,
  allowRebaseMerge: allowRebaseMerge != null ? allowRebaseMerge() : this.allowRebaseMerge,
  allowAutoMerge: allowAutoMerge != null ? allowAutoMerge() : this.allowAutoMerge,
  deleteBranchOnMerge: deleteBranchOnMerge != null ? deleteBranchOnMerge() : this.deleteBranchOnMerge,
  allowForking: allowForking != null ? allowForking() : this.allowForking,
  isTemplate: isTemplate != null ? isTemplate() : this.isTemplate,
  webCommitSignoffRequired: webCommitSignoffRequired != null ? webCommitSignoffRequired() : this.webCommitSignoffRequired,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepoSearchResultItem &&
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
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          pushedAt == other.pushedAt &&
          homepage == other.homepage &&
          size == other.size &&
          stargazersCount == other.stargazersCount &&
          watchersCount == other.watchersCount &&
          language == other.language &&
          forksCount == other.forksCount &&
          openIssuesCount == other.openIssuesCount &&
          masterBranch == other.masterBranch &&
          defaultBranch == other.defaultBranch &&
          score == other.score &&
          forksUrl == other.forksUrl &&
          keysUrl == other.keysUrl &&
          collaboratorsUrl == other.collaboratorsUrl &&
          teamsUrl == other.teamsUrl &&
          hooksUrl == other.hooksUrl &&
          issueEventsUrl == other.issueEventsUrl &&
          eventsUrl == other.eventsUrl &&
          assigneesUrl == other.assigneesUrl &&
          branchesUrl == other.branchesUrl &&
          tagsUrl == other.tagsUrl &&
          blobsUrl == other.blobsUrl &&
          gitTagsUrl == other.gitTagsUrl &&
          gitRefsUrl == other.gitRefsUrl &&
          treesUrl == other.treesUrl &&
          statusesUrl == other.statusesUrl &&
          languagesUrl == other.languagesUrl &&
          stargazersUrl == other.stargazersUrl &&
          contributorsUrl == other.contributorsUrl &&
          subscribersUrl == other.subscribersUrl &&
          subscriptionUrl == other.subscriptionUrl &&
          commitsUrl == other.commitsUrl &&
          gitCommitsUrl == other.gitCommitsUrl &&
          commentsUrl == other.commentsUrl &&
          issueCommentUrl == other.issueCommentUrl &&
          contentsUrl == other.contentsUrl &&
          compareUrl == other.compareUrl &&
          mergesUrl == other.mergesUrl &&
          archiveUrl == other.archiveUrl &&
          downloadsUrl == other.downloadsUrl &&
          issuesUrl == other.issuesUrl &&
          pullsUrl == other.pullsUrl &&
          milestonesUrl == other.milestonesUrl &&
          notificationsUrl == other.notificationsUrl &&
          labelsUrl == other.labelsUrl &&
          releasesUrl == other.releasesUrl &&
          deploymentsUrl == other.deploymentsUrl &&
          gitUrl == other.gitUrl &&
          sshUrl == other.sshUrl &&
          cloneUrl == other.cloneUrl &&
          svnUrl == other.svnUrl &&
          forks == other.forks &&
          openIssues == other.openIssues &&
          watchers == other.watchers &&
          listEquals(topics, other.topics) &&
          mirrorUrl == other.mirrorUrl &&
          hasIssues == other.hasIssues &&
          hasProjects == other.hasProjects &&
          hasPages == other.hasPages &&
          hasWiki == other.hasWiki &&
          hasDownloads == other.hasDownloads &&
          hasDiscussions == other.hasDiscussions &&
          hasPullRequests == other.hasPullRequests &&
          pullRequestCreationPolicy == other.pullRequestCreationPolicy &&
          archived == other.archived &&
          disabled == other.disabled &&
          visibility == other.visibility &&
          license == other.license &&
          permissions == other.permissions &&
          listEquals(textMatches, other.textMatches) &&
          tempCloneToken == other.tempCloneToken &&
          allowMergeCommit == other.allowMergeCommit &&
          allowSquashMerge == other.allowSquashMerge &&
          allowRebaseMerge == other.allowRebaseMerge &&
          allowAutoMerge == other.allowAutoMerge &&
          deleteBranchOnMerge == other.deleteBranchOnMerge &&
          allowForking == other.allowForking &&
          isTemplate == other.isTemplate &&
          webCommitSignoffRequired == other.webCommitSignoffRequired; } 
@override int get hashCode { return Object.hashAll([id, nodeId, name, fullName, owner, private, htmlUrl, description, fork, url, createdAt, updatedAt, pushedAt, homepage, size, stargazersCount, watchersCount, language, forksCount, openIssuesCount, masterBranch, defaultBranch, score, forksUrl, keysUrl, collaboratorsUrl, teamsUrl, hooksUrl, issueEventsUrl, eventsUrl, assigneesUrl, branchesUrl, tagsUrl, blobsUrl, gitTagsUrl, gitRefsUrl, treesUrl, statusesUrl, languagesUrl, stargazersUrl, contributorsUrl, subscribersUrl, subscriptionUrl, commitsUrl, gitCommitsUrl, commentsUrl, issueCommentUrl, contentsUrl, compareUrl, mergesUrl, archiveUrl, downloadsUrl, issuesUrl, pullsUrl, milestonesUrl, notificationsUrl, labelsUrl, releasesUrl, deploymentsUrl, gitUrl, sshUrl, cloneUrl, svnUrl, forks, openIssues, watchers, Object.hashAll(topics ?? const []), mirrorUrl, hasIssues, hasProjects, hasPages, hasWiki, hasDownloads, hasDiscussions, hasPullRequests, pullRequestCreationPolicy, archived, disabled, visibility, license, permissions, Object.hashAll(textMatches ?? const []), tempCloneToken, allowMergeCommit, allowSquashMerge, allowRebaseMerge, allowAutoMerge, deleteBranchOnMerge, allowForking, isTemplate, webCommitSignoffRequired]); } 
@override String toString() { return 'RepoSearchResultItem(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, owner: $owner, private: $private, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, homepage: $homepage, size: $size, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, forksCount: $forksCount, openIssuesCount: $openIssuesCount, masterBranch: $masterBranch, defaultBranch: $defaultBranch, score: $score, forksUrl: $forksUrl, keysUrl: $keysUrl, collaboratorsUrl: $collaboratorsUrl, teamsUrl: $teamsUrl, hooksUrl: $hooksUrl, issueEventsUrl: $issueEventsUrl, eventsUrl: $eventsUrl, assigneesUrl: $assigneesUrl, branchesUrl: $branchesUrl, tagsUrl: $tagsUrl, blobsUrl: $blobsUrl, gitTagsUrl: $gitTagsUrl, gitRefsUrl: $gitRefsUrl, treesUrl: $treesUrl, statusesUrl: $statusesUrl, languagesUrl: $languagesUrl, stargazersUrl: $stargazersUrl, contributorsUrl: $contributorsUrl, subscribersUrl: $subscribersUrl, subscriptionUrl: $subscriptionUrl, commitsUrl: $commitsUrl, gitCommitsUrl: $gitCommitsUrl, commentsUrl: $commentsUrl, issueCommentUrl: $issueCommentUrl, contentsUrl: $contentsUrl, compareUrl: $compareUrl, mergesUrl: $mergesUrl, archiveUrl: $archiveUrl, downloadsUrl: $downloadsUrl, issuesUrl: $issuesUrl, pullsUrl: $pullsUrl, milestonesUrl: $milestonesUrl, notificationsUrl: $notificationsUrl, labelsUrl: $labelsUrl, releasesUrl: $releasesUrl, deploymentsUrl: $deploymentsUrl, gitUrl: $gitUrl, sshUrl: $sshUrl, cloneUrl: $cloneUrl, svnUrl: $svnUrl, forks: $forks, openIssues: $openIssues, watchers: $watchers, topics: $topics, mirrorUrl: $mirrorUrl, hasIssues: $hasIssues, hasProjects: $hasProjects, hasPages: $hasPages, hasWiki: $hasWiki, hasDownloads: $hasDownloads, hasDiscussions: $hasDiscussions, hasPullRequests: $hasPullRequests, pullRequestCreationPolicy: $pullRequestCreationPolicy, archived: $archived, disabled: $disabled, visibility: $visibility, license: $license, permissions: $permissions, textMatches: $textMatches, tempCloneToken: $tempCloneToken, allowMergeCommit: $allowMergeCommit, allowSquashMerge: $allowSquashMerge, allowRebaseMerge: $allowRebaseMerge, allowAutoMerge: $allowAutoMerge, deleteBranchOnMerge: $deleteBranchOnMerge, allowForking: $allowForking, isTemplate: $isTemplate, webCommitSignoffRequired: $webCommitSignoffRequired)'; } 
 }
