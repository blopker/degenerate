// GENERATED CODE - DO NOT MODIFY BY HAND

import 'file_commit_commit.dart';import 'file_commit_content.dart';/// File Commit
final class FileCommit {const FileCommit({required this.content, required this.commit, });

factory FileCommit.fromJson(Map<String, dynamic> json) { return FileCommit(
  content: json['content'] != null ? FileCommitContent.fromJson(json['content'] as Map<String, dynamic>) : null,
  commit: FileCommitCommit.fromJson(json['commit'] as Map<String, dynamic>),
); }

final FileCommitContent? content;

final FileCommitCommit commit;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.toJson(),
  'commit': commit.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('commit'); } 
FileCommit copyWith({FileCommitContent? Function()? content, FileCommitCommit? commit, }) { return FileCommit(
  content: content != null ? content() : this.content,
  commit: commit ?? this.commit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileCommit &&
          content == other.content &&
          commit == other.commit; } 
@override int get hashCode { return Object.hash(content, commit); } 
@override String toString() { return 'FileCommit(content: $content, commit: $commit)'; } 
 }
