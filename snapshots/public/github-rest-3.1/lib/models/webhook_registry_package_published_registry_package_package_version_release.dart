// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_registry_package_published_registry_package_package_version_release_author.dart';final class WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease {const WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease({this.author, this.createdAt, this.draft, this.htmlUrl, this.id, this.name, this.prerelease, this.publishedAt, this.tagName, this.targetCommitish, this.url, });

factory WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease(
  author: json['author'] != null ? WebhookRegistryPackagePublishedRegistryPackagePackageVersionReleaseAuthor.fromJson(json['author'] as Map<String, dynamic>) : null,
  createdAt: json['created_at'] as String?,
  draft: json['draft'] as bool?,
  htmlUrl: json['html_url'] as String?,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
  prerelease: json['prerelease'] as bool?,
  publishedAt: json['published_at'] as String?,
  tagName: json['tag_name'] as String?,
  targetCommitish: json['target_commitish'] as String?,
  url: json['url'] as String?,
); }

final WebhookRegistryPackagePublishedRegistryPackagePackageVersionReleaseAuthor? author;

final String? createdAt;

final bool? draft;

final String? htmlUrl;

final int? id;

final String? name;

final bool? prerelease;

final String? publishedAt;

final String? tagName;

final String? targetCommitish;

final String? url;

Map<String, dynamic> toJson() { return {
  if (author != null) 'author': author?.toJson(),
  'created_at': ?createdAt,
  'draft': ?draft,
  'html_url': ?htmlUrl,
  'id': ?id,
  'name': ?name,
  'prerelease': ?prerelease,
  'published_at': ?publishedAt,
  'tag_name': ?tagName,
  'target_commitish': ?targetCommitish,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'author', 'created_at', 'draft', 'html_url', 'id', 'name', 'prerelease', 'published_at', 'tag_name', 'target_commitish', 'url'}.contains(key)); } 
WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease copyWith({WebhookRegistryPackagePublishedRegistryPackagePackageVersionReleaseAuthor Function()? author, String Function()? createdAt, bool Function()? draft, String Function()? htmlUrl, int Function()? id, String? Function()? name, bool Function()? prerelease, String Function()? publishedAt, String Function()? tagName, String Function()? targetCommitish, String Function()? url, }) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease(
  author: author != null ? author() : this.author,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  draft: draft != null ? draft() : this.draft,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  prerelease: prerelease != null ? prerelease() : this.prerelease,
  publishedAt: publishedAt != null ? publishedAt() : this.publishedAt,
  tagName: tagName != null ? tagName() : this.tagName,
  targetCommitish: targetCommitish != null ? targetCommitish() : this.targetCommitish,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease &&
          author == other.author &&
          createdAt == other.createdAt &&
          draft == other.draft &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          name == other.name &&
          prerelease == other.prerelease &&
          publishedAt == other.publishedAt &&
          tagName == other.tagName &&
          targetCommitish == other.targetCommitish &&
          url == other.url; } 
@override int get hashCode { return Object.hash(author, createdAt, draft, htmlUrl, id, name, prerelease, publishedAt, tagName, targetCommitish, url); } 
@override String toString() { return 'WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease(author: $author, createdAt: $createdAt, draft: $draft, htmlUrl: $htmlUrl, id: $id, name: $name, prerelease: $prerelease, publishedAt: $publishedAt, tagName: $tagName, targetCommitish: $targetCommitish, url: $url)'; } 
 }
