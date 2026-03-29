// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_workflow_run_completed_workflow_run_pull_requests_head_repo.dart';final class WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead {const WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead({required this.ref, required this.repo, required this.sha, });

factory WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead.fromJson(Map<String, dynamic> json) { return WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead(
  ref: json['ref'] as String,
  repo: WebhookWorkflowRunCompletedWorkflowRunPullRequestsHeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
); }

final String ref;

final WebhookWorkflowRunCompletedWorkflowRunPullRequestsHeadRepo repo;

final String sha;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String; } 
WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead copyWith({String? ref, WebhookWorkflowRunCompletedWorkflowRunPullRequestsHeadRepo? repo, String? sha, }) { return WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead(
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(ref, repo, sha); } 
@override String toString() { return 'WebhookWorkflowRunCompletedWorkflowRunPullRequestsHead(ref: $ref, repo: $repo, sha: $sha)'; } 
 }
