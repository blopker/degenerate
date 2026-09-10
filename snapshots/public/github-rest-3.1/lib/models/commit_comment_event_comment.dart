// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'reaction_rollup.dart';import 'simple_user.dart';@immutable final class CommitCommentEventComment {const CommitCommentEventComment({this.htmlUrl, this.url, this.id, this.nodeId, this.body, this.path = const Omittable.absent(), this.position = const Omittable.absent(), this.line = const Omittable.absent(), this.commitId, this.user = const Omittable.absent(), this.createdAt, this.updatedAt, this.reactions, });

factory CommitCommentEventComment.fromJson(Map<String, dynamic> json) { return CommitCommentEventComment(
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  nodeId: json['node_id'] as String?,
  body: json['body'] as String?,
  path: json.containsKey('path') ? Omittable(json['path'] as String?) : const Omittable.absent(),
  position: json.containsKey('position') ? Omittable(json['position'] != null ? (json['position'] as num).toInt() : null) : const Omittable.absent(),
  line: json.containsKey('line') ? Omittable(json['line'] != null ? (json['line'] as num).toInt() : null) : const Omittable.absent(),
  commitId: json['commit_id'] as String?,
  user: json.containsKey('user') ? Omittable(json['user'] != null ? SimpleUser.fromJson(json['user'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  reactions: json['reactions'] != null ? ReactionRollup.fromJson(json['reactions'] as Map<String, dynamic>) : null,
); }

final Uri? htmlUrl;

final Uri? url;

final int? id;

final String? nodeId;

final String? body;

final Omittable<String?> path;

final Omittable<int?> position;

final Omittable<int?> line;

final String? commitId;

final Omittable<SimpleUser?> user;

final DateTime? createdAt;

final DateTime? updatedAt;

final ReactionRollup? reactions;

Map<String, dynamic> toJson() { return {
  if (htmlUrl != null) 'html_url': htmlUrl?.toString(),
  if (url != null) 'url': url?.toString(),
  'id': ?id,
  'node_id': ?nodeId,
  'body': ?body,
  if (path.isPresent) 'path': path.value,
  if (position.isPresent) 'position': position.value,
  if (line.isPresent) 'line': line.value,
  'commit_id': ?commitId,
  if (user.isPresent) 'user': user.value?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  if (reactions != null) 'reactions': reactions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'html_url', 'url', 'id', 'node_id', 'body', 'path', 'position', 'line', 'commit_id', 'user', 'created_at', 'updated_at', 'reactions'}.contains(key)); } 
CommitCommentEventComment copyWith({Uri? Function()? htmlUrl, Uri? Function()? url, int? Function()? id, String? Function()? nodeId, String? Function()? body, Omittable<String?>? path, Omittable<int?>? position, Omittable<int?>? line, String? Function()? commitId, Omittable<SimpleUser?>? user, DateTime? Function()? createdAt, DateTime? Function()? updatedAt, ReactionRollup? Function()? reactions, }) { return CommitCommentEventComment(
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  url: url != null ? url() : this.url,
  id: id != null ? id() : this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  body: body != null ? body() : this.body,
  path: path ?? this.path,
  position: position ?? this.position,
  line: line ?? this.line,
  commitId: commitId != null ? commitId() : this.commitId,
  user: user ?? this.user,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  reactions: reactions != null ? reactions() : this.reactions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CommitCommentEventComment &&
          htmlUrl == other.htmlUrl &&
          url == other.url &&
          id == other.id &&
          nodeId == other.nodeId &&
          body == other.body &&
          path == other.path &&
          position == other.position &&
          line == other.line &&
          commitId == other.commitId &&
          user == other.user &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          reactions == other.reactions; } 
@override int get hashCode { return Object.hash(htmlUrl, url, id, nodeId, body, path, position, line, commitId, user, createdAt, updatedAt, reactions); } 
@override String toString() { return 'CommitCommentEventComment(htmlUrl: $htmlUrl, url: $url, id: $id, nodeId: $nodeId, body: $body, path: $path, position: $position, line: $line, commitId: $commitId, user: $user, createdAt: $createdAt, updatedAt: $updatedAt, reactions: $reactions)'; } 
 }
