// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhooks_pull_request5_head_repo.dart';import 'webhooks_pull_request5_head_user.dart';final class WebhooksPullRequest5Head {const WebhooksPullRequest5Head({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhooksPullRequest5Head.fromJson(Map<String, dynamic> json) { return WebhooksPullRequest5Head(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: WebhooksPullRequest5HeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhooksPullRequest5HeadUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhooksPullRequest5HeadRepo repo;

final String sha;

final WebhooksPullRequest5HeadUser? user;

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
WebhooksPullRequest5Head copyWith({String? label, String? ref, WebhooksPullRequest5HeadRepo? repo, String? sha, WebhooksPullRequest5HeadUser? Function()? user, }) { return WebhooksPullRequest5Head(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksPullRequest5Head &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhooksPullRequest5Head(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
