// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_workflow_run_completed_workflow_run_pull_requests_base_repo.dart';final class WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase {const WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase({required this.ref, required this.repo, required this.sha, });

factory WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase.fromJson(Map<String, dynamic> json) { return WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase(
  ref: json['ref'] as String,
  repo: WebhookWorkflowRunCompletedWorkflowRunPullRequestsBaseRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
); }

final String ref;

final WebhookWorkflowRunCompletedWorkflowRunPullRequestsBaseRepo repo;

final String sha;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String; } 
WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase copyWith({String? ref, WebhookWorkflowRunCompletedWorkflowRunPullRequestsBaseRepo? repo, String? sha, }) { return WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase(
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(ref, repo, sha); } 
@override String toString() { return 'WebhookWorkflowRunCompletedWorkflowRunPullRequestsBase(ref: $ref, repo: $repo, sha: $sha)'; } 
 }
