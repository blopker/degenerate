// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Required when using `squash_merge_commit_message`.
/// 
/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
@immutable final class ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle {const ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle._(this.value);

factory ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'COMMIT_OR_PR_TITLE' => commitOrPrTitle,
  _ => ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle._(json),
}; }

static const ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle prTitle = ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle._('PR_TITLE');

static const ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle commitOrPrTitle = ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle._('COMMIT_OR_PR_TITLE');

static const List<ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle> values = [prTitle, commitOrPrTitle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle($value)'; } 
 }
/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
@immutable final class ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage {const ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage._(this.value);

factory ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'COMMIT_MESSAGES' => commitMessages,
  'BLANK' => blank,
  _ => ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage._(json),
}; }

static const ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage prBody = ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage._('PR_BODY');

static const ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage commitMessages = ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage._('COMMIT_MESSAGES');

static const ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage blank = ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage._('BLANK');

static const List<ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage> values = [prBody, commitMessages, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage($value)'; } 
 }
/// Required when using `merge_commit_message`.
/// 
/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
@immutable final class ReposCreateForAuthenticatedUserRequestMergeCommitTitle {const ReposCreateForAuthenticatedUserRequestMergeCommitTitle._(this.value);

factory ReposCreateForAuthenticatedUserRequestMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'MERGE_MESSAGE' => mergeMessage,
  _ => ReposCreateForAuthenticatedUserRequestMergeCommitTitle._(json),
}; }

static const ReposCreateForAuthenticatedUserRequestMergeCommitTitle prTitle = ReposCreateForAuthenticatedUserRequestMergeCommitTitle._('PR_TITLE');

static const ReposCreateForAuthenticatedUserRequestMergeCommitTitle mergeMessage = ReposCreateForAuthenticatedUserRequestMergeCommitTitle._('MERGE_MESSAGE');

static const List<ReposCreateForAuthenticatedUserRequestMergeCommitTitle> values = [prTitle, mergeMessage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserRequestMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserRequestMergeCommitTitle($value)'; } 
 }
/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
@immutable final class ReposCreateForAuthenticatedUserRequestMergeCommitMessage {const ReposCreateForAuthenticatedUserRequestMergeCommitMessage._(this.value);

factory ReposCreateForAuthenticatedUserRequestMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'PR_TITLE' => prTitle,
  'BLANK' => blank,
  _ => ReposCreateForAuthenticatedUserRequestMergeCommitMessage._(json),
}; }

static const ReposCreateForAuthenticatedUserRequestMergeCommitMessage prBody = ReposCreateForAuthenticatedUserRequestMergeCommitMessage._('PR_BODY');

static const ReposCreateForAuthenticatedUserRequestMergeCommitMessage prTitle = ReposCreateForAuthenticatedUserRequestMergeCommitMessage._('PR_TITLE');

static const ReposCreateForAuthenticatedUserRequestMergeCommitMessage blank = ReposCreateForAuthenticatedUserRequestMergeCommitMessage._('BLANK');

static const List<ReposCreateForAuthenticatedUserRequestMergeCommitMessage> values = [prBody, prTitle, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserRequestMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserRequestMergeCommitMessage($value)'; } 
 }
