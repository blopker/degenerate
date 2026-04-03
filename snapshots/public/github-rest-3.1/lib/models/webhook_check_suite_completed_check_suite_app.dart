// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_check_suite_completed_check_suite_app_owner.dart';import 'webhook_check_suite_completed_check_suite_app_permissions.dart';@immutable final class WebhookCheckSuiteCompletedCheckSuiteAppEvents {const WebhookCheckSuiteCompletedCheckSuiteAppEvents._(this.value);

factory WebhookCheckSuiteCompletedCheckSuiteAppEvents.fromJson(String json) { return switch (json) {
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
  'merge_group' => mergeGroup,
  'pull_request_review_thread' => pullRequestReviewThread,
  'workflow_job' => workflowJob,
  'merge_queue_entry' => mergeQueueEntry,
  'security_and_analysis' => securityAndAnalysis,
  'projects_v2_item' => projectsV2Item,
  'secret_scanning_alert_location' => secretScanningAlertLocation,
  _ => WebhookCheckSuiteCompletedCheckSuiteAppEvents._(json),
}; }

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents branchProtectionRule = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('branch_protection_rule');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents checkRun = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('check_run');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents checkSuite = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('check_suite');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents codeScanningAlert = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('code_scanning_alert');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents commitComment = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('commit_comment');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents contentReference = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('content_reference');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents create = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('create');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents delete = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('delete');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents deployment = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('deployment');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents deploymentReview = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('deployment_review');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents deploymentStatus = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('deployment_status');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents deployKey = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('deploy_key');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents discussion = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('discussion');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents discussionComment = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('discussion_comment');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents fork = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('fork');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents gollum = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('gollum');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents issues = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('issues');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents issueComment = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('issue_comment');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents label = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('label');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents member = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('member');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents membership = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('membership');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents milestone = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('milestone');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents organization = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('organization');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents orgBlock = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('org_block');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents pageBuild = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('page_build');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents project = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('project');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents projectCard = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('project_card');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents projectColumn = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('project_column');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents public = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('public');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents pullRequest = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('pull_request');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents pullRequestReview = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('pull_request_review');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents pullRequestReviewComment = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('pull_request_review_comment');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents push = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('push');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents registryPackage = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('registry_package');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents release = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('release');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents repository = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('repository');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents repositoryDispatch = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('repository_dispatch');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents secretScanningAlert = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('secret_scanning_alert');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents star = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('star');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents status = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('status');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents team = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('team');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents teamAdd = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('team_add');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents watch = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('watch');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents workflowDispatch = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('workflow_dispatch');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents workflowRun = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('workflow_run');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents mergeGroup = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('merge_group');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents pullRequestReviewThread = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('pull_request_review_thread');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents workflowJob = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('workflow_job');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents mergeQueueEntry = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('merge_queue_entry');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents securityAndAnalysis = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('security_and_analysis');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents projectsV2Item = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('projects_v2_item');

static const WebhookCheckSuiteCompletedCheckSuiteAppEvents secretScanningAlertLocation = WebhookCheckSuiteCompletedCheckSuiteAppEvents._('secret_scanning_alert_location');

static const List<WebhookCheckSuiteCompletedCheckSuiteAppEvents> values = [branchProtectionRule, checkRun, checkSuite, codeScanningAlert, commitComment, contentReference, create, delete, deployment, deploymentReview, deploymentStatus, deployKey, discussion, discussionComment, fork, gollum, issues, issueComment, label, member, membership, milestone, organization, orgBlock, pageBuild, project, projectCard, projectColumn, public, pullRequest, pullRequestReview, pullRequestReviewComment, push, registryPackage, release, repository, repositoryDispatch, secretScanningAlert, star, status, team, teamAdd, watch, workflowDispatch, workflowRun, mergeGroup, pullRequestReviewThread, workflowJob, mergeQueueEntry, securityAndAnalysis, projectsV2Item, secretScanningAlertLocation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCheckSuiteCompletedCheckSuiteAppEvents && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCheckSuiteCompletedCheckSuiteAppEvents($value)'; } 
 }
/// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
@immutable final class WebhookCheckSuiteCompletedCheckSuiteApp {const WebhookCheckSuiteCompletedCheckSuiteApp({required this.createdAt, required this.description, required this.externalUrl, required this.htmlUrl, required this.id, required this.name, required this.nodeId, required this.owner, required this.updatedAt, this.events, this.clientId, this.permissions, this.slug, });

factory WebhookCheckSuiteCompletedCheckSuiteApp.fromJson(Map<String, dynamic> json) { return WebhookCheckSuiteCompletedCheckSuiteApp(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  description: json['description'] as String?,
  events: (json['events'] as List<dynamic>?)?.map((e) => WebhookCheckSuiteCompletedCheckSuiteAppEvents.fromJson(e as String)).toList(),
  externalUrl: json['external_url'] != null ? Uri.parse(json['external_url'] as String) : null,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  clientId: json['client_id'] as String?,
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  owner: json['owner'] != null ? WebhookCheckSuiteCompletedCheckSuiteAppOwner.fromJson(json['owner'] as Map<String, dynamic>) : null,
  permissions: json['permissions'] != null ? WebhookCheckSuiteCompletedCheckSuiteAppPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  slug: json['slug'] as String?,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
); }

final DateTime? createdAt;

final String? description;

/// The list of events for the GitHub app
final List<WebhookCheckSuiteCompletedCheckSuiteAppEvents>? events;

final Uri? externalUrl;

final Uri htmlUrl;

/// Unique identifier of the GitHub app
final int? id;

/// The client ID of the GitHub app
final String? clientId;

/// The name of the GitHub app
final String name;

final String nodeId;

final WebhookCheckSuiteCompletedCheckSuiteAppOwner? owner;

/// The set of permissions for the GitHub app
final WebhookCheckSuiteCompletedCheckSuiteAppPermissions? permissions;

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
  'client_id': ?clientId,
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
WebhookCheckSuiteCompletedCheckSuiteApp copyWith({DateTime? Function()? createdAt, String? Function()? description, List<WebhookCheckSuiteCompletedCheckSuiteAppEvents> Function()? events, Uri? Function()? externalUrl, Uri? htmlUrl, int? Function()? id, String? Function()? clientId, String? name, String? nodeId, WebhookCheckSuiteCompletedCheckSuiteAppOwner? Function()? owner, WebhookCheckSuiteCompletedCheckSuiteAppPermissions Function()? permissions, String Function()? slug, DateTime? Function()? updatedAt, }) { return WebhookCheckSuiteCompletedCheckSuiteApp(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  events: events != null ? events() : this.events,
  externalUrl: externalUrl != null ? externalUrl() : this.externalUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id != null ? id() : this.id,
  clientId: clientId != null ? clientId() : this.clientId,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  owner: owner != null ? owner() : this.owner,
  permissions: permissions != null ? permissions() : this.permissions,
  slug: slug != null ? slug() : this.slug,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCheckSuiteCompletedCheckSuiteApp &&
          createdAt == other.createdAt &&
          description == other.description &&
          listEquals(events, other.events) &&
          externalUrl == other.externalUrl &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          clientId == other.clientId &&
          name == other.name &&
          nodeId == other.nodeId &&
          owner == other.owner &&
          permissions == other.permissions &&
          slug == other.slug &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, description, Object.hashAll(events ?? const []), externalUrl, htmlUrl, id, clientId, name, nodeId, owner, permissions, slug, updatedAt); } 
@override String toString() { return 'WebhookCheckSuiteCompletedCheckSuiteApp(createdAt: $createdAt, description: $description, events: $events, externalUrl: $externalUrl, htmlUrl: $htmlUrl, id: $id, clientId: $clientId, name: $name, nodeId: $nodeId, owner: $owner, permissions: $permissions, slug: $slug, updatedAt: $updatedAt)'; } 
 }
