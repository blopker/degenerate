// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package_version_metadata_container.dart';import 'package_version_metadata_docker.dart';final class PackageVersionMetadataPackageType {const PackageVersionMetadataPackageType._(this.value);

factory PackageVersionMetadataPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackageVersionMetadataPackageType._(json),
}; }

static const PackageVersionMetadataPackageType npm = PackageVersionMetadataPackageType._('npm');

static const PackageVersionMetadataPackageType maven = PackageVersionMetadataPackageType._('maven');

static const PackageVersionMetadataPackageType rubygems = PackageVersionMetadataPackageType._('rubygems');

static const PackageVersionMetadataPackageType docker = PackageVersionMetadataPackageType._('docker');

static const PackageVersionMetadataPackageType nuget = PackageVersionMetadataPackageType._('nuget');

static const PackageVersionMetadataPackageType container = PackageVersionMetadataPackageType._('container');

static const List<PackageVersionMetadataPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackageVersionMetadataPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackageVersionMetadataPackageType($value)'; } 
 }
final class PackageVersionMetadata {const PackageVersionMetadata({required this.packageType, this.container, this.docker, });

factory PackageVersionMetadata.fromJson(Map<String, dynamic> json) { return PackageVersionMetadata(
  packageType: PackageVersionMetadataPackageType.fromJson(json['package_type'] as String),
  container: json['container'] != null ? PackageVersionMetadataContainer.fromJson(json['container'] as Map<String, dynamic>) : null,
  docker: json['docker'] != null ? PackageVersionMetadataDocker.fromJson(json['docker'] as Map<String, dynamic>) : null,
); }

final PackageVersionMetadataPackageType packageType;

final PackageVersionMetadataContainer? container;

final PackageVersionMetadataDocker? docker;

Map<String, dynamic> toJson() { return {
  'package_type': packageType.toJson(),
  if (container != null) 'container': container?.toJson(),
  if (docker != null) 'docker': docker?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('package_type'); } 
PackageVersionMetadata copyWith({PackageVersionMetadataPackageType? packageType, PackageVersionMetadataContainer Function()? container, PackageVersionMetadataDocker Function()? docker, }) { return PackageVersionMetadata(
  packageType: packageType ?? this.packageType,
  container: container != null ? container() : this.container,
  docker: docker != null ? docker() : this.docker,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PackageVersionMetadata &&
          packageType == other.packageType &&
          container == other.container &&
          docker == other.docker; } 
@override int get hashCode { return Object.hash(packageType, container, docker); } 
@override String toString() { return 'PackageVersionMetadata(packageType: $packageType, container: $container, docker: $docker)'; } 
 }
