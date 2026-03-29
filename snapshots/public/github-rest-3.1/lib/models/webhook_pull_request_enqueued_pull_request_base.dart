// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_enqueued_pull_request_base_repo.dart';import 'webhook_pull_request_enqueued_pull_request_base_user.dart';final class WebhookPullRequestEnqueuedPullRequestBase {const WebhookPullRequestEnqueuedPullRequestBase({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestEnqueuedPullRequestBase.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestBase(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: WebhookPullRequestEnqueuedPullRequestBaseRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestEnqueuedPullRequestBaseUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhookPullRequestEnqueuedPullRequestBaseRepo repo;

final String sha;

final WebhookPullRequestEnqueuedPullRequestBaseUser? user;

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
WebhookPullRequestEnqueuedPullRequestBase copyWith({String? label, String? ref, WebhookPullRequestEnqueuedPullRequestBaseRepo? repo, String? sha, WebhookPullRequestEnqueuedPullRequestBaseUser? Function()? user, }) { return WebhookPullRequestEnqueuedPullRequestBase(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestBase &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestBase(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
