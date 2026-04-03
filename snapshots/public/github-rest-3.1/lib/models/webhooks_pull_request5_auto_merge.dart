// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhooks_pull_request5_auto_merge_enabled_by.dart';/// The merge method to use.
@immutable final class WebhooksPullRequest5AutoMergeMergeMethod {const WebhooksPullRequest5AutoMergeMergeMethod._(this.value);

factory WebhooksPullRequest5AutoMergeMergeMethod.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => WebhooksPullRequest5AutoMergeMergeMethod._(json),
}; }

static const WebhooksPullRequest5AutoMergeMergeMethod merge = WebhooksPullRequest5AutoMergeMergeMethod._('merge');

static const WebhooksPullRequest5AutoMergeMergeMethod squash = WebhooksPullRequest5AutoMergeMergeMethod._('squash');

static const WebhooksPullRequest5AutoMergeMergeMethod rebase = WebhooksPullRequest5AutoMergeMergeMethod._('rebase');

static const List<WebhooksPullRequest5AutoMergeMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksPullRequest5AutoMergeMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksPullRequest5AutoMergeMergeMethod($value)'; } 
 }
/// The status of auto merging a pull request.
@immutable final class WebhooksPullRequest5AutoMerge {const WebhooksPullRequest5AutoMerge({required this.commitMessage, required this.commitTitle, required this.enabledBy, required this.mergeMethod, });

factory WebhooksPullRequest5AutoMerge.fromJson(Map<String, dynamic> json) { return WebhooksPullRequest5AutoMerge(
  commitMessage: json['commit_message'] as String?,
  commitTitle: json['commit_title'] as String?,
  enabledBy: json['enabled_by'] != null ? WebhooksPullRequest5AutoMergeEnabledBy.fromJson(json['enabled_by'] as Map<String, dynamic>) : null,
  mergeMethod: WebhooksPullRequest5AutoMergeMergeMethod.fromJson(json['merge_method'] as String),
); }

/// Commit message for the merge commit.
final String? commitMessage;

/// Title for the merge commit message.
final String? commitTitle;

final WebhooksPullRequest5AutoMergeEnabledBy? enabledBy;

/// The merge method to use.
final WebhooksPullRequest5AutoMergeMergeMethod mergeMethod;

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
WebhooksPullRequest5AutoMerge copyWith({String? Function()? commitMessage, String? Function()? commitTitle, WebhooksPullRequest5AutoMergeEnabledBy? Function()? enabledBy, WebhooksPullRequest5AutoMergeMergeMethod? mergeMethod, }) { return WebhooksPullRequest5AutoMerge(
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  commitTitle: commitTitle != null ? commitTitle() : this.commitTitle,
  enabledBy: enabledBy != null ? enabledBy() : this.enabledBy,
  mergeMethod: mergeMethod ?? this.mergeMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksPullRequest5AutoMerge &&
          commitMessage == other.commitMessage &&
          commitTitle == other.commitTitle &&
          enabledBy == other.enabledBy &&
          mergeMethod == other.mergeMethod; } 
@override int get hashCode { return Object.hash(commitMessage, commitTitle, enabledBy, mergeMethod); } 
@override String toString() { return 'WebhooksPullRequest5AutoMerge(commitMessage: $commitMessage, commitTitle: $commitTitle, enabledBy: $enabledBy, mergeMethod: $mergeMethod)'; } 
 }
