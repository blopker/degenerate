// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_deployment_review_requested_workflow_run_pull_requests_head_repo.dart';@immutable final class WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead {const WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead({required this.ref, required this.repo, required this.sha, });

factory WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead.fromJson(Map<String, dynamic> json) { return WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead(
  ref: json['ref'] as String,
  repo: WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
); }

final String ref;

final WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHeadRepo repo;

final String sha;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String; } 
WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead copyWith({String? ref, WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHeadRepo? repo, String? sha, }) { return WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead(
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(ref, repo, sha); } 
@override String toString() { return 'WebhookDeploymentReviewRequestedWorkflowRunPullRequestsHead(ref: $ref, repo: $repo, sha: $sha)'; } 
 }
