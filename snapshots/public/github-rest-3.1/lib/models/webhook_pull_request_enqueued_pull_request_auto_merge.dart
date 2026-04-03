// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_enqueued_pull_request_auto_merge_enabled_by.dart';/// The merge method to use.
@immutable final class WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod {const WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod._(this.value);

factory WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod._(json),
}; }

static const WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod merge = WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod._('merge');

static const WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod squash = WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod._('squash');

static const WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod rebase = WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod._('rebase');

static const List<WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod($value)'; } 
 }
/// The status of auto merging a pull request.
@immutable final class WebhookPullRequestEnqueuedPullRequestAutoMerge {const WebhookPullRequestEnqueuedPullRequestAutoMerge({required this.commitMessage, required this.commitTitle, required this.enabledBy, required this.mergeMethod, });

factory WebhookPullRequestEnqueuedPullRequestAutoMerge.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestAutoMerge(
  commitMessage: json['commit_message'] as String?,
  commitTitle: json['commit_title'] as String?,
  enabledBy: json['enabled_by'] != null ? WebhookPullRequestEnqueuedPullRequestAutoMergeEnabledBy.fromJson(json['enabled_by'] as Map<String, dynamic>) : null,
  mergeMethod: WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod.fromJson(json['merge_method'] as String),
); }

/// Commit message for the merge commit.
final String? commitMessage;

/// Title for the merge commit message.
final String? commitTitle;

final WebhookPullRequestEnqueuedPullRequestAutoMergeEnabledBy? enabledBy;

/// The merge method to use.
final WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod mergeMethod;

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
WebhookPullRequestEnqueuedPullRequestAutoMerge copyWith({String? Function()? commitMessage, String? Function()? commitTitle, WebhookPullRequestEnqueuedPullRequestAutoMergeEnabledBy? Function()? enabledBy, WebhookPullRequestEnqueuedPullRequestAutoMergeMergeMethod? mergeMethod, }) { return WebhookPullRequestEnqueuedPullRequestAutoMerge(
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  commitTitle: commitTitle != null ? commitTitle() : this.commitTitle,
  enabledBy: enabledBy != null ? enabledBy() : this.enabledBy,
  mergeMethod: mergeMethod ?? this.mergeMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestAutoMerge &&
          commitMessage == other.commitMessage &&
          commitTitle == other.commitTitle &&
          enabledBy == other.enabledBy &&
          mergeMethod == other.mergeMethod; } 
@override int get hashCode { return Object.hash(commitMessage, commitTitle, enabledBy, mergeMethod); } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestAutoMerge(commitMessage: $commitMessage, commitTitle: $commitTitle, enabledBy: $enabledBy, mergeMethod: $mergeMethod)'; } 
 }
