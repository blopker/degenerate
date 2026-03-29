// GENERATED CODE - DO NOT MODIFY BY HAND

final class PackagesRestorePackageForOrgPackageType {const PackagesRestorePackageForOrgPackageType._(this.value);

factory PackagesRestorePackageForOrgPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesRestorePackageForOrgPackageType._(json),
}; }

static const PackagesRestorePackageForOrgPackageType npm = PackagesRestorePackageForOrgPackageType._('npm');

static const PackagesRestorePackageForOrgPackageType maven = PackagesRestorePackageForOrgPackageType._('maven');

static const PackagesRestorePackageForOrgPackageType rubygems = PackagesRestorePackageForOrgPackageType._('rubygems');

static const PackagesRestorePackageForOrgPackageType docker = PackagesRestorePackageForOrgPackageType._('docker');

static const PackagesRestorePackageForOrgPackageType nuget = PackagesRestorePackageForOrgPackageType._('nuget');

static const PackagesRestorePackageForOrgPackageType container = PackagesRestorePackageForOrgPackageType._('container');

static const List<PackagesRestorePackageForOrgPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesRestorePackageForOrgPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesRestorePackageForOrgPackageType($value)'; } 
 }
