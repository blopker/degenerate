// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_push_head_commit_author.dart';import 'webhook_push_head_commit_committer.dart';@immutable final class WebhookPushHeadCommit {const WebhookPushHeadCommit({required this.author, required this.committer, required this.distinct, required this.id, required this.message, required this.timestamp, required this.treeId, required this.url, this.added, this.modified, this.removed, });

factory WebhookPushHeadCommit.fromJson(Map<String, dynamic> json) { return WebhookPushHeadCommit(
  added: (json['added'] as List<dynamic>?)?.map((e) => e as String).toList(),
  author: WebhookPushHeadCommitAuthor.fromJson(json['author'] as Map<String, dynamic>),
  committer: WebhookPushHeadCommitCommitter.fromJson(json['committer'] as Map<String, dynamic>),
  distinct: json['distinct'] as bool,
  id: json['id'] as String,
  message: json['message'] as String,
  modified: (json['modified'] as List<dynamic>?)?.map((e) => e as String).toList(),
  removed: (json['removed'] as List<dynamic>?)?.map((e) => e as String).toList(),
  timestamp: DateTime.parse(json['timestamp'] as String),
  treeId: json['tree_id'] as String,
  url: Uri.parse(json['url'] as String),
); }

/// An array of files added in the commit.
final List<String>? added;

/// Metaproperties for Git author/committer information.
final WebhookPushHeadCommitAuthor author;

/// Metaproperties for Git author/committer information.
final WebhookPushHeadCommitCommitter committer;

/// Whether this commit is distinct from any that have been pushed before.
final bool distinct;

final String id;

/// The commit message.
final String message;

/// An array of files modified by the commit.
final List<String>? modified;

/// An array of files removed in the commit.
final List<String>? removed;

/// The ISO 8601 timestamp of the commit.
final DateTime timestamp;

final String treeId;

/// URL that points to the commit API resource.
final Uri url;

Map<String, dynamic> toJson() { return {
  'added': ?added,
  'author': author.toJson(),
  'committer': committer.toJson(),
  'distinct': distinct,
  'id': id,
  'message': message,
  'modified': ?modified,
  'removed': ?removed,
  'timestamp': timestamp.toIso8601String(),
  'tree_id': treeId,
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('author') &&
      json.containsKey('committer') &&
      json.containsKey('distinct') && json['distinct'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('timestamp') && json['timestamp'] is String &&
      json.containsKey('tree_id') && json['tree_id'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhookPushHeadCommit copyWith({List<String> Function()? added, WebhookPushHeadCommitAuthor? author, WebhookPushHeadCommitCommitter? committer, bool? distinct, String? id, String? message, List<String> Function()? modified, List<String> Function()? removed, DateTime? timestamp, String? treeId, Uri? url, }) { return WebhookPushHeadCommit(
  added: added != null ? added() : this.added,
  author: author ?? this.author,
  committer: committer ?? this.committer,
  distinct: distinct ?? this.distinct,
  id: id ?? this.id,
  message: message ?? this.message,
  modified: modified != null ? modified() : this.modified,
  removed: removed != null ? removed() : this.removed,
  timestamp: timestamp ?? this.timestamp,
  treeId: treeId ?? this.treeId,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPushHeadCommit &&
          listEquals(added, other.added) &&
          author == other.author &&
          committer == other.committer &&
          distinct == other.distinct &&
          id == other.id &&
          message == other.message &&
          listEquals(modified, other.modified) &&
          listEquals(removed, other.removed) &&
          timestamp == other.timestamp &&
          treeId == other.treeId &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(added ?? const []), author, committer, distinct, id, message, Object.hashAll(modified ?? const []), Object.hashAll(removed ?? const []), timestamp, treeId, url); } 
@override String toString() { return 'WebhookPushHeadCommit(added: $added, author: $author, committer: $committer, distinct: $distinct, id: $id, message: $message, modified: $modified, removed: $removed, timestamp: $timestamp, treeId: $treeId, url: $url)'; } 
 }
