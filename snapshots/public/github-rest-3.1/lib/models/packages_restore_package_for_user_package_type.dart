// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackagesRestorePackageForUserPackageType {const PackagesRestorePackageForUserPackageType._(this.value);

factory PackagesRestorePackageForUserPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesRestorePackageForUserPackageType._(json),
}; }

static const PackagesRestorePackageForUserPackageType npm = PackagesRestorePackageForUserPackageType._('npm');

static const PackagesRestorePackageForUserPackageType maven = PackagesRestorePackageForUserPackageType._('maven');

static const PackagesRestorePackageForUserPackageType rubygems = PackagesRestorePackageForUserPackageType._('rubygems');

static const PackagesRestorePackageForUserPackageType docker = PackagesRestorePackageForUserPackageType._('docker');

static const PackagesRestorePackageForUserPackageType nuget = PackagesRestorePackageForUserPackageType._('nuget');

static const PackagesRestorePackageForUserPackageType container = PackagesRestorePackageForUserPackageType._('container');

static const List<PackagesRestorePackageForUserPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesRestorePackageForUserPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesRestorePackageForUserPackageType($value)'; } 
 }
