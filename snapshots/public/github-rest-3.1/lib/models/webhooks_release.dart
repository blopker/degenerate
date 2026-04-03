// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhooks_release_assets.dart';import 'webhooks_release_author.dart';import 'webhooks_release_reactions.dart';/// The [release](https://docs.github.com/rest/releases/releases/#get-a-release) object.
@immutable final class WebhooksRelease {const WebhooksRelease({required this.assets, required this.assetsUrl, required this.author, required this.body, required this.createdAt, required this.updatedAt, required this.draft, required this.htmlUrl, required this.id, required this.immutable, required this.name, required this.nodeId, required this.prerelease, required this.publishedAt, required this.tagName, required this.tarballUrl, required this.targetCommitish, required this.uploadUrl, required this.url, required this.zipballUrl, this.discussionUrl, this.reactions, });

factory WebhooksRelease.fromJson(Map<String, dynamic> json) { return WebhooksRelease(
  assets: (json['assets'] as List<dynamic>).map((e) => WebhooksReleaseAssets.fromJson(e as Map<String, dynamic>)).toList(),
  assetsUrl: Uri.parse(json['assets_url'] as String),
  author: json['author'] != null ? WebhooksReleaseAuthor.fromJson(json['author'] as Map<String, dynamic>) : null,
  body: json['body'] as String?,
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  discussionUrl: json['discussion_url'] != null ? Uri.parse(json['discussion_url'] as String) : null,
  draft: json['draft'] as bool,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  immutable: json['immutable'] as bool,
  name: json['name'] as String?,
  nodeId: json['node_id'] as String,
  prerelease: json['prerelease'] as bool,
  publishedAt: json['published_at'] != null ? DateTime.parse(json['published_at'] as String) : null,
  reactions: json['reactions'] != null ? WebhooksReleaseReactions.fromJson(json['reactions'] as Map<String, dynamic>) : null,
  tagName: json['tag_name'] as String,
  tarballUrl: json['tarball_url'] != null ? Uri.parse(json['tarball_url'] as String) : null,
  targetCommitish: json['target_commitish'] as String,
  uploadUrl: json['upload_url'] as String,
  url: Uri.parse(json['url'] as String),
  zipballUrl: json['zipball_url'] != null ? Uri.parse(json['zipball_url'] as String) : null,
); }

final List<WebhooksReleaseAssets> assets;

final Uri assetsUrl;

final WebhooksReleaseAuthor? author;

final String? body;

final DateTime? createdAt;

final DateTime? updatedAt;

final Uri? discussionUrl;

/// Whether the release is a draft or published
final bool draft;

final Uri htmlUrl;

final int id;

/// Whether or not the release is immutable.
final bool immutable;

final String? name;

final String nodeId;

/// Whether the release is identified as a prerelease or a full release.
final bool prerelease;

final DateTime? publishedAt;

final WebhooksReleaseReactions? reactions;

/// The name of the tag.
final String tagName;

final Uri? tarballUrl;

/// Specifies the commitish value that determines where the Git tag is created from.
final String targetCommitish;

final String uploadUrl;

final Uri url;

final Uri? zipballUrl;

Map<String, dynamic> toJson() { return {
  'assets': assets.map((e) => e.toJson()).toList(),
  'assets_url': assetsUrl.toString(),
  if (author != null) 'author': author?.toJson(),
  'body': ?body,
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  if (discussionUrl != null) 'discussion_url': discussionUrl?.toString(),
  'draft': draft,
  'html_url': htmlUrl.toString(),
  'id': id,
  'immutable': immutable,
  'name': ?name,
  'node_id': nodeId,
  'prerelease': prerelease,
  if (publishedAt != null) 'published_at': publishedAt?.toIso8601String(),
  if (reactions != null) 'reactions': reactions?.toJson(),
  'tag_name': tagName,
  if (tarballUrl != null) 'tarball_url': tarballUrl?.toString(),
  'target_commitish': targetCommitish,
  'upload_url': uploadUrl,
  'url': url.toString(),
  if (zipballUrl != null) 'zipball_url': zipballUrl?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('assets') &&
      json.containsKey('assets_url') && json['assets_url'] is String &&
      json.containsKey('author') &&
      json.containsKey('body') && json['body'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('draft') && json['draft'] is bool &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('immutable') && json['immutable'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('prerelease') && json['prerelease'] is bool &&
      json.containsKey('published_at') && json['published_at'] is String &&
      json.containsKey('tag_name') && json['tag_name'] is String &&
      json.containsKey('tarball_url') && json['tarball_url'] is String &&
      json.containsKey('target_commitish') && json['target_commitish'] is String &&
      json.containsKey('upload_url') && json['upload_url'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('zipball_url') && json['zipball_url'] is String; } 
WebhooksRelease copyWith({List<WebhooksReleaseAssets>? assets, Uri? assetsUrl, WebhooksReleaseAuthor? Function()? author, String? Function()? body, DateTime? Function()? createdAt, DateTime? Function()? updatedAt, Uri Function()? discussionUrl, bool? draft, Uri? htmlUrl, int? id, bool? immutable, String? Function()? name, String? nodeId, bool? prerelease, DateTime? Function()? publishedAt, WebhooksReleaseReactions Function()? reactions, String? tagName, Uri? Function()? tarballUrl, String? targetCommitish, String? uploadUrl, Uri? url, Uri? Function()? zipballUrl, }) { return WebhooksRelease(
  assets: assets ?? this.assets,
  assetsUrl: assetsUrl ?? this.assetsUrl,
  author: author != null ? author() : this.author,
  body: body != null ? body() : this.body,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  discussionUrl: discussionUrl != null ? discussionUrl() : this.discussionUrl,
  draft: draft ?? this.draft,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  immutable: immutable ?? this.immutable,
  name: name != null ? name() : this.name,
  nodeId: nodeId ?? this.nodeId,
  prerelease: prerelease ?? this.prerelease,
  publishedAt: publishedAt != null ? publishedAt() : this.publishedAt,
  reactions: reactions != null ? reactions() : this.reactions,
  tagName: tagName ?? this.tagName,
  tarballUrl: tarballUrl != null ? tarballUrl() : this.tarballUrl,
  targetCommitish: targetCommitish ?? this.targetCommitish,
  uploadUrl: uploadUrl ?? this.uploadUrl,
  url: url ?? this.url,
  zipballUrl: zipballUrl != null ? zipballUrl() : this.zipballUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksRelease &&
          listEquals(assets, other.assets) &&
          assetsUrl == other.assetsUrl &&
          author == other.author &&
          body == other.body &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          discussionUrl == other.discussionUrl &&
          draft == other.draft &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          immutable == other.immutable &&
          name == other.name &&
          nodeId == other.nodeId &&
          prerelease == other.prerelease &&
          publishedAt == other.publishedAt &&
          reactions == other.reactions &&
          tagName == other.tagName &&
          tarballUrl == other.tarballUrl &&
          targetCommitish == other.targetCommitish &&
          uploadUrl == other.uploadUrl &&
          url == other.url &&
          zipballUrl == other.zipballUrl; } 
@override int get hashCode { return Object.hashAll([Object.hashAll(assets), assetsUrl, author, body, createdAt, updatedAt, discussionUrl, draft, htmlUrl, id, immutable, name, nodeId, prerelease, publishedAt, reactions, tagName, tarballUrl, targetCommitish, uploadUrl, url, zipballUrl]); } 
@override String toString() { return 'WebhooksRelease(assets: $assets, assetsUrl: $assetsUrl, author: $author, body: $body, createdAt: $createdAt, updatedAt: $updatedAt, discussionUrl: $discussionUrl, draft: $draft, htmlUrl: $htmlUrl, id: $id, immutable: $immutable, name: $name, nodeId: $nodeId, prerelease: $prerelease, publishedAt: $publishedAt, reactions: $reactions, tagName: $tagName, tarballUrl: $tarballUrl, targetCommitish: $targetCommitish, uploadUrl: $uploadUrl, url: $url, zipballUrl: $zipballUrl)'; } 
 }
