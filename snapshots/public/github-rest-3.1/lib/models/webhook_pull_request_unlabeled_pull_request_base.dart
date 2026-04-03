// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_unlabeled_pull_request_base_repo.dart';import 'webhook_pull_request_unlabeled_pull_request_base_user.dart';@immutable final class WebhookPullRequestUnlabeledPullRequestBase {const WebhookPullRequestUnlabeledPullRequestBase({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestUnlabeledPullRequestBase.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlabeledPullRequestBase(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: WebhookPullRequestUnlabeledPullRequestBaseRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestUnlabeledPullRequestBaseUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhookPullRequestUnlabeledPullRequestBaseRepo repo;

final String sha;

final WebhookPullRequestUnlabeledPullRequestBaseUser? user;

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
WebhookPullRequestUnlabeledPullRequestBase copyWith({String? label, String? ref, WebhookPullRequestUnlabeledPullRequestBaseRepo? repo, String? sha, WebhookPullRequestUnlabeledPullRequestBaseUser? Function()? user, }) { return WebhookPullRequestUnlabeledPullRequestBase(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlabeledPullRequestBase &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestUnlabeledPullRequestBase(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
