// GENERATED CODE - DO NOT MODIFY BY HAND

import 'simple_user.dart';/// The merge method to use.
final class AutoMergeMergeMethod {const AutoMergeMergeMethod._(this.value);

factory AutoMergeMergeMethod.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => AutoMergeMergeMethod._(json),
}; }

static const AutoMergeMergeMethod merge = AutoMergeMergeMethod._('merge');

static const AutoMergeMergeMethod squash = AutoMergeMergeMethod._('squash');

static const AutoMergeMergeMethod rebase = AutoMergeMergeMethod._('rebase');

static const List<AutoMergeMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoMergeMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutoMergeMergeMethod($value)'; } 
 }
/// The status of auto merging a pull request.
final class AutoMerge {const AutoMerge({required this.enabledBy, required this.mergeMethod, required this.commitTitle, required this.commitMessage, });

factory AutoMerge.fromJson(Map<String, dynamic> json) { return AutoMerge(
  enabledBy: SimpleUser.fromJson(json['enabled_by'] as Map<String, dynamic>),
  mergeMethod: AutoMergeMergeMethod.fromJson(json['merge_method'] as String),
  commitTitle: json['commit_title'] as String,
  commitMessage: json['commit_message'] as String,
); }

final SimpleUser enabledBy;

/// The merge method to use.
final AutoMergeMergeMethod mergeMethod;

/// Title for the merge commit message.
final String commitTitle;

/// Commit message for the merge commit.
final String commitMessage;

Map<String, dynamic> toJson() { return {
  'enabled_by': enabledBy.toJson(),
  'merge_method': mergeMethod.toJson(),
  'commit_title': commitTitle,
  'commit_message': commitMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled_by') &&
      json.containsKey('merge_method') &&
      json.containsKey('commit_title') && json['commit_title'] is String &&
      json.containsKey('commit_message') && json['commit_message'] is String; } 
AutoMerge copyWith({SimpleUser? enabledBy, AutoMergeMergeMethod? mergeMethod, String? commitTitle, String? commitMessage, }) { return AutoMerge(
  enabledBy: enabledBy ?? this.enabledBy,
  mergeMethod: mergeMethod ?? this.mergeMethod,
  commitTitle: commitTitle ?? this.commitTitle,
  commitMessage: commitMessage ?? this.commitMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoMerge &&
          enabledBy == other.enabledBy &&
          mergeMethod == other.mergeMethod &&
          commitTitle == other.commitTitle &&
          commitMessage == other.commitMessage; } 
@override int get hashCode { return Object.hash(enabledBy, mergeMethod, commitTitle, commitMessage); } 
@override String toString() { return 'AutoMerge(enabledBy: $enabledBy, mergeMethod: $mergeMethod, commitTitle: $commitTitle, commitMessage: $commitMessage)'; } 
 }
