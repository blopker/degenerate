// GENERATED CODE - DO NOT MODIFY BY HAND

final class PackagesGetPackageVersionForUserPackageType {const PackagesGetPackageVersionForUserPackageType._(this.value);

factory PackagesGetPackageVersionForUserPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesGetPackageVersionForUserPackageType._(json),
}; }

static const PackagesGetPackageVersionForUserPackageType npm = PackagesGetPackageVersionForUserPackageType._('npm');

static const PackagesGetPackageVersionForUserPackageType maven = PackagesGetPackageVersionForUserPackageType._('maven');

static const PackagesGetPackageVersionForUserPackageType rubygems = PackagesGetPackageVersionForUserPackageType._('rubygems');

static const PackagesGetPackageVersionForUserPackageType docker = PackagesGetPackageVersionForUserPackageType._('docker');

static const PackagesGetPackageVersionForUserPackageType nuget = PackagesGetPackageVersionForUserPackageType._('nuget');

static const PackagesGetPackageVersionForUserPackageType container = PackagesGetPackageVersionForUserPackageType._('container');

static const List<PackagesGetPackageVersionForUserPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesGetPackageVersionForUserPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesGetPackageVersionForUserPackageType($value)'; } 
 }
