// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_requested_review_requested2_pull_request_head_repo.dart';import 'webhook_pull_request_review_requested_review_requested2_pull_request_head_user.dart';@immutable final class WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead {const WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: WebhookPullRequestReviewRequestedReviewRequested2PullRequestHeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestReviewRequestedReviewRequested2PullRequestHeadUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhookPullRequestReviewRequestedReviewRequested2PullRequestHeadRepo repo;

final String sha;

final WebhookPullRequestReviewRequestedReviewRequested2PullRequestHeadUser? user;

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
WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead copyWith({String? label, String? ref, WebhookPullRequestReviewRequestedReviewRequested2PullRequestHeadRepo? repo, String? sha, WebhookPullRequestReviewRequestedReviewRequested2PullRequestHeadUser? Function()? user, }) { return WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequested2PullRequestHead(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
