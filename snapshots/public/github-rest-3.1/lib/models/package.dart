// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'minimal_repository.dart';import 'simple_user.dart';@immutable final class PackagePackageType {const PackagePackageType._(this.value);

factory PackagePackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagePackageType._(json),
}; }

static const PackagePackageType npm = PackagePackageType._('npm');

static const PackagePackageType maven = PackagePackageType._('maven');

static const PackagePackageType rubygems = PackagePackageType._('rubygems');

static const PackagePackageType docker = PackagePackageType._('docker');

static const PackagePackageType nuget = PackagePackageType._('nuget');

static const PackagePackageType container = PackagePackageType._('container');

static const List<PackagePackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagePackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagePackageType($value)'; } 
 }
@immutable final class PackageVisibility {const PackageVisibility._(this.value);

factory PackageVisibility.fromJson(String json) { return switch (json) {
  'private' => private,
  'public' => public,
  _ => PackageVisibility._(json),
}; }

static const PackageVisibility private = PackageVisibility._('private');

static const PackageVisibility public = PackageVisibility._('public');

static const List<PackageVisibility> values = [private, public];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackageVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackageVisibility($value)'; } 
 }
/// A software package
@immutable final class Package {const Package({required this.id, required this.name, required this.packageType, required this.url, required this.htmlUrl, required this.versionCount, required this.visibility, required this.createdAt, required this.updatedAt, this.owner, this.repository, });

factory Package.fromJson(Map<String, dynamic> json) { return Package(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  packageType: PackagePackageType.fromJson(json['package_type'] as String),
  url: json['url'] as String,
  htmlUrl: json['html_url'] as String,
  versionCount: (json['version_count'] as num).toInt(),
  visibility: PackageVisibility.fromJson(json['visibility'] as String),
  owner: json['owner'] != null ? SimpleUser.fromJson(json['owner'] as Map<String, dynamic>) : null,
  repository: json['repository'] != null ? MinimalRepository.fromJson(json['repository'] as Map<String, dynamic>) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// Unique identifier of the package.
final int id;

/// The name of the package.
final String name;

final PackagePackageType packageType;

final String url;

final String htmlUrl;

/// The number of versions of the package.
final int versionCount;

final PackageVisibility visibility;

final SimpleUser? owner;

final MinimalRepository? repository;

final DateTime createdAt;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'package_type': packageType.toJson(),
  'url': url,
  'html_url': htmlUrl,
  'version_count': versionCount,
  'visibility': visibility.toJson(),
  if (owner != null) 'owner': owner?.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('package_type') &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('version_count') && json['version_count'] is num &&
      json.containsKey('visibility') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
Package copyWith({int? id, String? name, PackagePackageType? packageType, String? url, String? htmlUrl, int? versionCount, PackageVisibility? visibility, SimpleUser? Function()? owner, MinimalRepository? Function()? repository, DateTime? createdAt, DateTime? updatedAt, }) { return Package(
  id: id ?? this.id,
  name: name ?? this.name,
  packageType: packageType ?? this.packageType,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  versionCount: versionCount ?? this.versionCount,
  visibility: visibility ?? this.visibility,
  owner: owner != null ? owner() : this.owner,
  repository: repository != null ? repository() : this.repository,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Package &&
          id == other.id &&
          name == other.name &&
          packageType == other.packageType &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          versionCount == other.versionCount &&
          visibility == other.visibility &&
          owner == other.owner &&
          repository == other.repository &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(id, name, packageType, url, htmlUrl, versionCount, visibility, owner, repository, createdAt, updatedAt); } 
@override String toString() { return 'Package(id: $id, name: $name, packageType: $packageType, url: $url, htmlUrl: $htmlUrl, versionCount: $versionCount, visibility: $visibility, owner: $owner, repository: $repository, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
