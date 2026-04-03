// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_dequeued_pull_request_head_repo.dart';import 'webhook_pull_request_dequeued_pull_request_head_user.dart';@immutable final class WebhookPullRequestDequeuedPullRequestHead {const WebhookPullRequestDequeuedPullRequestHead({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestDequeuedPullRequestHead.fromJson(Map<String, dynamic> json) { return WebhookPullRequestDequeuedPullRequestHead(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: WebhookPullRequestDequeuedPullRequestHeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestDequeuedPullRequestHeadUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhookPullRequestDequeuedPullRequestHeadRepo repo;

final String sha;

final WebhookPullRequestDequeuedPullRequestHeadUser? user;

Map<String, dynamic> toJson() { return {
  'label': label,
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('label') && json['label'] is String &&
      json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('user'); } 
WebhookPullRequestDequeuedPullRequestHead copyWith({String? label, String? ref, WebhookPullRequestDequeuedPullRequestHeadRepo? repo, String? sha, WebhookPullRequestDequeuedPullRequestHeadUser? Function()? user, }) { return WebhookPullRequestDequeuedPullRequestHead(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestDequeuedPullRequestHead &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestDequeuedPullRequestHead(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
