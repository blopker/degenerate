// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'git_create_commit_request_author.dart';import 'git_create_commit_request_committer.dart';final class GitCreateCommitRequest {const GitCreateCommitRequest({required this.message, required this.tree, this.parents, this.author, this.committer, this.signature, });

factory GitCreateCommitRequest.fromJson(Map<String, dynamic> json) { return GitCreateCommitRequest(
  message: json['message'] as String,
  tree: json['tree'] as String,
  parents: (json['parents'] as List<dynamic>?)?.map((e) => e as String).toList(),
  author: json['author'] != null ? GitCreateCommitRequestAuthor.fromJson(json['author'] as Map<String, dynamic>) : null,
  committer: json['committer'] != null ? GitCreateCommitRequestCommitter.fromJson(json['committer'] as Map<String, dynamic>) : null,
  signature: json['signature'] as String?,
); }

/// The commit message
final String message;

/// The SHA of the tree object this commit points to
final String tree;

/// The full SHAs of the commits that were the parents of this commit. If omitted or empty, the commit will be written as a root commit. For a single parent, an array of one SHA should be provided; for a merge commit, an array of more than one should be provided.
final List<String>? parents;

/// Information about the author of the commit. By default, the `author` will be the authenticated user and the current date. See the `author` and `committer` object below for details.
final GitCreateCommitRequestAuthor? author;

/// Information about the person who is making the commit. By default, `committer` will use the information set in `author`. See the `author` and `committer` object below for details.
final GitCreateCommitRequestCommitter? committer;

/// The [PGP signature](https://en.wikipedia.org/wiki/Pretty_Good_Privacy) of the commit. GitHub adds the signature to the `gpgsig` header of the created commit. For a commit signature to be verifiable by Git or GitHub, it must be an ASCII-armored detached PGP signature over the string commit as it would be written to the object database. To pass a `signature` parameter, you need to first manually create a valid PGP signature, which can be complicated. You may find it easier to [use the command line](https://git-scm.com/book/id/v2/Git-Tools-Signing-Your-Work) to create signed commits.
final String? signature;

Map<String, dynamic> toJson() { return {
  'message': message,
  'tree': tree,
  'parents': ?parents,
  if (author != null) 'author': author?.toJson(),
  if (committer != null) 'committer': committer?.toJson(),
  'signature': ?signature,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String &&
      json.containsKey('tree') && json['tree'] is String; } 
GitCreateCommitRequest copyWith({String? message, String? tree, List<String> Function()? parents, GitCreateCommitRequestAuthor Function()? author, GitCreateCommitRequestCommitter Function()? committer, String Function()? signature, }) { return GitCreateCommitRequest(
  message: message ?? this.message,
  tree: tree ?? this.tree,
  parents: parents != null ? parents() : this.parents,
  author: author != null ? author() : this.author,
  committer: committer != null ? committer() : this.committer,
  signature: signature != null ? signature() : this.signature,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GitCreateCommitRequest &&
          message == other.message &&
          tree == other.tree &&
          listEquals(parents, other.parents) &&
          author == other.author &&
          committer == other.committer &&
          signature == other.signature; } 
@override int get hashCode { return Object.hash(message, tree, Object.hashAll(parents ?? const []), author, committer, signature); } 
@override String toString() { return 'GitCreateCommitRequest(message: $message, tree: $tree, parents: $parents, author: $author, committer: $committer, signature: $signature)'; } 
 }
