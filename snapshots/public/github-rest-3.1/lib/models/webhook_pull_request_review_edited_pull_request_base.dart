// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_review_edited_pull_request_base_repo.dart';import 'webhook_pull_request_review_edited_pull_request_base_user.dart';final class WebhookPullRequestReviewEditedPullRequestBase {const WebhookPullRequestReviewEditedPullRequestBase({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestReviewEditedPullRequestBase.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewEditedPullRequestBase(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: WebhookPullRequestReviewEditedPullRequestBaseRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestReviewEditedPullRequestBaseUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhookPullRequestReviewEditedPullRequestBaseRepo repo;

final String sha;

final WebhookPullRequestReviewEditedPullRequestBaseUser? user;

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
WebhookPullRequestReviewEditedPullRequestBase copyWith({String? label, String? ref, WebhookPullRequestReviewEditedPullRequestBaseRepo? repo, String? sha, WebhookPullRequestReviewEditedPullRequestBaseUser? Function()? user, }) { return WebhookPullRequestReviewEditedPullRequestBase(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewEditedPullRequestBase &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestReviewEditedPullRequestBase(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
