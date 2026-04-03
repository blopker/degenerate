// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_registry_package_published_registry_package_package_version_author.dart';import 'webhook_registry_package_published_registry_package_package_version_body.dart';import 'webhook_registry_package_published_registry_package_package_version_container_metadata.dart';import 'webhook_registry_package_published_registry_package_package_version_docker_metadata.dart';import 'webhook_registry_package_published_registry_package_package_version_npm_metadata.dart';import 'webhook_registry_package_published_registry_package_package_version_nuget_metadata.dart';import 'webhook_registry_package_published_registry_package_package_version_package_files.dart';import 'webhook_registry_package_published_registry_package_package_version_release.dart';import 'webhook_rubygems_metadata.dart';@immutable final class WebhookRegistryPackagePublishedRegistryPackagePackageVersion {const WebhookRegistryPackagePublishedRegistryPackagePackageVersion({required this.description, required this.htmlUrl, required this.id, required this.installationCommand, required this.metadata, required this.name, required this.packageFiles, required this.packageUrl, required this.summary, required this.version, this.author, this.body, this.bodyHtml, this.containerMetadata, this.createdAt, this.dockerMetadata, this.draft, this.manifest, this.npmMetadata, this.nugetMetadata, this.prerelease, this.release, this.rubygemsMetadata, this.tagName, this.targetCommitish, this.targetOid, this.updatedAt, });

