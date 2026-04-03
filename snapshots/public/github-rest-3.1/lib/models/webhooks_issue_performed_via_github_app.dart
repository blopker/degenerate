// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhooks_issue_performed_via_github_app_owner.dart';import 'webhooks_issue_performed_via_github_app_permissions.dart';@immutable final class WebhooksIssuePerformedViaGithubAppEvents {const WebhooksIssuePerformedViaGithubAppEvents._(this.value);

factory WebhooksIssuePerformedViaGithubAppEvents.fromJson(String json) { return switch (json) {
  'branch_protection_rule' => branchProtectionRule,
  'check_run' => checkRun,
  'check_suite' => checkSuite,
  'code_scanning_alert' => codeScanningAlert,
  'commit_comment' => commitComment,
  'content_reference' => contentReference,
  'create' => create,
  'delete' => delete,
  'deployment' => deployment,
  'deployment_review' => deploymentReview,
  'deployment_status' => deploymentStatus,
  'deploy_key' => deployKey,
  'discussion' => discussion,
  'discussion_comment' => discussionComment,
  'fork' => fork,
  'gollum' => gollum,
  'issues' => issues,
  'issue_comment' => issueComment,
  'label' => label,
  'member' => member,
  'membership' => membership,
  'milestone' => milestone,
  'organization' => organization,
  'org_block' => orgBlock,
  'page_build' => pageBuild,
  'project' => project,
  'project_card' => projectCard,
  'project_column' => projectColumn,
  'public' => public,
  'pull_request' => pullRequest,
  'pull_request_review' => pullRequestReview,
  'pull_request_review_comment' => pullRequestReviewComment,
  'push' => push,
  'registry_package' => registryPackage,
  'release' => release,
  'repository' => repository,
  'repository_dispatch' => repositoryDispatch,
  'secret_scanning_alert' => secretScanningAlert,
  'star' => star,
  'status' => status,
  'team' => team,
  'team_add' => teamAdd,
  'watch' => watch,
  'workflow_dispatch' => workflowDispatch,
  'workflow_run' => workflowRun,
  'reminder' => reminder,
  'pull_request_review_thread' => pullRequestReviewThread,
  _ => WebhooksIssuePerformedViaGithubAppEvents._(json),
}; }

static const WebhooksIssuePerformedViaGithubAppEvents branchProtectionRule = WebhooksIssuePerformedViaGithubAppEvents._('branch_protection_rule');

static const WebhooksIssuePerformedViaGithubAppEvents checkRun = WebhooksIssuePerformedViaGithubAppEvents._('check_run');

static const WebhooksIssuePerformedViaGithubAppEvents checkSuite = WebhooksIssuePerformedViaGithubAppEvents._('check_suite');

static const WebhooksIssuePerformedViaGithubAppEvents codeScanningAlert = WebhooksIssuePerformedViaGithubAppEvents._('code_scanning_alert');

static const WebhooksIssuePerformedViaGithubAppEvents commitComment = WebhooksIssuePerformedViaGithubAppEvents._('commit_comment');

static const WebhooksIssuePerformedViaGithubAppEvents contentReference = WebhooksIssuePerformedViaGithubAppEvents._('content_reference');

static const WebhooksIssuePerformedViaGithubAppEvents create = WebhooksIssuePerformedViaGithubAppEvents._('create');

static const WebhooksIssuePerformedViaGithubAppEvents delete = WebhooksIssuePerformedViaGithubAppEvents._('delete');

static const WebhooksIssuePerformedViaGithubAppEvents deployment = WebhooksIssuePerformedViaGithubAppEvents._('deployment');

static const WebhooksIssuePerformedViaGithubAppEvents deploymentReview = WebhooksIssuePerformedViaGithubAppEvents._('deployment_review');

static const WebhooksIssuePerformedViaGithubAppEvents deploymentStatus = WebhooksIssuePerformedViaGithubAppEvents._('deployment_status');

static const WebhooksIssuePerformedViaGithubAppEvents deployKey = WebhooksIssuePerformedViaGithubAppEvents._('deploy_key');

static const WebhooksIssuePerformedViaGithubAppEvents discussion = WebhooksIssuePerformedViaGithubAppEvents._('discussion');

static const WebhooksIssuePerformedViaGithubAppEvents discussionComment = WebhooksIssuePerformedViaGithubAppEvents._('discussion_comment');

static const WebhooksIssuePerformedViaGithubAppEvents fork = WebhooksIssuePerformedViaGithubAppEvents._('fork');

static const WebhooksIssuePerformedViaGithubAppEvents gollum = WebhooksIssuePerformedViaGithubAppEvents._('gollum');

