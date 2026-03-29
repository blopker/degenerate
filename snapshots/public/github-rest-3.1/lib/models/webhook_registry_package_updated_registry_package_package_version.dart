// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_registry_package_updated_registry_package_package_version_author.dart';import 'webhook_registry_package_updated_registry_package_package_version_docker_metadata.dart';import 'webhook_registry_package_updated_registry_package_package_version_package_files.dart';import 'webhook_registry_package_updated_registry_package_package_version_release.dart';import 'webhook_rubygems_metadata.dart';final class WebhookRegistryPackageUpdatedRegistryPackagePackageVersion {const WebhookRegistryPackageUpdatedRegistryPackagePackageVersion({required this.author, required this.body, required this.bodyHtml, required this.createdAt, required this.description, this.dockerMetadata, this.draft, required this.htmlUrl, required this.id, required this.installationCommand, this.manifest, required this.metadata, required this.name, required this.packageFiles, required this.packageUrl, this.prerelease, this.release, this.rubygemsMetadata, required this.summary, this.tagName, required this.targetCommitish, required this.targetOid, required this.updatedAt, required this.version, });

factory WebhookRegistryPackageUpdatedRegistryPackagePackageVersion.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackageUpdatedRegistryPackagePackageVersion(
  author: WebhookRegistryPackageUpdatedRegistryPackagePackageVersionAuthor.fromJson(json['author'] as Map<String, dynamic>),
  body: json['body'] as String,
  bodyHtml: json['body_html'] as String,
  createdAt: json['created_at'] as String,
  description: json['description'] as String,
  dockerMetadata: (json['docker_metadata'] as List<dynamic>?)?.map((e) => WebhookRegistryPackageUpdatedRegistryPackagePackageVersionDockerMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  draft: json['draft'] as bool?,
  htmlUrl: json['html_url'] as String,
  id: (json['id'] as num).toInt(),
  installationCommand: json['installation_command'] as String,
  manifest: json['manifest'] as String?,
  metadata: (json['metadata'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  name: json['name'] as String,
  packageFiles: (json['package_files'] as List<dynamic>).map((e) => WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles.fromJson(e as Map<String, dynamic>)).toList(),
  packageUrl: json['package_url'] as String,
  prerelease: json['prerelease'] as bool?,
  release: json['release'] != null ? WebhookRegistryPackageUpdatedRegistryPackagePackageVersionRelease.fromJson(json['release'] as Map<String, dynamic>) : null,
  rubygemsMetadata: (json['rubygems_metadata'] as List<dynamic>?)?.map((e) => WebhookRubygemsMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  summary: json['summary'] as String,
  tagName: json['tag_name'] as String?,
  targetCommitish: json['target_commitish'] as String,
  targetOid: json['target_oid'] as String,
  updatedAt: json['updated_at'] as String,
  version: json['version'] as String,
); }

final WebhookRegistryPackageUpdatedRegistryPackagePackageVersionAuthor author;

final String body;

final String bodyHtml;

final String createdAt;

final String description;

final List<WebhookRegistryPackageUpdatedRegistryPackagePackageVersionDockerMetadata?>? dockerMetadata;

final bool? draft;

final String htmlUrl;

final int id;

final String installationCommand;

final String? manifest;

final List<Map<String,dynamic>> metadata;

final String name;

final List<WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles> packageFiles;

final String packageUrl;

final bool? prerelease;

final WebhookRegistryPackageUpdatedRegistryPackagePackageVersionRelease? release;

final List<WebhookRubygemsMetadata>? rubygemsMetadata;

final String summary;

final String? tagName;

final String targetCommitish;

final String targetOid;

final String updatedAt;

final String version;

Map<String, dynamic> toJson() { return {
  'author': author.toJson(),
  'body': body,
  'body_html': bodyHtml,
  'created_at': createdAt,
  'description': description,
  if (dockerMetadata != null) 'docker_metadata': dockerMetadata?.map((e) => e?.toJson()).toList(),
  'draft': ?draft,
  'html_url': htmlUrl,
  'id': id,
  'installation_command': installationCommand,
  'manifest': ?manifest,
  'metadata': metadata.map((e) => e).toList(),
  'name': name,
  'package_files': packageFiles.map((e) => e.toJson()).toList(),
  'package_url': packageUrl,
  'prerelease': ?prerelease,
  if (release != null) 'release': release?.toJson(),
  if (rubygemsMetadata != null) 'rubygems_metadata': rubygemsMetadata?.map((e) => e.toJson()).toList(),
  'summary': summary,
  'tag_name': ?tagName,
  'target_commitish': targetCommitish,
  'target_oid': targetOid,
  'updated_at': updatedAt,
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('author') &&
      json.containsKey('body') && json['body'] is String &&
      json.containsKey('body_html') && json['body_html'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('installation_command') && json['installation_command'] is String &&
      json.containsKey('metadata') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('package_files') &&
      json.containsKey('package_url') && json['package_url'] is String &&
      json.containsKey('summary') && json['summary'] is String &&
      json.containsKey('target_commitish') && json['target_commitish'] is String &&
      json.containsKey('target_oid') && json['target_oid'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('version') && json['version'] is String; } 
WebhookRegistryPackageUpdatedRegistryPackagePackageVersion copyWith({WebhookRegistryPackageUpdatedRegistryPackagePackageVersionAuthor? author, String? body, String? bodyHtml, String? createdAt, String? description, List<WebhookRegistryPackageUpdatedRegistryPackagePackageVersionDockerMetadata> Function()? dockerMetadata, bool Function()? draft, String? htmlUrl, int? id, String? installationCommand, String Function()? manifest, List<Map<String,dynamic>>? metadata, String? name, List<WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles>? packageFiles, String? packageUrl, bool Function()? prerelease, WebhookRegistryPackageUpdatedRegistryPackagePackageVersionRelease Function()? release, List<WebhookRubygemsMetadata> Function()? rubygemsMetadata, String? summary, String Function()? tagName, String? targetCommitish, String? targetOid, String? updatedAt, String? version, }) { return WebhookRegistryPackageUpdatedRegistryPackagePackageVersion(
  author: author ?? this.author,
  body: body ?? this.body,
  bodyHtml: bodyHtml ?? this.bodyHtml,
  createdAt: createdAt ?? this.createdAt,
  description: description ?? this.description,
  dockerMetadata: dockerMetadata != null ? dockerMetadata() : this.dockerMetadata,
  draft: draft != null ? draft() : this.draft,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  installationCommand: installationCommand ?? this.installationCommand,
  manifest: manifest != null ? manifest() : this.manifest,
  metadata: metadata ?? this.metadata,
  name: name ?? this.name,
  packageFiles: packageFiles ?? this.packageFiles,
  packageUrl: packageUrl ?? this.packageUrl,
  prerelease: prerelease != null ? prerelease() : this.prerelease,
  release: release != null ? release() : this.release,
  rubygemsMetadata: rubygemsMetadata != null ? rubygemsMetadata() : this.rubygemsMetadata,
  summary: summary ?? this.summary,
  tagName: tagName != null ? tagName() : this.tagName,
  targetCommitish: targetCommitish ?? this.targetCommitish,
  targetOid: targetOid ?? this.targetOid,
  updatedAt: updatedAt ?? this.updatedAt,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackageUpdatedRegistryPackagePackageVersion &&
          author == other.author &&
          body == other.body &&
          bodyHtml == other.bodyHtml &&
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
@override int get hashCode { return Object.hashAll([author, body, bodyHtml, createdAt, description, Object.hashAll(dockerMetadata ?? const []), draft, htmlUrl, id, installationCommand, manifest, Object.hashAll(metadata), name, Object.hashAll(packageFiles), packageUrl, prerelease, release, Object.hashAll(rubygemsMetadata ?? const []), summary, tagName, targetCommitish, targetOid, updatedAt, version]); } 
@override String toString() { return 'WebhookRegistryPackageUpdatedRegistryPackagePackageVersion(author: $author, body: $body, bodyHtml: $bodyHtml, createdAt: $createdAt, description: $description, dockerMetadata: $dockerMetadata, draft: $draft, htmlUrl: $htmlUrl, id: $id, installationCommand: $installationCommand, manifest: $manifest, metadata: $metadata, name: $name, packageFiles: $packageFiles, packageUrl: $packageUrl, prerelease: $prerelease, release: $release, rubygemsMetadata: $rubygemsMetadata, summary: $summary, tagName: $tagName, targetCommitish: $targetCommitish, targetOid: $targetOid, updatedAt: $updatedAt, version: $version)'; } 
 }
