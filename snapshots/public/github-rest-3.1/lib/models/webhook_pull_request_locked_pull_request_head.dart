// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_locked_pull_request_head_repo.dart';import 'webhook_pull_request_locked_pull_request_head_user.dart';final class WebhookPullRequestLockedPullRequestHead {const WebhookPullRequestLockedPullRequestHead({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestLockedPullRequestHead.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestHead(
  label: json['label'] as String?,
  ref: json['ref'] as String,
  repo: json['repo'] != null ? WebhookPullRequestLockedPullRequestHeadRepo.fromJson(json['repo'] as Map<String, dynamic>) : null,
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestLockedPullRequestHeadUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String? label;

final String ref;

/// A git repository
final WebhookPullRequestLockedPullRequestHeadRepo? repo;

final String sha;

final WebhookPullRequestLockedPullRequestHeadUser? user;

Map<String, dynamic> toJson() { return {
  'label': ?label,
  'ref': ref,
  if (repo != null) 'repo': repo?.toJson(),
  'sha': sha,
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('label') && json['label'] is String &&
      json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('user'); } 
WebhookPullRequestLockedPullRequestHead copyWith({String? Function()? label, String? ref, WebhookPullRequestLockedPullRequestHeadRepo? Function()? repo, String? sha, WebhookPullRequestLockedPullRequestHeadUser? Function()? user, }) { return WebhookPullRequestLockedPullRequestHead(
  label: label != null ? label() : this.label,
  ref: ref ?? this.ref,
  repo: repo != null ? repo() : this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestHead &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestHead(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
