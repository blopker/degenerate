// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_status_commit_author.dart';import 'webhook_status_commit_commit.dart';import 'webhook_status_commit_committer.dart';import 'webhook_status_commit_parents.dart';@immutable final class WebhookStatusCommit {const WebhookStatusCommit({required this.author, required this.commentsUrl, required this.commit, required this.committer, required this.htmlUrl, required this.nodeId, required this.parents, required this.sha, required this.url, });

factory WebhookStatusCommit.fromJson(Map<String, dynamic> json) { return WebhookStatusCommit(
  author: json['author'] != null ? WebhookStatusCommitAuthor.fromJson(json['author'] as Map<String, dynamic>) : null,
  commentsUrl: Uri.parse(json['comments_url'] as String),
  commit: WebhookStatusCommitCommit.fromJson(json['commit'] as Map<String, dynamic>),
  committer: json['committer'] != null ? WebhookStatusCommitCommitter.fromJson(json['committer'] as Map<String, dynamic>) : null,
  htmlUrl: Uri.parse(json['html_url'] as String),
  nodeId: json['node_id'] as String,
  parents: (json['parents'] as List<dynamic>).map((e) => WebhookStatusCommitParents.fromJson(e as Map<String, dynamic>)).toList(),
  sha: json['sha'] as String,
  url: Uri.parse(json['url'] as String),
); }

final WebhookStatusCommitAuthor? author;

final Uri commentsUrl;

final WebhookStatusCommitCommit commit;

final WebhookStatusCommitCommitter? committer;

final Uri htmlUrl;

final String nodeId;

final List<WebhookStatusCommitParents> parents;

final String sha;

final Uri url;

Map<String, dynamic> toJson() { return {
  if (author != null) 'author': author?.toJson(),
  'comments_url': commentsUrl.toString(),
  'commit': commit.toJson(),
  if (committer != null) 'committer': committer?.toJson(),
  'html_url': htmlUrl.toString(),
  'node_id': nodeId,
  'parents': parents.map((e) => e.toJson()).toList(),
  'sha': sha,
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('author') &&
      json.containsKey('comments_url') && json['comments_url'] is String &&
      json.containsKey('commit') &&
      json.containsKey('committer') &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('parents') &&
      json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhookStatusCommit copyWith({WebhookStatusCommitAuthor? Function()? author, Uri? commentsUrl, WebhookStatusCommitCommit? commit, WebhookStatusCommitCommitter? Function()? committer, Uri? htmlUrl, String? nodeId, List<WebhookStatusCommitParents>? parents, String? sha, Uri? url, }) { return WebhookStatusCommit(
  author: author != null ? author() : this.author,
  commentsUrl: commentsUrl ?? this.commentsUrl,
  commit: commit ?? this.commit,
  committer: committer != null ? committer() : this.committer,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  nodeId: nodeId ?? this.nodeId,
  parents: parents ?? this.parents,
  sha: sha ?? this.sha,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookStatusCommit &&
          author == other.author &&
          commentsUrl == other.commentsUrl &&
          commit == other.commit &&
          committer == other.committer &&
          htmlUrl == other.htmlUrl &&
          nodeId == other.nodeId &&
          listEquals(parents, other.parents) &&
          sha == other.sha &&
          url == other.url; } 
@override int get hashCode { return Object.hash(author, commentsUrl, commit, committer, htmlUrl, nodeId, Object.hashAll(parents), sha, url); } 
@override String toString() { return 'WebhookStatusCommit(author: $author, commentsUrl: $commentsUrl, commit: $commit, committer: $committer, htmlUrl: $htmlUrl, nodeId: $nodeId, parents: $parents, sha: $sha, url: $url)'; } 
 }