static const WebhooksIssuePerformedViaGithubAppEvents issues = WebhooksIssuePerformedViaGithubAppEvents._('issues');

static const WebhooksIssuePerformedViaGithubAppEvents issueComment = WebhooksIssuePerformedViaGithubAppEvents._('issue_comment');

static const WebhooksIssuePerformedViaGithubAppEvents label = WebhooksIssuePerformedViaGithubAppEvents._('label');

static const WebhooksIssuePerformedViaGithubAppEvents member = WebhooksIssuePerformedViaGithubAppEvents._('member');

static const WebhooksIssuePerformedViaGithubAppEvents membership = WebhooksIssuePerformedViaGithubAppEvents._('membership');

static const WebhooksIssuePerformedViaGithubAppEvents milestone = WebhooksIssuePerformedViaGithubAppEvents._('milestone');

static const WebhooksIssuePerformedViaGithubAppEvents organization = WebhooksIssuePerformedViaGithubAppEvents._('organization');

static const WebhooksIssuePerformedViaGithubAppEvents orgBlock = WebhooksIssuePerformedViaGithubAppEvents._('org_block');

static const WebhooksIssuePerformedViaGithubAppEvents pageBuild = WebhooksIssuePerformedViaGithubAppEvents._('page_build');

static const WebhooksIssuePerformedViaGithubAppEvents project = WebhooksIssuePerformedViaGithubAppEvents._('project');

static const WebhooksIssuePerformedViaGithubAppEvents projectCard = WebhooksIssuePerformedViaGithubAppEvents._('project_card');

static const WebhooksIssuePerformedViaGithubAppEvents projectColumn = WebhooksIssuePerformedViaGithubAppEvents._('project_column');

static const WebhooksIssuePerformedViaGithubAppEvents public = WebhooksIssuePerformedViaGithubAppEvents._('public');

static const WebhooksIssuePerformedViaGithubAppEvents pullRequest = WebhooksIssuePerformedViaGithubAppEvents._('pull_request');

static const WebhooksIssuePerformedViaGithubAppEvents pullRequestReview = WebhooksIssuePerformedViaGithubAppEvents._('pull_request_review');

static const WebhooksIssuePerformedViaGithubAppEvents pullRequestReviewComment = WebhooksIssuePerformedViaGithubAppEvents._('pull_request_review_comment');

static const WebhooksIssuePerformedViaGithubAppEvents push = WebhooksIssuePerformedViaGithubAppEvents._('push');

static const WebhooksIssuePerformedViaGithubAppEvents registryPackage = WebhooksIssuePerformedViaGithubAppEvents._('registry_package');

static const WebhooksIssuePerformedViaGithubAppEvents release = WebhooksIssuePerformedViaGithubAppEvents._('release');

static const WebhooksIssuePerformedViaGithubAppEvents repository = WebhooksIssuePerformedViaGithubAppEvents._('repository');

static const WebhooksIssuePerformedViaGithubAppEvents repositoryDispatch = WebhooksIssuePerformedViaGithubAppEvents._('repository_dispatch');

static const WebhooksIssuePerformedViaGithubAppEvents secretScanningAlert = WebhooksIssuePerformedViaGithubAppEvents._('secret_scanning_alert');

static const WebhooksIssuePerformedViaGithubAppEvents star = WebhooksIssuePerformedViaGithubAppEvents._('star');

static const WebhooksIssuePerformedViaGithubAppEvents status = WebhooksIssuePerformedViaGithubAppEvents._('status');

static const WebhooksIssuePerformedViaGithubAppEvents team = WebhooksIssuePerformedViaGithubAppEvents._('team');

static const WebhooksIssuePerformedViaGithubAppEvents teamAdd = WebhooksIssuePerformedViaGithubAppEvents._('team_add');

static const WebhooksIssuePerformedViaGithubAppEvents watch = WebhooksIssuePerformedViaGithubAppEvents._('watch');

static const WebhooksIssuePerformedViaGithubAppEvents workflowDispatch = WebhooksIssuePerformedViaGithubAppEvents._('workflow_dispatch');

static const WebhooksIssuePerformedViaGithubAppEvents workflowRun = WebhooksIssuePerformedViaGithubAppEvents._('workflow_run');

static const WebhooksIssuePerformedViaGithubAppEvents reminder = WebhooksIssuePerformedViaGithubAppEvents._('reminder');

static const WebhooksIssuePerformedViaGithubAppEvents pullRequestReviewThread = WebhooksIssuePerformedViaGithubAppEvents._('pull_request_review_thread');

