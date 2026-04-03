// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The visibility of the repository.
@immutable final class ReposCreateInOrgRequestVisibility {const ReposCreateInOrgRequestVisibility._(this.value);

factory ReposCreateInOrgRequestVisibility.fromJson(String json) { return switch (json) {
  'public' => public,
  'private' => private,
  _ => ReposCreateInOrgRequestVisibility._(json),
}; }

static const ReposCreateInOrgRequestVisibility public = ReposCreateInOrgRequestVisibility._('public');

static const ReposCreateInOrgRequestVisibility private = ReposCreateInOrgRequestVisibility._('private');

static const List<ReposCreateInOrgRequestVisibility> values = [public, private];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgRequestVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateInOrgRequestVisibility($value)'; } 
 }
/// Required when using `squash_merge_commit_message`.
/// 
/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
@immutable final class ReposCreateInOrgRequestSquashMergeCommitTitle {const ReposCreateInOrgRequestSquashMergeCommitTitle._(this.value);

factory ReposCreateInOrgRequestSquashMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'COMMIT_OR_PR_TITLE' => commitOrPrTitle,
  _ => ReposCreateInOrgRequestSquashMergeCommitTitle._(json),
}; }

static const ReposCreateInOrgRequestSquashMergeCommitTitle prTitle = ReposCreateInOrgRequestSquashMergeCommitTitle._('PR_TITLE');

static const ReposCreateInOrgRequestSquashMergeCommitTitle commitOrPrTitle = ReposCreateInOrgRequestSquashMergeCommitTitle._('COMMIT_OR_PR_TITLE');

static const List<ReposCreateInOrgRequestSquashMergeCommitTitle> values = [prTitle, commitOrPrTitle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgRequestSquashMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateInOrgRequestSquashMergeCommitTitle($value)'; } 
 }
/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
@immutable final class ReposCreateInOrgRequestSquashMergeCommitMessage {const ReposCreateInOrgRequestSquashMergeCommitMessage._(this.value);

factory ReposCreateInOrgRequestSquashMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'COMMIT_MESSAGES' => commitMessages,
  'BLANK' => blank,
  _ => ReposCreateInOrgRequestSquashMergeCommitMessage._(json),
}; }

static const ReposCreateInOrgRequestSquashMergeCommitMessage prBody = ReposCreateInOrgRequestSquashMergeCommitMessage._('PR_BODY');

static const ReposCreateInOrgRequestSquashMergeCommitMessage commitMessages = ReposCreateInOrgRequestSquashMergeCommitMessage._('COMMIT_MESSAGES');

static const ReposCreateInOrgRequestSquashMergeCommitMessage blank = ReposCreateInOrgRequestSquashMergeCommitMessage._('BLANK');

static const List<ReposCreateInOrgRequestSquashMergeCommitMessage> values = [prBody, commitMessages, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgRequestSquashMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateInOrgRequestSquashMergeCommitMessage($value)'; } 
 }
