// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_check_suite_requested_check_suite_pull_requests_head_repo.dart';@immutable final class WebhookCheckSuiteRequestedCheckSuitePullRequestsHead {const WebhookCheckSuiteRequestedCheckSuitePullRequestsHead({required this.ref, required this.repo, required this.sha, });

factory WebhookCheckSuiteRequestedCheckSuitePullRequestsHead.fromJson(Map<String, dynamic> json) { return WebhookCheckSuiteRequestedCheckSuitePullRequestsHead(
  ref: json['ref'] as String,
  repo: WebhookCheckSuiteRequestedCheckSuitePullRequestsHeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
); }

final String ref;

final WebhookCheckSuiteRequestedCheckSuitePullRequestsHeadRepo repo;

final String sha;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String; } 
WebhookCheckSuiteRequestedCheckSuitePullRequestsHead copyWith({String? ref, WebhookCheckSuiteRequestedCheckSuitePullRequestsHeadRepo? repo, String? sha, }) { return WebhookCheckSuiteRequestedCheckSuitePullRequestsHead(
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCheckSuiteRequestedCheckSuitePullRequestsHead &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(ref, repo, sha); } 
@override String toString() { return 'WebhookCheckSuiteRequestedCheckSuitePullRequestsHead(ref: $ref, repo: $repo, sha: $sha)'; } 
 }