@immutable final class ReposCreateForAuthenticatedUserRequest {const ReposCreateForAuthenticatedUserRequest({required this.name, this.description, this.homepage, this.private, this.hasIssues, this.hasProjects, this.hasWiki, this.hasDiscussions, this.teamId, this.autoInit, this.gitignoreTemplate, this.licenseTemplate, this.allowSquashMerge, this.allowMergeCommit, this.allowRebaseMerge, this.allowAutoMerge, this.deleteBranchOnMerge, this.squashMergeCommitTitle, this.squashMergeCommitMessage, this.mergeCommitTitle, this.mergeCommitMessage, this.hasDownloads, this.isTemplate, });

factory ReposCreateForAuthenticatedUserRequest.fromJson(Map<String, dynamic> json) { return ReposCreateForAuthenticatedUserRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
  homepage: json['homepage'] as String?,
  private: json['private'] as bool?,
  hasIssues: json['has_issues'] as bool?,
  hasProjects: json['has_projects'] as bool?,
  hasWiki: json['has_wiki'] as bool?,
  hasDiscussions: json['has_discussions'] as bool?,
  teamId: json['team_id'] != null ? (json['team_id'] as num).toInt() : null,
  autoInit: json['auto_init'] as bool?,
  gitignoreTemplate: json['gitignore_template'] as String?,
  licenseTemplate: json['license_template'] as String?,
  allowSquashMerge: json['allow_squash_merge'] as bool?,
  allowMergeCommit: json['allow_merge_commit'] as bool?,
  allowRebaseMerge: json['allow_rebase_merge'] as bool?,
  allowAutoMerge: json['allow_auto_merge'] as bool?,
  deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
  squashMergeCommitTitle: json['squash_merge_commit_title'] != null ? ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle.fromJson(json['squash_merge_commit_title'] as String) : null,
  squashMergeCommitMessage: json['squash_merge_commit_message'] != null ? ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage.fromJson(json['squash_merge_commit_message'] as String) : null,
  mergeCommitTitle: json['merge_commit_title'] != null ? ReposCreateForAuthenticatedUserRequestMergeCommitTitle.fromJson(json['merge_commit_title'] as String) : null,
  mergeCommitMessage: json['merge_commit_message'] != null ? ReposCreateForAuthenticatedUserRequestMergeCommitMessage.fromJson(json['merge_commit_message'] as String) : null,
  hasDownloads: json['has_downloads'] as bool?,
  isTemplate: json['is_template'] as bool?,
); }

/// The name of the repository.
final String name;

/// A short description of the repository.
final String? description;

/// A URL with more information about the repository.
final String? homepage;

/// Whether the repository is private.
final bool? private;

/// Whether issues are enabled.
final bool? hasIssues;

/// Whether projects are enabled.
final bool? hasProjects;

/// Whether the wiki is enabled.
final bool? hasWiki;

/// Whether discussions are enabled.
final bool? hasDiscussions;

/// The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.
final int? teamId;

/// Whether the repository is initialized with a minimal README.
final bool? autoInit;

/// The desired language or platform to apply to the .gitignore.
final String? gitignoreTemplate;

/// The license keyword of the open source license for this repository.
final String? licenseTemplate;

/// Whether to allow squash merges for pull requests.
final bool? allowSquashMerge;

/// Whether to allow merge commits for pull requests.
final bool? allowMergeCommit;

/// Whether to allow rebase merges for pull requests.
final bool? allowRebaseMerge;

/// Whether to allow Auto-merge to be used on pull requests.
final bool? allowAutoMerge;

/// Whether to delete head branches when pull requests are merged
final bool? deleteBranchOnMerge;

/// Required when using `squash_merge_commit_message`.
/// 
/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
final ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle? squashMergeCommitTitle;

/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
final ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage? squashMergeCommitMessage;

/// Required when using `merge_commit_message`.
/// 
/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
final ReposCreateForAuthenticatedUserRequestMergeCommitTitle? mergeCommitTitle;

/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
final ReposCreateForAuthenticatedUserRequestMergeCommitMessage? mergeCommitMessage;

/// Whether downloads are enabled.
final bool? hasDownloads;

/// Whether this repository acts as a template that can be used to generate new repositories.
final bool? isTemplate;

