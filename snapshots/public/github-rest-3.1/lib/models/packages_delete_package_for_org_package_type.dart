// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackagesDeletePackageForOrgPackageType {const PackagesDeletePackageForOrgPackageType._(this.value);

factory PackagesDeletePackageForOrgPackageType.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'maven' => maven,
  'rubygems' => rubygems,
  'docker' => docker,
  'nuget' => nuget,
  'container' => container,
  _ => PackagesDeletePackageForOrgPackageType._(json),
}; }

static const PackagesDeletePackageForOrgPackageType npm = PackagesDeletePackageForOrgPackageType._('npm');

static const PackagesDeletePackageForOrgPackageType maven = PackagesDeletePackageForOrgPackageType._('maven');

static const PackagesDeletePackageForOrgPackageType rubygems = PackagesDeletePackageForOrgPackageType._('rubygems');

static const PackagesDeletePackageForOrgPackageType docker = PackagesDeletePackageForOrgPackageType._('docker');

static const PackagesDeletePackageForOrgPackageType nuget = PackagesDeletePackageForOrgPackageType._('nuget');

static const PackagesDeletePackageForOrgPackageType container = PackagesDeletePackageForOrgPackageType._('container');

static const List<PackagesDeletePackageForOrgPackageType> values = [npm, maven, rubygems, docker, nuget, container];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesDeletePackageForOrgPackageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesDeletePackageForOrgPackageType($value)'; } 
 }
