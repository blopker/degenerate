// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles {const WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles({this.contentType, this.createdAt, this.downloadUrl, this.id, this.md5 = const Omittable.absent(), this.name, this.sha1 = const Omittable.absent(), this.sha256, this.size, this.state, this.updatedAt, });

factory WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles(
  contentType: json['content_type'] as String?,
  createdAt: json['created_at'] as String?,
  downloadUrl: json['download_url'] as String?,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  md5: json.containsKey('md5') ? Omittable(json['md5'] as String?) : const Omittable.absent(),
  name: json['name'] as String?,
  sha1: json.containsKey('sha1') ? Omittable(json['sha1'] as String?) : const Omittable.absent(),
  sha256: json['sha256'] as String?,
  size: json['size'] != null ? (json['size'] as num).toInt() : null,
  state: json['state'] as String?,
  updatedAt: json['updated_at'] as String?,
); }

final String? contentType;

final String? createdAt;

final String? downloadUrl;

final int? id;

final Omittable<String?> md5;

final String? name;

final Omittable<String?> sha1;

final String? sha256;

final int? size;

final String? state;

final String? updatedAt;

Map<String, dynamic> toJson() { return {
  'content_type': ?contentType,
  'created_at': ?createdAt,
  'download_url': ?downloadUrl,
  'id': ?id,
  if (md5.isPresent) 'md5': md5.value,
  'name': ?name,
  if (sha1.isPresent) 'sha1': sha1.value,
  'sha256': ?sha256,
  'size': ?size,
  'state': ?state,
  'updated_at': ?updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content_type', 'created_at', 'download_url', 'id', 'md5', 'name', 'sha1', 'sha256', 'size', 'state', 'updated_at'}.contains(key)); } 
WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles copyWith({String? Function()? contentType, String? Function()? createdAt, String? Function()? downloadUrl, int? Function()? id, Omittable<String?>? md5, String? Function()? name, Omittable<String?>? sha1, String? Function()? sha256, int? Function()? size, String? Function()? state, String? Function()? updatedAt, }) { return WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles(
  contentType: contentType != null ? contentType() : this.contentType,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  downloadUrl: downloadUrl != null ? downloadUrl() : this.downloadUrl,
  id: id != null ? id() : this.id,
  md5: md5 ?? this.md5,
  name: name != null ? name() : this.name,
  sha1: sha1 ?? this.sha1,
  sha256: sha256 != null ? sha256() : this.sha256,
  size: size != null ? size() : this.size,
  state: state != null ? state() : this.state,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles &&
          contentType == other.contentType &&
          createdAt == other.createdAt &&
          downloadUrl == other.downloadUrl &&
          id == other.id &&
          md5 == other.md5 &&
          name == other.name &&
          sha1 == other.sha1 &&
          sha256 == other.sha256 &&
          size == other.size &&
          state == other.state &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(contentType, createdAt, downloadUrl, id, md5, name, sha1, sha256, size, state, updatedAt); } 
@override String toString() { return 'WebhookRegistryPackageUpdatedRegistryPackagePackageVersionPackageFiles(contentType: $contentType, createdAt: $createdAt, downloadUrl: $downloadUrl, id: $id, md5: $md5, name: $name, sha1: $sha1, sha256: $sha256, size: $size, state: $state, updatedAt: $updatedAt)'; } 
 }
