// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposMergeRequest {const ReposMergeRequest({required this.base, required this.head, this.commitMessage, });

factory ReposMergeRequest.fromJson(Map<String, dynamic> json) { return ReposMergeRequest(
  base: json['base'] as String,
  head: json['head'] as String,
  commitMessage: json['commit_message'] as String?,
); }

/// The name of the base branch that the head will be merged into.
final String base;

/// The head to merge. This can be a branch name or a commit SHA1.
final String head;

/// Commit message to use for the merge commit. If omitted, a default message will be used.
final String? commitMessage;

Map<String, dynamic> toJson() { return {
  'base': base,
  'head': head,
  'commit_message': ?commitMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('base') && json['base'] is String &&
      json.containsKey('head') && json['head'] is String; } 
ReposMergeRequest copyWith({String? base, String? head, String Function()? commitMessage, }) { return ReposMergeRequest(
  base: base ?? this.base,
  head: head ?? this.head,
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposMergeRequest &&
          base == other.base &&
          head == other.head &&
          commitMessage == other.commitMessage; } 
@override int get hashCode { return Object.hash(base, head, commitMessage); } 
@override String toString() { return 'ReposMergeRequest(base: $base, head: $head, commitMessage: $commitMessage)'; } 
 }
