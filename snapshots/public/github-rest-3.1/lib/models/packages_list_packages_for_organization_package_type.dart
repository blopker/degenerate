// GENERATED CODE - DO NOT MODIFY BY HAND

final class PackagesListPackagesForOrganizationPackageType {const PackagesListPackagesForOrganizationPackageType._(this.value);

factory PackagesListPackagesForOrganizationPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesListPackagesForOrganizationPackageType._(json),
}; }

static const PackagesListPackagesForOrganizationPackageType npm = PackagesListPackagesForOrganizationPackageType._('npm');

static const PackagesListPackagesForOrganizationPackageType maven = PackagesListPackagesForOrganizationPackageType._('maven');

static const PackagesListPackagesForOrganizationPackageType rubygems = PackagesListPackagesForOrganizationPackageType._('rubygems');

static const PackagesListPackagesForOrganizationPackageType docker = PackagesListPackagesForOrganizationPackageType._('docker');

static const PackagesListPackagesForOrganizationPackageType nuget = PackagesListPackagesForOrganizationPackageType._('nuget');

static const PackagesListPackagesForOrganizationPackageType container = PackagesListPackagesForOrganizationPackageType._('container');

static const List<PackagesListPackagesForOrganizationPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForOrganizationPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesListPackagesForOrganizationPackageType($value)'; } 
 }
