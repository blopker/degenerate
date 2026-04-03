// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_deployment_created_workflow_run_pull_requests_base_repo.dart';@immutable final class WebhookDeploymentCreatedWorkflowRunPullRequestsBase {const WebhookDeploymentCreatedWorkflowRunPullRequestsBase({required this.ref, required this.repo, required this.sha, });

factory WebhookDeploymentCreatedWorkflowRunPullRequestsBase.fromJson(Map<String, dynamic> json) { return WebhookDeploymentCreatedWorkflowRunPullRequestsBase(
  ref: json['ref'] as String,
  repo: WebhookDeploymentCreatedWorkflowRunPullRequestsBaseRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
); }

final String ref;

final WebhookDeploymentCreatedWorkflowRunPullRequestsBaseRepo repo;

final String sha;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String; } 
WebhookDeploymentCreatedWorkflowRunPullRequestsBase copyWith({String? ref, WebhookDeploymentCreatedWorkflowRunPullRequestsBaseRepo? repo, String? sha, }) { return WebhookDeploymentCreatedWorkflowRunPullRequestsBase(
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentCreatedWorkflowRunPullRequestsBase &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(ref, repo, sha); } 
@override String toString() { return 'WebhookDeploymentCreatedWorkflowRunPullRequestsBase(ref: $ref, repo: $repo, sha: $sha)'; } 
 }