factory WebhookRegistryPackagePublishedRegistryPackagePackageVersion.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersion(
  author: json['author'] != null ? WebhookRegistryPackagePublishedRegistryPackagePackageVersionAuthor.fromJson(json['author'] as Map<String, dynamic>) : null,
  body: json['body'] != null ? OneOf2.parse(json['body'], fromA: (v) => v as String, fromB: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),) : null,
  bodyHtml: json['body_html'] as String?,
  containerMetadata: json['container_metadata'] != null ? WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadata.fromJson(json['container_metadata'] as Map<String, dynamic>) : null,
  createdAt: json['created_at'] as String?,
  description: json['description'] as String,
  dockerMetadata: (json['docker_metadata'] as List<dynamic>?)?.map((e) => WebhookRegistryPackagePublishedRegistryPackagePackageVersionDockerMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  draft: json['draft'] as bool?,
  htmlUrl: json['html_url'] as String,
  id: (json['id'] as num).toInt(),
  installationCommand: json['installation_command'] as String,
  manifest: json['manifest'] as String?,
  metadata: (json['metadata'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  name: json['name'] as String,
  npmMetadata: json['npm_metadata'] != null ? WebhookRegistryPackagePublishedRegistryPackagePackageVersionNpmMetadata.fromJson(json['npm_metadata'] as Map<String, dynamic>) : null,
  nugetMetadata: (json['nuget_metadata'] as List<dynamic>?)?.map((e) => WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  packageFiles: (json['package_files'] as List<dynamic>).map((e) => WebhookRegistryPackagePublishedRegistryPackagePackageVersionPackageFiles.fromJson(e as Map<String, dynamic>)).toList(),
  packageUrl: json['package_url'] as String,
  prerelease: json['prerelease'] as bool?,
  release: json['release'] != null ? WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease.fromJson(json['release'] as Map<String, dynamic>) : null,
  rubygemsMetadata: (json['rubygems_metadata'] as List<dynamic>?)?.map((e) => WebhookRubygemsMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  summary: json['summary'] as String,
  tagName: json['tag_name'] as String?,
  targetCommitish: json['target_commitish'] as String?,
  targetOid: json['target_oid'] as String?,
  updatedAt: json['updated_at'] as String?,
  version: json['version'] as String,
); }

final WebhookRegistryPackagePublishedRegistryPackagePackageVersionAuthor? author;

final WebhookRegistryPackagePublishedRegistryPackagePackageVersionBody? body;

final String? bodyHtml;

final WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadata? containerMetadata;

final String? createdAt;

final String description;

final List<WebhookRegistryPackagePublishedRegistryPackagePackageVersionDockerMetadata>? dockerMetadata;

final bool? draft;

final String htmlUrl;

final int id;

final String installationCommand;

final String? manifest;

final List<Map<String,dynamic>> metadata;

final String name;

final WebhookRegistryPackagePublishedRegistryPackagePackageVersionNpmMetadata? npmMetadata;

final List<WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata>? nugetMetadata;

final List<WebhookRegistryPackagePublishedRegistryPackagePackageVersionPackageFiles> packageFiles;

final String packageUrl;

final bool? prerelease;

final WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease? release;

final List<WebhookRubygemsMetadata>? rubygemsMetadata;

final String summary;

final String? tagName;

final String? targetCommitish;

final String? targetOid;

final String? updatedAt;

final String version;

Map<String, dynamic> toJson() { return {
  if (author != null) 'author': author?.toJson(),
  if (body != null) 'body': body?.toJson(),
  'body_html': ?bodyHtml,
  if (containerMetadata != null) 'container_metadata': containerMetadata?.toJson(),
  'created_at': ?createdAt,
  'description': description,
  if (dockerMetadata != null) 'docker_metadata': dockerMetadata?.map((e) => e.toJson()).toList(),
  'draft': ?draft,
  'html_url': htmlUrl,
  'id': id,
  'installation_command': installationCommand,
  'manifest': ?manifest,
  'metadata': metadata.map((e) => e).toList(),
  'name': name,
  if (npmMetadata != null) 'npm_metadata': npmMetadata?.toJson(),
  if (nugetMetadata != null) 'nuget_metadata': nugetMetadata?.map((e) => e.toJson()).toList(),
  'package_files': packageFiles.map((e) => e.toJson()).toList(),
  'package_url': packageUrl,
  'prerelease': ?prerelease,
  if (release != null) 'release': release?.toJson(),
  if (rubygemsMetadata != null) 'rubygems_metadata': rubygemsMetadata?.map((e) => e.toJson()).toList(),
  'summary': summary,
  'tag_name': ?tagName,
  'target_commitish': ?targetCommitish,
  'target_oid': ?targetOid,
  'updated_at': ?updatedAt,
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('installation_command') && json['installation_command'] is String &&
      json.containsKey('metadata') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('package_files') &&
      json.containsKey('package_url') && json['package_url'] is String &&
      json.containsKey('summary') && json['summary'] is String &&
      json.containsKey('version') && json['version'] is String; } 
WebhookRegistryPackagePublishedRegistryPackagePackageVersion copyWith({WebhookRegistryPackagePublishedRegistryPackagePackageVersionAuthor Function()? author, WebhookRegistryPackagePublishedRegistryPackagePackageVersionBody Function()? body, String Function()? bodyHtml, WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadata Function()? containerMetadata, String Function()? createdAt, String? description, List<WebhookRegistryPackagePublishedRegistryPackagePackageVersionDockerMetadata> Function()? dockerMetadata, bool Function()? draft, String? htmlUrl, int? id, String? installationCommand, String Function()? manifest, List<Map<String,dynamic>>? metadata, String? name, WebhookRegistryPackagePublishedRegistryPackagePackageVersionNpmMetadata? Function()? npmMetadata, List<WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata>? Function()? nugetMetadata, List<WebhookRegistryPackagePublishedRegistryPackagePackageVersionPackageFiles>? packageFiles, String? packageUrl, bool Function()? prerelease, WebhookRegistryPackagePublishedRegistryPackagePackageVersionRelease Function()? release, List<WebhookRubygemsMetadata> Function()? rubygemsMetadata, String? summary, String Function()? tagName, String Function()? targetCommitish, String Function()? targetOid, String Function()? updatedAt, String? version, }) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersion(
  author: author != null ? author() : this.author,
  body: body != null ? body() : this.body,
  bodyHtml: bodyHtml != null ? bodyHtml() : this.bodyHtml,
  containerMetadata: containerMetadata != null ? containerMetadata() : this.containerMetadata,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description ?? this.description,
  dockerMetadata: dockerMetadata != null ? dockerMetadata() : this.dockerMetadata,
  draft: draft != null ? draft() : this.draft,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  installationCommand: installationCommand ?? this.installationCommand,
  manifest: manifest != null ? manifest() : this.manifest,
  metadata: metadata ?? this.metadata,
  name: name ?? this.name,
  npmMetadata: npmMetadata != null ? npmMetadata() : this.npmMetadata,
  nugetMetadata: nugetMetadata != null ? nugetMetadata() : this.nugetMetadata,
  packageFiles: packageFiles ?? this.packageFiles,
  packageUrl: packageUrl ?? this.packageUrl,
  prerelease: prerelease != null ? prerelease() : this.prerelease,
  release: release != null ? release() : this.release,
  rubygemsMetadata: rubygemsMetadata != null ? rubygemsMetadata() : this.rubygemsMetadata,
  summary: summary ?? this.summary,
  tagName: tagName != null ? tagName() : this.tagName,
  targetCommitish: targetCommitish != null ? targetCommitish() : this.targetCommitish,
  targetOid: targetOid != null ? targetOid() : this.targetOid,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackagePublishedRegistryPackagePackageVersion &&
          author == other.author &&
          body == other.body &&
          bodyHtml == other.bodyHtml &&
          containerMetadata == other.containerMetadata &&
          createdAt == other.createdAt &&
          description == other.description &&
          listEquals(dockerMetadata, other.dockerMetadata) &&
          draft == other.draft &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          installationCommand == other.installationCommand &&
          manifest == other.manifest &&
          listEquals(metadata, other.metadata) &&
          name == other.name &&
          npmMetadata == other.npmMetadata &&
          listEquals(nugetMetadata, other.nugetMetadata) &&
          listEquals(packageFiles, other.packageFiles) &&
          packageUrl == other.packageUrl &&
          prerelease == other.prerelease &&
          release == other.release &&
          listEquals(rubygemsMetadata, other.rubygemsMetadata) &&
          summary == other.summary &&
          tagName == other.tagName &&
          targetCommitish == other.targetCommitish &&
          targetOid == other.targetOid &&
          updatedAt == other.updatedAt &&
          version == other.version; } 
@override int get hashCode { return Object.hashAll([author, body, bodyHtml, containerMetadata, createdAt, description, Object.hashAll(dockerMetadata ?? const []), draft, htmlUrl, id, installationCommand, manifest, Object.hashAll(metadata), name, npmMetadata, Object.hashAll(nugetMetadata ?? const []), Object.hashAll(packageFiles), packageUrl, prerelease, release, Object.hashAll(rubygemsMetadata ?? const []), summary, tagName, targetCommitish, targetOid, updatedAt, version]); } 
@override String toString() { return 'WebhookRegistryPackagePublishedRegistryPackagePackageVersion(author: $author, body: $body, bodyHtml: $bodyHtml, containerMetadata: $containerMetadata, createdAt: $createdAt, description: $description, dockerMetadata: $dockerMetadata, draft: $draft, htmlUrl: $htmlUrl, id: $id, installationCommand: $installationCommand, manifest: $manifest, metadata: $metadata, name: $name, npmMetadata: $npmMetadata, nugetMetadata: $nugetMetadata, packageFiles: $packageFiles, packageUrl: $packageUrl, prerelease: $prerelease, release: $release, rubygemsMetadata: $rubygemsMetadata, summary: $summary, tagName: $tagName, targetCommitish: $targetCommitish, targetOid: $targetOid, updatedAt: $updatedAt, version: $version)'; } 
 }
