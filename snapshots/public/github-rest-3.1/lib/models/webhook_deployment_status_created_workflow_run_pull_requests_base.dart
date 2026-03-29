// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_deployment_status_created_workflow_run_pull_requests_base_repo.dart';final class WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase {const WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase({required this.ref, required this.repo, required this.sha, });

factory WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase.fromJson(Map<String, dynamic> json) { return WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase(
  ref: json['ref'] as String,
  repo: WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBaseRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
); }

final String ref;

final WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBaseRepo repo;

final String sha;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String; } 
WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase copyWith({String? ref, WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBaseRepo? repo, String? sha, }) { return WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase(
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(ref, repo, sha); } 
@override String toString() { return 'WebhookDeploymentStatusCreatedWorkflowRunPullRequestsBase(ref: $ref, repo: $repo, sha: $sha)'; } 
 }