/// Required when using `merge_commit_message`.
/// 
/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
@immutable final class ReposCreateInOrgRequestMergeCommitTitle {const ReposCreateInOrgRequestMergeCommitTitle._(this.value);

factory ReposCreateInOrgRequestMergeCommitTitle.fromJson(String json) { return switch (json) {
  'PR_TITLE' => prTitle,
  'MERGE_MESSAGE' => mergeMessage,
  _ => ReposCreateInOrgRequestMergeCommitTitle._(json),
}; }

static const ReposCreateInOrgRequestMergeCommitTitle prTitle = ReposCreateInOrgRequestMergeCommitTitle._('PR_TITLE');

static const ReposCreateInOrgRequestMergeCommitTitle mergeMessage = ReposCreateInOrgRequestMergeCommitTitle._('MERGE_MESSAGE');

static const List<ReposCreateInOrgRequestMergeCommitTitle> values = [prTitle, mergeMessage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgRequestMergeCommitTitle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateInOrgRequestMergeCommitTitle($value)'; } 
 }
/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
@immutable final class ReposCreateInOrgRequestMergeCommitMessage {const ReposCreateInOrgRequestMergeCommitMessage._(this.value);

factory ReposCreateInOrgRequestMergeCommitMessage.fromJson(String json) { return switch (json) {
  'PR_BODY' => prBody,
  'PR_TITLE' => prTitle,
  'BLANK' => blank,
  _ => ReposCreateInOrgRequestMergeCommitMessage._(json),
}; }

static const ReposCreateInOrgRequestMergeCommitMessage prBody = ReposCreateInOrgRequestMergeCommitMessage._('PR_BODY');

static const ReposCreateInOrgRequestMergeCommitMessage prTitle = ReposCreateInOrgRequestMergeCommitMessage._('PR_TITLE');

static const ReposCreateInOrgRequestMergeCommitMessage blank = ReposCreateInOrgRequestMergeCommitMessage._('BLANK');

static const List<ReposCreateInOrgRequestMergeCommitMessage> values = [prBody, prTitle, blank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgRequestMergeCommitMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposCreateInOrgRequestMergeCommitMessage($value)'; } 
 }
@immutable final class ReposCreateInOrgRequest {const ReposCreateInOrgRequest({required this.name, this.description, this.homepage, this.private = false, this.visibility, this.hasIssues = true, this.hasProjects = true, this.hasWiki = true, this.hasDownloads = true, this.isTemplate = false, this.teamId, this.autoInit = false, this.gitignoreTemplate, this.licenseTemplate, this.allowSquashMerge = true, this.allowMergeCommit = true, this.allowRebaseMerge = true, this.allowAutoMerge = false, this.deleteBranchOnMerge = false, this.useSquashPrTitleAsDefault = false, this.squashMergeCommitTitle, this.squashMergeCommitMessage, this.mergeCommitTitle, this.mergeCommitMessage, this.customProperties, });

factory ReposCreateInOrgRequest.fromJson(Map<String, dynamic> json) { return ReposCreateInOrgRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
  homepage: json['homepage'] as String?,
  private: json.containsKey('private') ? json['private'] as bool : false,
  visibility: json['visibility'] != null ? ReposCreateInOrgRequestVisibility.fromJson(json['visibility'] as String) : null,
  hasIssues: json.containsKey('has_issues') ? json['has_issues'] as bool : true,
  hasProjects: json.containsKey('has_projects') ? json['has_projects'] as bool : true,
  hasWiki: json.containsKey('has_wiki') ? json['has_wiki'] as bool : true,
  hasDownloads: json.containsKey('has_downloads') ? json['has_downloads'] as bool : true,
  isTemplate: json.containsKey('is_template') ? json['is_template'] as bool : false,
  teamId: json['team_id'] != null ? (json['team_id'] as num).toInt() : null,
  autoInit: json.containsKey('auto_init') ? json['auto_init'] as bool : false,
  gitignoreTemplate: json['gitignore_template'] as String?,
  licenseTemplate: json['license_template'] as String?,
  allowSquashMerge: json.containsKey('allow_squash_merge') ? json['allow_squash_merge'] as bool : true,
  allowMergeCommit: json.containsKey('allow_merge_commit') ? json['allow_merge_commit'] as bool : true,
  allowRebaseMerge: json.containsKey('allow_rebase_merge') ? json['allow_rebase_merge'] as bool : true,
  allowAutoMerge: json.containsKey('allow_auto_merge') ? json['allow_auto_merge'] as bool : false,
  deleteBranchOnMerge: json.containsKey('delete_branch_on_merge') ? json['delete_branch_on_merge'] as bool : false,
  useSquashPrTitleAsDefault: json.containsKey('use_squash_pr_title_as_default') ? json['use_squash_pr_title_as_default'] as bool : false,
  squashMergeCommitTitle: json['squash_merge_commit_title'] != null ? ReposCreateInOrgRequestSquashMergeCommitTitle.fromJson(json['squash_merge_commit_title'] as String) : null,
  squashMergeCommitMessage: json['squash_merge_commit_message'] != null ? ReposCreateInOrgRequestSquashMergeCommitMessage.fromJson(json['squash_merge_commit_message'] as String) : null,
  mergeCommitTitle: json['merge_commit_title'] != null ? ReposCreateInOrgRequestMergeCommitTitle.fromJson(json['merge_commit_title'] as String) : null,
  mergeCommitMessage: json['merge_commit_message'] != null ? ReposCreateInOrgRequestMergeCommitMessage.fromJson(json['merge_commit_message'] as String) : null,
  customProperties: json['custom_properties'] as Map<String, dynamic>?,
); }

/// The name of the repository.
final String name;

/// A short description of the repository.
final String? description;

/// A URL with more information about the repository.
final String? homepage;

/// Whether the repository is private.
final bool private;

/// The visibility of the repository.
final ReposCreateInOrgRequestVisibility? visibility;

/// Either `true` to enable issues for this repository or `false` to disable them.
final bool hasIssues;

/// Either `true` to enable projects for this repository or `false` to disable them. **Note:** If you're creating a repository in an organization that has disabled repository projects, the default is `false`, and if you pass `true`, the API returns an error.
final bool hasProjects;

/// Either `true` to enable the wiki for this repository or `false` to disable it.
final bool hasWiki;

/// Whether downloads are enabled.
final bool hasDownloads;

/// Either `true` to make this repo available as a template repository or `false` to prevent it.
final bool isTemplate;

/// The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.
final int? teamId;

/// Pass `true` to create an initial commit with empty README.
final bool autoInit;

/// Desired language or platform [.gitignore template](https://github.com/github/gitignore) to apply. Use the name of the template without the extension. For example, "Haskell".
final String? gitignoreTemplate;

/// Choose an [open source license template](https://choosealicense.com/) that best suits your needs, and then use the [license keyword](https://docs.github.com/articles/licensing-a-repository/#searching-github-by-license-type) as the `license_template` string. For example, "mit" or "mpl-2.0".
final String? licenseTemplate;

/// Either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging.
final bool allowSquashMerge;

/// Either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits.
final bool allowMergeCommit;

/// Either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging.
final bool allowRebaseMerge;

/// Either `true` to allow auto-merge on pull requests, or `false` to disallow auto-merge.
final bool allowAutoMerge;

/// Either `true` to allow automatically deleting head branches when pull requests are merged, or `false` to prevent automatic deletion. **The authenticated user must be an organization owner to set this property to `true`.**
final bool deleteBranchOnMerge;

/// Either `true` to allow squash-merge commits to use pull request title, or `false` to use commit message. **This property is closing down. Please use `squash_merge_commit_title` instead.
final bool useSquashPrTitleAsDefault;

/// Required when using `squash_merge_commit_message`.
/// 
/// The default value for a squash merge commit title:
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull request's title (when more than one commit).
final ReposCreateInOrgRequestSquashMergeCommitTitle? squashMergeCommitTitle;

/// The default value for a squash merge commit message:
/// 
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
final ReposCreateInOrgRequestSquashMergeCommitMessage? squashMergeCommitMessage;

/// Required when using `merge_commit_message`.
/// 
/// The default value for a merge commit title.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull request #123 from branch-name).
final ReposCreateInOrgRequestMergeCommitTitle? mergeCommitTitle;

/// The default value for a merge commit message.
/// 
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
final ReposCreateInOrgRequestMergeCommitMessage? mergeCommitMessage;

/// The custom properties for the new repository. The keys are the custom property names, and the values are the corresponding custom property values.
final Map<String,dynamic>? customProperties;

Map<String, dynamic> toJson() { return {
  'name': name,
  'description': ?description,
  'homepage': ?homepage,
  'private': private,
  if (visibility != null) 'visibility': visibility?.toJson(),
  'has_issues': hasIssues,
  'has_projects': hasProjects,
  'has_wiki': hasWiki,
  'has_downloads': hasDownloads,
  'is_template': isTemplate,
  'team_id': ?teamId,
  'auto_init': autoInit,
  'gitignore_template': ?gitignoreTemplate,
  'license_template': ?licenseTemplate,
  'allow_squash_merge': allowSquashMerge,
  'allow_merge_commit': allowMergeCommit,
  'allow_rebase_merge': allowRebaseMerge,
  'allow_auto_merge': allowAutoMerge,
  'delete_branch_on_merge': deleteBranchOnMerge,
  'use_squash_pr_title_as_default': useSquashPrTitleAsDefault,
  if (squashMergeCommitTitle != null) 'squash_merge_commit_title': squashMergeCommitTitle?.toJson(),
  if (squashMergeCommitMessage != null) 'squash_merge_commit_message': squashMergeCommitMessage?.toJson(),
  if (mergeCommitTitle != null) 'merge_commit_title': mergeCommitTitle?.toJson(),
  if (mergeCommitMessage != null) 'merge_commit_message': mergeCommitMessage?.toJson(),
  'custom_properties': ?customProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
ReposCreateInOrgRequest copyWith({String? name, String Function()? description, String Function()? homepage, bool Function()? private, ReposCreateInOrgRequestVisibility Function()? visibility, bool Function()? hasIssues, bool Function()? hasProjects, bool Function()? hasWiki, bool Function()? hasDownloads, bool Function()? isTemplate, int Function()? teamId, bool Function()? autoInit, String Function()? gitignoreTemplate, String Function()? licenseTemplate, bool Function()? allowSquashMerge, bool Function()? allowMergeCommit, bool Function()? allowRebaseMerge, bool Function()? allowAutoMerge, bool Function()? deleteBranchOnMerge, bool Function()? useSquashPrTitleAsDefault, ReposCreateInOrgRequestSquashMergeCommitTitle Function()? squashMergeCommitTitle, ReposCreateInOrgRequestSquashMergeCommitMessage Function()? squashMergeCommitMessage, ReposCreateInOrgRequestMergeCommitTitle Function()? mergeCommitTitle, ReposCreateInOrgRequestMergeCommitMessage Function()? mergeCommitMessage, Map<String, dynamic> Function()? customProperties, }) { return ReposCreateInOrgRequest(
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  homepage: homepage != null ? homepage() : this.homepage,
  private: private != null ? private() : this.private,
  visibility: visibility != null ? visibility() : this.visibility,
  hasIssues: hasIssues != null ? hasIssues() : this.hasIssues,
  hasProjects: hasProjects != null ? hasProjects() : this.hasProjects,
  hasWiki: hasWiki != null ? hasWiki() : this.hasWiki,
  hasDownloads: hasDownloads != null ? hasDownloads() : this.hasDownloads,
  isTemplate: isTemplate != null ? isTemplate() : this.isTemplate,
  teamId: teamId != null ? teamId() : this.teamId,
  autoInit: autoInit != null ? autoInit() : this.autoInit,
  gitignoreTemplate: gitignoreTemplate != null ? gitignoreTemplate() : this.gitignoreTemplate,
  licenseTemplate: licenseTemplate != null ? licenseTemplate() : this.licenseTemplate,
  allowSquashMerge: allowSquashMerge != null ? allowSquashMerge() : this.allowSquashMerge,
  allowMergeCommit: allowMergeCommit != null ? allowMergeCommit() : this.allowMergeCommit,
  allowRebaseMerge: allowRebaseMerge != null ? allowRebaseMerge() : this.allowRebaseMerge,
  allowAutoMerge: allowAutoMerge != null ? allowAutoMerge() : this.allowAutoMerge,
  deleteBranchOnMerge: deleteBranchOnMerge != null ? deleteBranchOnMerge() : this.deleteBranchOnMerge,
  useSquashPrTitleAsDefault: useSquashPrTitleAsDefault != null ? useSquashPrTitleAsDefault() : this.useSquashPrTitleAsDefault,
  squashMergeCommitTitle: squashMergeCommitTitle != null ? squashMergeCommitTitle() : this.squashMergeCommitTitle,
  squashMergeCommitMessage: squashMergeCommitMessage != null ? squashMergeCommitMessage() : this.squashMergeCommitMessage,
  mergeCommitTitle: mergeCommitTitle != null ? mergeCommitTitle() : this.mergeCommitTitle,
  mergeCommitMessage: mergeCommitMessage != null ? mergeCommitMessage() : this.mergeCommitMessage,
  customProperties: customProperties != null ? customProperties() : this.customProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateInOrgRequest &&
          name == other.name &&
          description == other.description &&
          homepage == other.homepage &&
          private == other.private &&
          visibility == other.visibility &&
          hasIssues == other.hasIssues &&
          hasProjects == other.hasProjects &&
          hasWiki == other.hasWiki &&
          hasDownloads == other.hasDownloads &&
          isTemplate == other.isTemplate &&
          teamId == other.teamId &&
          autoInit == other.autoInit &&
          gitignoreTemplate == other.gitignoreTemplate &&
          licenseTemplate == other.licenseTemplate &&
          allowSquashMerge == other.allowSquashMerge &&
          allowMergeCommit == other.allowMergeCommit &&
          allowRebaseMerge == other.allowRebaseMerge &&
          allowAutoMerge == other.allowAutoMerge &&
          deleteBranchOnMerge == other.deleteBranchOnMerge &&
          useSquashPrTitleAsDefault == other.useSquashPrTitleAsDefault &&
          squashMergeCommitTitle == other.squashMergeCommitTitle &&
          squashMergeCommitMessage == other.squashMergeCommitMessage &&
          mergeCommitTitle == other.mergeCommitTitle &&
          mergeCommitMessage == other.mergeCommitMessage &&
          customProperties == other.customProperties; } 
@override int get hashCode { return Object.hashAll([name, description, homepage, private, visibility, hasIssues, hasProjects, hasWiki, hasDownloads, isTemplate, teamId, autoInit, gitignoreTemplate, licenseTemplate, allowSquashMerge, allowMergeCommit, allowRebaseMerge, allowAutoMerge, deleteBranchOnMerge, useSquashPrTitleAsDefault, squashMergeCommitTitle, squashMergeCommitMessage, mergeCommitTitle, mergeCommitMessage, customProperties]); } 
@override String toString() { return 'ReposCreateInOrgRequest(name: $name, description: $description, homepage: $homepage, private: $private, visibility: $visibility, hasIssues: $hasIssues, hasProjects: $hasProjects, hasWiki: $hasWiki, hasDownloads: $hasDownloads, isTemplate: $isTemplate, teamId: $teamId, autoInit: $autoInit, gitignoreTemplate: $gitignoreTemplate, licenseTemplate: $licenseTemplate, allowSquashMerge: $allowSquashMerge, allowMergeCommit: $allowMergeCommit, allowRebaseMerge: $allowRebaseMerge, allowAutoMerge: $allowAutoMerge, deleteBranchOnMerge: $deleteBranchOnMerge, useSquashPrTitleAsDefault: $useSquashPrTitleAsDefault, squashMergeCommitTitle: $squashMergeCommitTitle, squashMergeCommitMessage: $squashMergeCommitMessage, mergeCommitTitle: $mergeCommitTitle, mergeCommitMessage: $mergeCommitMessage, customProperties: $customProperties)'; } 
 }