static const List<WebhooksIssuePerformedViaGithubAppEvents> values = [branchProtectionRule, checkRun, checkSuite, codeScanningAlert, commitComment, contentReference, create, delete, deployment, deploymentReview, deploymentStatus, deployKey, discussion, discussionComment, fork, gollum, issues, issueComment, label, member, membership, milestone, organization, orgBlock, pageBuild, project, projectCard, projectColumn, public, pullRequest, pullRequestReview, pullRequestReviewComment, push, registryPackage, release, repository, repositoryDispatch, secretScanningAlert, star, status, team, teamAdd, watch, workflowDispatch, workflowRun, reminder, pullRequestReviewThread];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksIssuePerformedViaGithubAppEvents && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksIssuePerformedViaGithubAppEvents($value)'; } 
 }
/// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
@immutable final class WebhooksIssuePerformedViaGithubApp {const WebhooksIssuePerformedViaGithubApp({required this.createdAt, required this.description, required this.externalUrl, required this.htmlUrl, required this.id, required this.name, required this.nodeId, required this.owner, required this.updatedAt, this.events, this.permissions, this.slug, });

factory WebhooksIssuePerformedViaGithubApp.fromJson(Map<String, dynamic> json) { return WebhooksIssuePerformedViaGithubApp(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  description: json['description'] as String?,
  events: (json['events'] as List<dynamic>?)?.map((e) => WebhooksIssuePerformedViaGithubAppEvents.fromJson(e as String)).toList(),
  externalUrl: json['external_url'] != null ? Uri.parse(json['external_url'] as String) : null,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  owner: json['owner'] != null ? WebhooksIssuePerformedViaGithubAppOwner.fromJson(json['owner'] as Map<String, dynamic>) : null,
  permissions: json['permissions'] != null ? WebhooksIssuePerformedViaGithubAppPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  slug: json['slug'] as String?,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
); }

final DateTime? createdAt;

final String? description;

/// The list of events for the GitHub app
final List<WebhooksIssuePerformedViaGithubAppEvents>? events;

final Uri? externalUrl;

final Uri htmlUrl;

/// Unique identifier of the GitHub app
final int? id;

/// The name of the GitHub app
final String name;

final String nodeId;

final WebhooksIssuePerformedViaGithubAppOwner? owner;

/// The set of permissions for the GitHub app
final WebhooksIssuePerformedViaGithubAppPermissions? permissions;

/// The slug name of the GitHub app
final String? slug;

final DateTime? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'description': ?description,
  if (events != null) 'events': events?.map((e) => e.toJson()).toList(),
  if (externalUrl != null) 'external_url': externalUrl?.toString(),
  'html_url': htmlUrl.toString(),
  'id': ?id,
  'name': name,
  'node_id': nodeId,
  if (owner != null) 'owner': owner?.toJson(),
  if (permissions != null) 'permissions': permissions?.toJson(),
  'slug': ?slug,
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('external_url') && json['external_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('owner') &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
WebhooksIssuePerformedViaGithubApp copyWith({DateTime? Function()? createdAt, String? Function()? description, List<WebhooksIssuePerformedViaGithubAppEvents> Function()? events, Uri? Function()? externalUrl, Uri? htmlUrl, int? Function()? id, String? name, String? nodeId, WebhooksIssuePerformedViaGithubAppOwner? Function()? owner, WebhooksIssuePerformedViaGithubAppPermissions Function()? permissions, String Function()? slug, DateTime? Function()? updatedAt, }) { return WebhooksIssuePerformedViaGithubApp(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  events: events != null ? events() : this.events,
  externalUrl: externalUrl != null ? externalUrl() : this.externalUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  owner: owner != null ? owner() : this.owner,
  permissions: permissions != null ? permissions() : this.permissions,
  slug: slug != null ? slug() : this.slug,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksIssuePerformedViaGithubApp &&
          createdAt == other.createdAt &&
          description == other.description &&
          listEquals(events, other.events) &&
          externalUrl == other.externalUrl &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          name == other.name &&
          nodeId == other.nodeId &&
          owner == other.owner &&
          permissions == other.permissions &&
          slug == other.slug &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, description, Object.hashAll(events ?? const []), externalUrl, htmlUrl, id, name, nodeId, owner, permissions, slug, updatedAt); } 
@override String toString() { return 'WebhooksIssuePerformedViaGithubApp(createdAt: $createdAt, description: $description, events: $events, externalUrl: $externalUrl, htmlUrl: $htmlUrl, id: $id, name: $name, nodeId: $nodeId, owner: $owner, permissions: $permissions, slug: $slug, updatedAt: $updatedAt)'; } 
 }
