// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_review_comment_created_pull_request_auto_merge_enabled_by.dart';/// The merge method to use.
final class WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod {const WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod._(this.value);

factory WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod._(json),
}; }

static const WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod merge = WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod._('merge');

static const WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod squash = WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod._('squash');

static const WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod rebase = WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod._('rebase');

static const List<WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod($value)'; } 
 }
/// The status of auto merging a pull request.
final class WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge {const WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge({required this.commitMessage, required this.commitTitle, required this.enabledBy, required this.mergeMethod, });

factory WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge(
  commitMessage: json['commit_message'] as String?,
  commitTitle: json['commit_title'] as String?,
  enabledBy: json['enabled_by'] != null ? WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeEnabledBy.fromJson(json['enabled_by'] as Map<String, dynamic>) : null,
  mergeMethod: WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod.fromJson(json['merge_method'] as String),
); }

/// Commit message for the merge commit.
final String? commitMessage;

/// Title for the merge commit message.
final String? commitTitle;

final WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeEnabledBy? enabledBy;

/// The merge method to use.
final WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod mergeMethod;

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
WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge copyWith({String? Function()? commitMessage, String? Function()? commitTitle, WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeEnabledBy? Function()? enabledBy, WebhookPullRequestReviewCommentCreatedPullRequestAutoMergeMergeMethod? mergeMethod, }) { return WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge(
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  commitTitle: commitTitle != null ? commitTitle() : this.commitTitle,
  enabledBy: enabledBy != null ? enabledBy() : this.enabledBy,
  mergeMethod: mergeMethod ?? this.mergeMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge &&
          commitMessage == other.commitMessage &&
          commitTitle == other.commitTitle &&
          enabledBy == other.enabledBy &&
          mergeMethod == other.mergeMethod; } 
@override int get hashCode { return Object.hash(commitMessage, commitTitle, enabledBy, mergeMethod); } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestAutoMerge(commitMessage: $commitMessage, commitTitle: $commitTitle, enabledBy: $enabledBy, mergeMethod: $mergeMethod)'; } 
 }
