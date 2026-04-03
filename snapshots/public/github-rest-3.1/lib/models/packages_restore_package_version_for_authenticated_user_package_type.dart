// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackagesRestorePackageVersionForAuthenticatedUserPackageType {const PackagesRestorePackageVersionForAuthenticatedUserPackageType._(this.value);

factory PackagesRestorePackageVersionForAuthenticatedUserPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesRestorePackageVersionForAuthenticatedUserPackageType._(json),
}; }

static const PackagesRestorePackageVersionForAuthenticatedUserPackageType npm = PackagesRestorePackageVersionForAuthenticatedUserPackageType._('npm');

static const PackagesRestorePackageVersionForAuthenticatedUserPackageType maven = PackagesRestorePackageVersionForAuthenticatedUserPackageType._('maven');

static const PackagesRestorePackageVersionForAuthenticatedUserPackageType rubygems = PackagesRestorePackageVersionForAuthenticatedUserPackageType._('rubygems');

static const PackagesRestorePackageVersionForAuthenticatedUserPackageType docker = PackagesRestorePackageVersionForAuthenticatedUserPackageType._('docker');

static const PackagesRestorePackageVersionForAuthenticatedUserPackageType nuget = PackagesRestorePackageVersionForAuthenticatedUserPackageType._('nuget');

static const PackagesRestorePackageVersionForAuthenticatedUserPackageType container = PackagesRestorePackageVersionForAuthenticatedUserPackageType._('container');

static const List<PackagesRestorePackageVersionForAuthenticatedUserPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesRestorePackageVersionForAuthenticatedUserPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesRestorePackageVersionForAuthenticatedUserPackageType($value)'; } 
 }
