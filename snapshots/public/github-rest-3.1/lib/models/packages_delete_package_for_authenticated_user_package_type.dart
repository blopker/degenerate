// GENERATED CODE - DO NOT MODIFY BY HAND

final class PackagesDeletePackageForAuthenticatedUserPackageType {const PackagesDeletePackageForAuthenticatedUserPackageType._(this.value);

factory PackagesDeletePackageForAuthenticatedUserPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesDeletePackageForAuthenticatedUserPackageType._(json),
}; }

static const PackagesDeletePackageForAuthenticatedUserPackageType npm = PackagesDeletePackageForAuthenticatedUserPackageType._('npm');

static const PackagesDeletePackageForAuthenticatedUserPackageType maven = PackagesDeletePackageForAuthenticatedUserPackageType._('maven');

static const PackagesDeletePackageForAuthenticatedUserPackageType rubygems = PackagesDeletePackageForAuthenticatedUserPackageType._('rubygems');

static const PackagesDeletePackageForAuthenticatedUserPackageType docker = PackagesDeletePackageForAuthenticatedUserPackageType._('docker');

static const PackagesDeletePackageForAuthenticatedUserPackageType nuget = PackagesDeletePackageForAuthenticatedUserPackageType._('nuget');

static const PackagesDeletePackageForAuthenticatedUserPackageType container = PackagesDeletePackageForAuthenticatedUserPackageType._('container');

static const List<PackagesDeletePackageForAuthenticatedUserPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesDeletePackageForAuthenticatedUserPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesDeletePackageForAuthenticatedUserPackageType($value)'; } 
 }
