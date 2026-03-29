// GENERATED CODE - DO NOT MODIFY BY HAND

final class PackagesRestorePackageVersionForOrgPackageType {const PackagesRestorePackageVersionForOrgPackageType._(this.value);

factory PackagesRestorePackageVersionForOrgPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesRestorePackageVersionForOrgPackageType._(json),
}; }

static const PackagesRestorePackageVersionForOrgPackageType npm = PackagesRestorePackageVersionForOrgPackageType._('npm');

static const PackagesRestorePackageVersionForOrgPackageType maven = PackagesRestorePackageVersionForOrgPackageType._('maven');

static const PackagesRestorePackageVersionForOrgPackageType rubygems = PackagesRestorePackageVersionForOrgPackageType._('rubygems');

static const PackagesRestorePackageVersionForOrgPackageType docker = PackagesRestorePackageVersionForOrgPackageType._('docker');

static const PackagesRestorePackageVersionForOrgPackageType nuget = PackagesRestorePackageVersionForOrgPackageType._('nuget');

static const PackagesRestorePackageVersionForOrgPackageType container = PackagesRestorePackageVersionForOrgPackageType._('container');

static const List<PackagesRestorePackageVersionForOrgPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesRestorePackageVersionForOrgPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesRestorePackageVersionForOrgPackageType($value)'; } 
 }