/// The value with the schema default applied when absent.
bool get privateOrDefault { return private ?? false; } 
/// The value with the schema default applied when absent.
bool get hasIssuesOrDefault { return hasIssues ?? true; } 
/// The value with the schema default applied when absent.
bool get hasProjectsOrDefault { return hasProjects ?? true; } 
/// The value with the schema default applied when absent.
bool get hasWikiOrDefault { return hasWiki ?? true; } 
/// The value with the schema default applied when absent.
bool get hasDiscussionsOrDefault { return hasDiscussions ?? false; } 
/// The value with the schema default applied when absent.
bool get autoInitOrDefault { return autoInit ?? false; } 
/// The value with the schema default applied when absent.
bool get allowSquashMergeOrDefault { return allowSquashMerge ?? true; } 
/// The value with the schema default applied when absent.
bool get allowMergeCommitOrDefault { return allowMergeCommit ?? true; } 
/// The value with the schema default applied when absent.
bool get allowRebaseMergeOrDefault { return allowRebaseMerge ?? true; } 
/// The value with the schema default applied when absent.
bool get allowAutoMergeOrDefault { return allowAutoMerge ?? false; } 
/// The value with the schema default applied when absent.
bool get deleteBranchOnMergeOrDefault { return deleteBranchOnMerge ?? false; } 
/// The value with the schema default applied when absent.
bool get hasDownloadsOrDefault { return hasDownloads ?? true; } 
/// The value with the schema default applied when absent.
bool get isTemplateOrDefault { return isTemplate ?? false; } 
Map<String, dynamic> toJson() { return {
  'name': name,
  'description': ?description,
  'homepage': ?homepage,
  'private': ?private,
  'has_issues': ?hasIssues,
  'has_projects': ?hasProjects,
  'has_wiki': ?hasWiki,
  'has_discussions': ?hasDiscussions,
  'team_id': ?teamId,
  'auto_init': ?autoInit,
  'gitignore_template': ?gitignoreTemplate,
  'license_template': ?licenseTemplate,
  'allow_squash_merge': ?allowSquashMerge,
  'allow_merge_commit': ?allowMergeCommit,
  'allow_rebase_merge': ?allowRebaseMerge,
  'allow_auto_merge': ?allowAutoMerge,
  'delete_branch_on_merge': ?deleteBranchOnMerge,
  if (squashMergeCommitTitle != null) 'squash_merge_commit_title': squashMergeCommitTitle?.toJson(),
  if (squashMergeCommitMessage != null) 'squash_merge_commit_message': squashMergeCommitMessage?.toJson(),
  if (mergeCommitTitle != null) 'merge_commit_title': mergeCommitTitle?.toJson(),
  if (mergeCommitMessage != null) 'merge_commit_message': mergeCommitMessage?.toJson(),
  'has_downloads': ?hasDownloads,
  'is_template': ?isTemplate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
ReposCreateForAuthenticatedUserRequest copyWith({String? name, String? Function()? description, String? Function()? homepage, bool? Function()? private, bool? Function()? hasIssues, bool? Function()? hasProjects, bool? Function()? hasWiki, bool? Function()? hasDiscussions, int? Function()? teamId, bool? Function()? autoInit, String? Function()? gitignoreTemplate, String? Function()? licenseTemplate, bool? Function()? allowSquashMerge, bool? Function()? allowMergeCommit, bool? Function()? allowRebaseMerge, bool? Function()? allowAutoMerge, bool? Function()? deleteBranchOnMerge, ReposCreateForAuthenticatedUserRequestSquashMergeCommitTitle? Function()? squashMergeCommitTitle, ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage? Function()? squashMergeCommitMessage, ReposCreateForAuthenticatedUserRequestMergeCommitTitle? Function()? mergeCommitTitle, ReposCreateForAuthenticatedUserRequestMergeCommitMessage? Function()? mergeCommitMessage, bool? Function()? hasDownloads, bool? Function()? isTemplate, }) { return ReposCreateForAuthenticatedUserRequest(
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  homepage: homepage != null ? homepage() : this.homepage,
  private: private != null ? private() : this.private,
  hasIssues: hasIssues != null ? hasIssues() : this.hasIssues,
  hasProjects: hasProjects != null ? hasProjects() : this.hasProjects,
  hasWiki: hasWiki != null ? hasWiki() : this.hasWiki,
  hasDiscussions: hasDiscussions != null ? hasDiscussions() : this.hasDiscussions,
  teamId: teamId != null ? teamId() : this.teamId,
  autoInit: autoInit != null ? autoInit() : this.autoInit,
  gitignoreTemplate: gitignoreTemplate != null ? gitignoreTemplate() : this.gitignoreTemplate,
  licenseTemplate: licenseTemplate != null ? licenseTemplate() : this.licenseTemplate,
  allowSquashMerge: allowSquashMerge != null ? allowSquashMerge() : this.allowSquashMerge,
  allowMergeCommit: allowMergeCommit != null ? allowMergeCommit() : this.allowMergeCommit,
  allowRebaseMerge: allowRebaseMerge != null ? allowRebaseMerge() : this.allowRebaseMerge,
  allowAutoMerge: allowAutoMerge != null ? allowAutoMerge() : this.allowAutoMerge,
  deleteBranchOnMerge: deleteBranchOnMerge != null ? deleteBranchOnMerge() : this.deleteBranchOnMerge,
  squashMergeCommitTitle: squashMergeCommitTitle != null ? squashMergeCommitTitle() : this.squashMergeCommitTitle,
  squashMergeCommitMessage: squashMergeCommitMessage != null ? squashMergeCommitMessage() : this.squashMergeCommitMessage,
  mergeCommitTitle: mergeCommitTitle != null ? mergeCommitTitle() : this.mergeCommitTitle,
  mergeCommitMessage: mergeCommitMessage != null ? mergeCommitMessage() : this.mergeCommitMessage,
  hasDownloads: hasDownloads != null ? hasDownloads() : this.hasDownloads,
  isTemplate: isTemplate != null ? isTemplate() : this.isTemplate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateForAuthenticatedUserRequest &&
          name == other.name &&
          description == other.description &&
          homepage == other.homepage &&
          private == other.private &&
          hasIssues == other.hasIssues &&
          hasProjects == other.hasProjects &&
          hasWiki == other.hasWiki &&
          hasDiscussions == other.hasDiscussions &&
          teamId == other.teamId &&
          autoInit == other.autoInit &&
          gitignoreTemplate == other.gitignoreTemplate &&
          licenseTemplate == other.licenseTemplate &&
          allowSquashMerge == other.allowSquashMerge &&
          allowMergeCommit == other.allowMergeCommit &&
          allowRebaseMerge == other.allowRebaseMerge &&
          allowAutoMerge == other.allowAutoMerge &&
          deleteBranchOnMerge == other.deleteBranchOnMerge &&
          squashMergeCommitTitle == other.squashMergeCommitTitle &&
          squashMergeCommitMessage == other.squashMergeCommitMessage &&
          mergeCommitTitle == other.mergeCommitTitle &&
          mergeCommitMessage == other.mergeCommitMessage &&
          hasDownloads == other.hasDownloads &&
          isTemplate == other.isTemplate; } 
@override int get hashCode { return Object.hashAll([name, description, homepage, private, hasIssues, hasProjects, hasWiki, hasDiscussions, teamId, autoInit, gitignoreTemplate, licenseTemplate, allowSquashMerge, allowMergeCommit, allowRebaseMerge, allowAutoMerge, deleteBranchOnMerge, squashMergeCommitTitle, squashMergeCommitMessage, mergeCommitTitle, mergeCommitMessage, hasDownloads, isTemplate]); } 
@override String toString() { return 'ReposCreateForAuthenticatedUserRequest(name: $name, description: $description, homepage: $homepage, private: $private, hasIssues: $hasIssues, hasProjects: $hasProjects, hasWiki: $hasWiki, hasDiscussions: $hasDiscussions, teamId: $teamId, autoInit: $autoInit, gitignoreTemplate: $gitignoreTemplate, licenseTemplate: $licenseTemplate, allowSquashMerge: $allowSquashMerge, allowMergeCommit: $allowMergeCommit, allowRebaseMerge: $allowRebaseMerge, allowAutoMerge: $allowAutoMerge, deleteBranchOnMerge: $deleteBranchOnMerge, squashMergeCommitTitle: $squashMergeCommitTitle, squashMergeCommitMessage: $squashMergeCommitMessage, mergeCommitTitle: $mergeCommitTitle, mergeCommitMessage: $mergeCommitMessage, hasDownloads: $hasDownloads, isTemplate: $isTemplate)'; } 
 }
