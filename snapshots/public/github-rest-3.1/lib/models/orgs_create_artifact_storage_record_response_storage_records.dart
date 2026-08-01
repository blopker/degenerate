// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OrgsCreateArtifactStorageRecordResponseStorageRecords {const OrgsCreateArtifactStorageRecordResponseStorageRecords({this.id, this.name, this.digest, this.artifactUrl = const Omittable.absent(), this.registryUrl, this.repository = const Omittable.absent(), this.status, this.createdAt, this.updatedAt, });

factory OrgsCreateArtifactStorageRecordResponseStorageRecords.fromJson(Map<String, dynamic> json) { return OrgsCreateArtifactStorageRecordResponseStorageRecords(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
  digest: json['digest'] as String?,
  artifactUrl: json.containsKey('artifact_url') ? Omittable(json['artifact_url'] as String?) : const Omittable.absent(),
  registryUrl: json['registry_url'] as String?,
  repository: json.containsKey('repository') ? Omittable(json['repository'] as String?) : const Omittable.absent(),
  status: json['status'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
); }

final int? id;

final String? name;

final String? digest;

final Omittable<String?> artifactUrl;

final String? registryUrl;

final Omittable<String?> repository;

final String? status;

final String? createdAt;

final String? updatedAt;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
  'digest': ?digest,
  if (artifactUrl.isPresent) 'artifact_url': artifactUrl.value,
  'registry_url': ?registryUrl,
  if (repository.isPresent) 'repository': repository.value,
  'status': ?status,
  'created_at': ?createdAt,
  'updated_at': ?updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'digest', 'artifact_url', 'registry_url', 'repository', 'status', 'created_at', 'updated_at'}.contains(key)); } 
OrgsCreateArtifactStorageRecordResponseStorageRecords copyWith({int? Function()? id, String? Function()? name, String? Function()? digest, Omittable<String?>? artifactUrl, String? Function()? registryUrl, Omittable<String?>? repository, String? Function()? status, String? Function()? createdAt, String? Function()? updatedAt, }) { return OrgsCreateArtifactStorageRecordResponseStorageRecords(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  digest: digest != null ? digest() : this.digest,
  artifactUrl: artifactUrl ?? this.artifactUrl,
  registryUrl: registryUrl != null ? registryUrl() : this.registryUrl,
  repository: repository ?? this.repository,
  status: status != null ? status() : this.status,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsCreateArtifactStorageRecordResponseStorageRecords &&
          id == other.id &&
          name == other.name &&
          digest == other.digest &&
          artifactUrl == other.artifactUrl &&
          registryUrl == other.registryUrl &&
          repository == other.repository &&
          status == other.status &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(id, name, digest, artifactUrl, registryUrl, repository, status, createdAt, updatedAt); } 
@override String toString() { return 'OrgsCreateArtifactStorageRecordResponseStorageRecords(id: $id, name: $name, digest: $digest, artifactUrl: $artifactUrl, registryUrl: $registryUrl, repository: $repository, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
