// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_request_removed_review_request_removed2_pull_request_auto_merge_enabled_by.dart';/// The merge method to use.
@immutable final class WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod {const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod._(this.value);

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod._(json),
}; }

static const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod merge = WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod._('merge');

static const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod squash = WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod._('squash');

static const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod rebase = WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod._('rebase');

static const List<WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod($value)'; } 
 }
/// The status of auto merging a pull request.
@immutable final class WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge {const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge({required this.commitMessage, required this.commitTitle, required this.enabledBy, required this.mergeMethod, });

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge(
  commitMessage: json['commit_message'] as String?,
  commitTitle: json['commit_title'] as String?,
  enabledBy: json['enabled_by'] != null ? WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeEnabledBy.fromJson(json['enabled_by'] as Map<String, dynamic>) : null,
  mergeMethod: WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod.fromJson(json['merge_method'] as String),
); }

/// Commit message for the merge commit.
final String? commitMessage;

/// Title for the merge commit message.
final String? commitTitle;

final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeEnabledBy? enabledBy;

/// The merge method to use.
final WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod mergeMethod;

Map<String, dynamic> toJson() { return {
  'commit_message': ?commitMessage,
  'commit_title': ?commitTitle,
  if (enabledBy != null) 'enabled_by': enabledBy?.toJson(),
  'merge_method': mergeMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('commit_message') && json['commit_message'] is String &&
      json.containsKey('commit_title') && json['commit_title'] is String &&
      json.containsKey('enabled_by') &&
      json.containsKey('merge_method'); } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge copyWith({String? Function()? commitMessage, String? Function()? commitTitle, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeEnabledBy? Function()? enabledBy, WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMergeMergeMethod? mergeMethod, }) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge(
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  commitTitle: commitTitle != null ? commitTitle() : this.commitTitle,
  enabledBy: enabledBy != null ? enabledBy() : this.enabledBy,
  mergeMethod: mergeMethod ?? this.mergeMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge &&
          commitMessage == other.commitMessage &&
          commitTitle == other.commitTitle &&
          enabledBy == other.enabledBy &&
          mergeMethod == other.mergeMethod; } 
@override int get hashCode { return Object.hash(commitMessage, commitTitle, enabledBy, mergeMethod); } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestAutoMerge(commitMessage: $commitMessage, commitTitle: $commitTitle, enabledBy: $enabledBy, mergeMethod: $mergeMethod)'; } 
 }
