// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackagesDeletePackageVersionForUserPackageType {const PackagesDeletePackageVersionForUserPackageType._(this.value);

factory PackagesDeletePackageVersionForUserPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesDeletePackageVersionForUserPackageType._(json),
}; }

static const PackagesDeletePackageVersionForUserPackageType npm = PackagesDeletePackageVersionForUserPackageType._('npm');

static const PackagesDeletePackageVersionForUserPackageType maven = PackagesDeletePackageVersionForUserPackageType._('maven');

static const PackagesDeletePackageVersionForUserPackageType rubygems = PackagesDeletePackageVersionForUserPackageType._('rubygems');

static const PackagesDeletePackageVersionForUserPackageType docker = PackagesDeletePackageVersionForUserPackageType._('docker');

static const PackagesDeletePackageVersionForUserPackageType nuget = PackagesDeletePackageVersionForUserPackageType._('nuget');

static const PackagesDeletePackageVersionForUserPackageType container = PackagesDeletePackageVersionForUserPackageType._('container');

static const List<PackagesDeletePackageVersionForUserPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesDeletePackageVersionForUserPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesDeletePackageVersionForUserPackageType($value)'; } 
 }
