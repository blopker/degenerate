// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_check_suite_requested_check_suite_pull_requests_base_repo.dart';@immutable final class WebhookCheckSuiteRequestedCheckSuitePullRequestsBase {const WebhookCheckSuiteRequestedCheckSuitePullRequestsBase({required this.ref, required this.repo, required this.sha, });

factory WebhookCheckSuiteRequestedCheckSuitePullRequestsBase.fromJson(Map<String, dynamic> json) { return WebhookCheckSuiteRequestedCheckSuitePullRequestsBase(
  ref: json['ref'] as String,
  repo: WebhookCheckSuiteRequestedCheckSuitePullRequestsBaseRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
); }

final String ref;

final WebhookCheckSuiteRequestedCheckSuitePullRequestsBaseRepo repo;

final String sha;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String; } 
WebhookCheckSuiteRequestedCheckSuitePullRequestsBase copyWith({String? ref, WebhookCheckSuiteRequestedCheckSuitePullRequestsBaseRepo? repo, String? sha, }) { return WebhookCheckSuiteRequestedCheckSuitePullRequestsBase(
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCheckSuiteRequestedCheckSuitePullRequestsBase &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(ref, repo, sha); } 
@override String toString() { return 'WebhookCheckSuiteRequestedCheckSuitePullRequestsBase(ref: $ref, repo: $repo, sha: $sha)'; } 
 }
