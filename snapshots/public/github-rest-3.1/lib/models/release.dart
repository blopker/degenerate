// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'reaction_rollup.dart';import 'release_asset.dart';import 'simple_user.dart';/// A release.
@immutable final class Release {const Release({required this.url, required this.htmlUrl, required this.assetsUrl, required this.uploadUrl, required this.tarballUrl, required this.zipballUrl, required this.id, required this.nodeId, required this.tagName, required this.targetCommitish, required this.name, required this.draft, required this.prerelease, required this.createdAt, required this.publishedAt, required this.author, required this.assets, this.body, this.immutable, this.updatedAt, this.bodyHtml, this.bodyText, this.mentionsCount, this.discussionUrl, this.reactions, });

factory Release.fromJson(Map<String, dynamic> json) { return Release(
  url: Uri.parse(json['url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
  assetsUrl: Uri.parse(json['assets_url'] as String),
  uploadUrl: json['upload_url'] as String,
  tarballUrl: json['tarball_url'] != null ? Uri.parse(json['tarball_url'] as String) : null,
  zipballUrl: json['zipball_url'] != null ? Uri.parse(json['zipball_url'] as String) : null,
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  tagName: json['tag_name'] as String,
  targetCommitish: json['target_commitish'] as String,
  name: json['name'] as String?,
  body: json['body'] as String?,
  draft: json['draft'] as bool,
  prerelease: json['prerelease'] as bool,
  immutable: json['immutable'] as bool?,
  createdAt: DateTime.parse(json['created_at'] as String),
  publishedAt: json['published_at'] != null ? DateTime.parse(json['published_at'] as String) : null,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  author: SimpleUser.fromJson(json['author'] as Map<String, dynamic>),
  assets: (json['assets'] as List<dynamic>).map((e) => ReleaseAsset.fromJson(e as Map<String, dynamic>)).toList(),
  bodyHtml: json['body_html'] as String?,
  bodyText: json['body_text'] as String?,
  mentionsCount: json['mentions_count'] != null ? (json['mentions_count'] as num).toInt() : null,
  discussionUrl: json['discussion_url'] != null ? Uri.parse(json['discussion_url'] as String) : null,
  reactions: json['reactions'] != null ? ReactionRollup.fromJson(json['reactions'] as Map<String, dynamic>) : null,
); }

final Uri url;

final Uri htmlUrl;

final Uri assetsUrl;

final String uploadUrl;

final Uri? tarballUrl;

final Uri? zipballUrl;

final int id;

final String nodeId;

/// The name of the tag.
final String tagName;

/// Specifies the commitish value that determines where the Git tag is created from.
final String targetCommitish;

final String? name;

final String? body;

/// true to create a draft (unpublished) release, false to create a published one.
final bool draft;

/// Whether to identify the release as a prerelease or a full release.
final bool prerelease;

/// Whether or not the release is immutable.
final bool? immutable;

final DateTime createdAt;

final DateTime? publishedAt;

final DateTime? updatedAt;

final SimpleUser author;

final List<ReleaseAsset> assets;

final String? bodyHtml;

final String? bodyText;

final int? mentionsCount;

/// The URL of the release discussion.
final Uri? discussionUrl;

final ReactionRollup? reactions;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'html_url': htmlUrl.toString(),
  'assets_url': assetsUrl.toString(),
  'upload_url': uploadUrl,
  if (tarballUrl != null) 'tarball_url': tarballUrl?.toString(),
  if (zipballUrl != null) 'zipball_url': zipballUrl?.toString(),
  'id': id,
  'node_id': nodeId,
  'tag_name': tagName,
  'target_commitish': targetCommitish,
  'name': ?name,
  'body': ?body,
  'draft': draft,
  'prerelease': prerelease,
  'immutable': ?immutable,
  'created_at': createdAt.toIso8601String(),
  if (publishedAt != null) 'published_at': publishedAt?.toIso8601String(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  'author': author.toJson(),
  'assets': assets.map((e) => e.toJson()).toList(),
  'body_html': ?bodyHtml,
  'body_text': ?bodyText,
  'mentions_count': ?mentionsCount,
  if (discussionUrl != null) 'discussion_url': discussionUrl?.toString(),
  if (reactions != null) 'reactions': reactions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('assets_url') && json['assets_url'] is String &&
      json.containsKey('upload_url') && json['upload_url'] is String &&
      json.containsKey('tarball_url') && json['tarball_url'] is String &&
      json.containsKey('zipball_url') && json['zipball_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('tag_name') && json['tag_name'] is String &&
      json.containsKey('target_commitish') && json['target_commitish'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('draft') && json['draft'] is bool &&
      json.containsKey('prerelease') && json['prerelease'] is bool &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('published_at') && json['published_at'] is String &&
      json.containsKey('author') &&
      json.containsKey('assets'); } 
Release copyWith({Uri? url, Uri? htmlUrl, Uri? assetsUrl, String? uploadUrl, Uri? Function()? tarballUrl, Uri? Function()? zipballUrl, int? id, String? nodeId, String? tagName, String? targetCommitish, String? Function()? name, String? Function()? body, bool? draft, bool? prerelease, bool Function()? immutable, DateTime? createdAt, DateTime? Function()? publishedAt, DateTime? Function()? updatedAt, SimpleUser? author, List<ReleaseAsset>? assets, String Function()? bodyHtml, String Function()? bodyText, int Function()? mentionsCount, Uri Function()? discussionUrl, ReactionRollup Function()? reactions, }) { return Release(
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  assetsUrl: assetsUrl ?? this.assetsUrl,
  uploadUrl: uploadUrl ?? this.uploadUrl,
  tarballUrl: tarballUrl != null ? tarballUrl() : this.tarballUrl,
  zipballUrl: zipballUrl != null ? zipballUrl() : this.zipballUrl,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  tagName: tagName ?? this.tagName,
  targetCommitish: targetCommitish ?? this.targetCommitish,
  name: name != null ? name() : this.name,
  body: body != null ? body() : this.body,
  draft: draft ?? this.draft,
  prerelease: prerelease ?? this.prerelease,
  immutable: immutable != null ? immutable() : this.immutable,
  createdAt: createdAt ?? this.createdAt,
  publishedAt: publishedAt != null ? publishedAt() : this.publishedAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  author: author ?? this.author,
  assets: assets ?? this.assets,
  bodyHtml: bodyHtml != null ? bodyHtml() : this.bodyHtml,
  bodyText: bodyText != null ? bodyText() : this.bodyText,
  mentionsCount: mentionsCount != null ? mentionsCount() : this.mentionsCount,
  discussionUrl: discussionUrl != null ? discussionUrl() : this.discussionUrl,
  reactions: reactions != null ? reactions() : this.reactions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Release &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          assetsUrl == other.assetsUrl &&
          uploadUrl == other.uploadUrl &&
          tarballUrl == other.tarballUrl &&
          zipballUrl == other.zipballUrl &&
          id == other.id &&
          nodeId == other.nodeId &&
          tagName == other.tagName &&
          targetCommitish == other.targetCommitish &&
          name == other.name &&
          body == other.body &&
          draft == other.draft &&
          prerelease == other.prerelease &&
          immutable == other.immutable &&
          createdAt == other.createdAt &&
          publishedAt == other.publishedAt &&
          updatedAt == other.updatedAt &&
          author == other.author &&
          listEquals(assets, other.assets) &&
          bodyHtml == other.bodyHtml &&
          bodyText == other.bodyText &&
          mentionsCount == other.mentionsCount &&
          discussionUrl == other.discussionUrl &&
          reactions == other.reactions; } 
@override int get hashCode { return Object.hashAll([url, htmlUrl, assetsUrl, uploadUrl, tarballUrl, zipballUrl, id, nodeId, tagName, targetCommitish, name, body, draft, prerelease, immutable, createdAt, publishedAt, updatedAt, author, Object.hashAll(assets), bodyHtml, bodyText, mentionsCount, discussionUrl, reactions]); } 
@override String toString() { return 'Release(url: $url, htmlUrl: $htmlUrl, assetsUrl: $assetsUrl, uploadUrl: $uploadUrl, tarballUrl: $tarballUrl, zipballUrl: $zipballUrl, id: $id, nodeId: $nodeId, tagName: $tagName, targetCommitish: $targetCommitish, name: $name, body: $body, draft: $draft, prerelease: $prerelease, immutable: $immutable, createdAt: $createdAt, publishedAt: $publishedAt, updatedAt: $updatedAt, author: $author, assets: $assets, bodyHtml: $bodyHtml, bodyText: $bodyText, mentionsCount: $mentionsCount, discussionUrl: $discussionUrl, reactions: $reactions)'; } 
 }
