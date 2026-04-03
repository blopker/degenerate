// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_dismissed_pull_request_head_repo.dart';import 'webhook_pull_request_review_dismissed_pull_request_head_user.dart';@immutable final class WebhookPullRequestReviewDismissedPullRequestHead {const WebhookPullRequestReviewDismissedPullRequestHead({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory WebhookPullRequestReviewDismissedPullRequestHead.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedPullRequestHead(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: json['repo'] != null ? WebhookPullRequestReviewDismissedPullRequestHeadRepo.fromJson(json['repo'] as Map<String, dynamic>) : null,
  sha: json['sha'] as String,
  user: json['user'] != null ? WebhookPullRequestReviewDismissedPullRequestHeadUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

/// A git repository
final WebhookPullRequestReviewDismissedPullRequestHeadRepo? repo;

final String sha;

final WebhookPullRequestReviewDismissedPullRequestHeadUser? user;

Map<String, dynamic> toJson() { return {
  'label': label,
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
WebhookPullRequestReviewDismissedPullRequestHead copyWith({String? label, String? ref, WebhookPullRequestReviewDismissedPullRequestHeadRepo? Function()? repo, String? sha, WebhookPullRequestReviewDismissedPullRequestHeadUser? Function()? user, }) { return WebhookPullRequestReviewDismissedPullRequestHead(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo != null ? repo() : this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedPullRequestHead &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestHead(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
