// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'simple_commit_author.dart';import 'simple_commit_committer.dart';/// A commit.
@immutable final class SimpleCommit {const SimpleCommit({required this.id, required this.treeId, required this.message, required this.timestamp, required this.author, required this.committer, });

factory SimpleCommit.fromJson(Map<String, dynamic> json) { return SimpleCommit(
  id: json['id'] as String,
  treeId: json['tree_id'] as String,
  message: json['message'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  author: json['author'] != null ? SimpleCommitAuthor.fromJson(json['author'] as Map<String, dynamic>) : null,
  committer: json['committer'] != null ? SimpleCommitCommitter.fromJson(json['committer'] as Map<String, dynamic>) : null,
); }

/// SHA for the commit
final String id;

/// SHA for the commit's tree
final String treeId;

/// Message describing the purpose of the commit
final String message;

/// Timestamp of the commit
final DateTime timestamp;

/// Information about the Git author
final SimpleCommitAuthor? author;

/// Information about the Git committer
final SimpleCommitCommitter? committer;

Map<String, dynamic> toJson() { return {
  'id': id,
  'tree_id': treeId,
  'message': message,
  'timestamp': timestamp.toIso8601String(),
  if (author != null) 'author': author?.toJson(),
  if (committer != null) 'committer': committer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('tree_id') && json['tree_id'] is String &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('timestamp') && json['timestamp'] is String &&
      json.containsKey('author') &&
      json.containsKey('committer'); } 
SimpleCommit copyWith({String? id, String? treeId, String? message, DateTime? timestamp, SimpleCommitAuthor? Function()? author, SimpleCommitCommitter? Function()? committer, }) { return SimpleCommit(
  id: id ?? this.id,
  treeId: treeId ?? this.treeId,
  message: message ?? this.message,
  timestamp: timestamp ?? this.timestamp,
  author: author != null ? author() : this.author,
  committer: committer != null ? committer() : this.committer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SimpleCommit &&
          id == other.id &&
          treeId == other.treeId &&
          message == other.message &&
          timestamp == other.timestamp &&
          author == other.author &&
          committer == other.committer; } 
@override int get hashCode { return Object.hash(id, treeId, message, timestamp, author, committer); } 
@override String toString() { return 'SimpleCommit(id: $id, treeId: $treeId, message: $message, timestamp: $timestamp, author: $author, committer: $committer)'; } 
 }
