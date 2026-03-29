// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_review_submitted_pull_request_auto_merge_enabled_by.dart';/// The merge method to use.
final class WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod {const WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod._(this.value);

factory WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod._(json),
}; }

static const WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod merge = WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod._('merge');

static const WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod squash = WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod._('squash');

static const WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod rebase = WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod._('rebase');

static const List<WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod($value)'; } 
 }
/// The status of auto merging a pull request.
final class WebhookPullRequestReviewSubmittedPullRequestAutoMerge {const WebhookPullRequestReviewSubmittedPullRequestAutoMerge({required this.commitMessage, required this.commitTitle, required this.enabledBy, required this.mergeMethod, });

factory WebhookPullRequestReviewSubmittedPullRequestAutoMerge.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewSubmittedPullRequestAutoMerge(
  commitMessage: json['commit_message'] as String?,
  commitTitle: json['commit_title'] as String?,
  enabledBy: json['enabled_by'] != null ? WebhookPullRequestReviewSubmittedPullRequestAutoMergeEnabledBy.fromJson(json['enabled_by'] as Map<String, dynamic>) : null,
  mergeMethod: WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod.fromJson(json['merge_method'] as String),
); }

/// Commit message for the merge commit.
final String? commitMessage;

/// Title for the merge commit message.
final String? commitTitle;

final WebhookPullRequestReviewSubmittedPullRequestAutoMergeEnabledBy? enabledBy;

/// The merge method to use.
final WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod mergeMethod;

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
WebhookPullRequestReviewSubmittedPullRequestAutoMerge copyWith({String? Function()? commitMessage, String? Function()? commitTitle, WebhookPullRequestReviewSubmittedPullRequestAutoMergeEnabledBy? Function()? enabledBy, WebhookPullRequestReviewSubmittedPullRequestAutoMergeMergeMethod? mergeMethod, }) { return WebhookPullRequestReviewSubmittedPullRequestAutoMerge(
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  commitTitle: commitTitle != null ? commitTitle() : this.commitTitle,
  enabledBy: enabledBy != null ? enabledBy() : this.enabledBy,
  mergeMethod: mergeMethod ?? this.mergeMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewSubmittedPullRequestAutoMerge &&
          commitMessage == other.commitMessage &&
          commitTitle == other.commitTitle &&
          enabledBy == other.enabledBy &&
          mergeMethod == other.mergeMethod; } 
@override int get hashCode { return Object.hash(commitMessage, commitTitle, enabledBy, mergeMethod); } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestAutoMerge(commitMessage: $commitMessage, commitTitle: $commitTitle, enabledBy: $enabledBy, mergeMethod: $mergeMethod)'; } 
 }
