// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState {const PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState._(this.value);

factory PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState.fromJson(String json) { return switch (json) {
  'active' => active,
  'deleted' => deleted,
  _ => PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState._(json),
}; }

static const PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState active = PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState._('active');

static const PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState deleted = PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState._('deleted');

static const List<PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState> values = [active, deleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUserState($value)'; } 
 }
