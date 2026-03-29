// GENERATED CODE - DO NOT MODIFY BY HAND

final class PackagesGetPackageForOrganizationPackageType {const PackagesGetPackageForOrganizationPackageType._(this.value);

factory PackagesGetPackageForOrganizationPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesGetPackageForOrganizationPackageType._(json),
}; }

static const PackagesGetPackageForOrganizationPackageType npm = PackagesGetPackageForOrganizationPackageType._('npm');

static const PackagesGetPackageForOrganizationPackageType maven = PackagesGetPackageForOrganizationPackageType._('maven');

static const PackagesGetPackageForOrganizationPackageType rubygems = PackagesGetPackageForOrganizationPackageType._('rubygems');

static const PackagesGetPackageForOrganizationPackageType docker = PackagesGetPackageForOrganizationPackageType._('docker');

static const PackagesGetPackageForOrganizationPackageType nuget = PackagesGetPackageForOrganizationPackageType._('nuget');

static const PackagesGetPackageForOrganizationPackageType container = PackagesGetPackageForOrganizationPackageType._('container');

static const List<PackagesGetPackageForOrganizationPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesGetPackageForOrganizationPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesGetPackageForOrganizationPackageType($value)'; } 
 }
