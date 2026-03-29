// GENERATED CODE - DO NOT MODIFY BY HAND

/// The merge method to use.
final class PullsMergeRequestMergeMethod {const PullsMergeRequestMergeMethod._(this.value);

factory PullsMergeRequestMergeMethod.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => PullsMergeRequestMergeMethod._(json),
}; }

static const PullsMergeRequestMergeMethod merge = PullsMergeRequestMergeMethod._('merge');

static const PullsMergeRequestMergeMethod squash = PullsMergeRequestMergeMethod._('squash');

static const PullsMergeRequestMergeMethod rebase = PullsMergeRequestMergeMethod._('rebase');

static const List<PullsMergeRequestMergeMethod> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsMergeRequestMergeMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PullsMergeRequestMergeMethod($value)'; } 
 }
final class PullsMergeRequest {const PullsMergeRequest({this.commitTitle, this.commitMessage, this.sha, this.mergeMethod, });

factory PullsMergeRequest.fromJson(Map<String, dynamic> json) { return PullsMergeRequest(
  commitTitle: json['commit_title'] as String?,
  commitMessage: json['commit_message'] as String?,
  sha: json['sha'] as String?,
  mergeMethod: json['merge_method'] != null ? PullsMergeRequestMergeMethod.fromJson(json['merge_method'] as String) : null,
); }

/// Title for the automatic commit message.
final String? commitTitle;

/// Extra detail to append to automatic commit message.
final String? commitMessage;

/// SHA that pull request head must match to allow merge.
final String? sha;

/// The merge method to use.
final PullsMergeRequestMergeMethod? mergeMethod;

Map<String, dynamic> toJson() { return {
  'commit_title': ?commitTitle,
  'commit_message': ?commitMessage,
  'sha': ?sha,
  if (mergeMethod != null) 'merge_method': mergeMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commit_title', 'commit_message', 'sha', 'merge_method'}.contains(key)); } 
PullsMergeRequest copyWith({String Function()? commitTitle, String Function()? commitMessage, String Function()? sha, PullsMergeRequestMergeMethod Function()? mergeMethod, }) { return PullsMergeRequest(
  commitTitle: commitTitle != null ? commitTitle() : this.commitTitle,
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  sha: sha != null ? sha() : this.sha,
  mergeMethod: mergeMethod != null ? mergeMethod() : this.mergeMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullsMergeRequest &&
          commitTitle == other.commitTitle &&
          commitMessage == other.commitMessage &&
          sha == other.sha &&
          mergeMethod == other.mergeMethod; } 
@override int get hashCode { return Object.hash(commitTitle, commitMessage, sha, mergeMethod); } 
@override String toString() { return 'PullsMergeRequest(commitTitle: $commitTitle, commitMessage: $commitMessage, sha: $sha, mergeMethod: $mergeMethod)'; } 
 }
