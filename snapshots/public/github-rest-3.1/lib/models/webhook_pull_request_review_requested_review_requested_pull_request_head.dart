// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_review_requested_review_requested_pull_request_head_repo.dart';import 'webhook_pull_request_review_requested_review_requested_pull_request_head_user.dart';final class WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead {const WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: WebhookPullRequestReviewRequestedReviewRequestedPullRequestHeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestReviewRequestedReviewRequestedPullRequestHeadUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhookPullRequestReviewRequestedReviewRequestedPullRequestHeadRepo repo;

final String sha;

final WebhookPullRequestReviewRequestedReviewRequestedPullRequestHeadUser? user;

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
WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead copyWith({String? label, String? ref, WebhookPullRequestReviewRequestedReviewRequestedPullRequestHeadRepo? repo, String? sha, WebhookPullRequestReviewRequestedReviewRequestedPullRequestHeadUser? Function()? user, }) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequestedPullRequestHead(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
