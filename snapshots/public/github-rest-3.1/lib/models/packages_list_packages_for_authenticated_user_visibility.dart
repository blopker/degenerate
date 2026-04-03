// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackagesListPackagesForAuthenticatedUserVisibility {const PackagesListPackagesForAuthenticatedUserVisibility._(this.value);

factory PackagesListPackagesForAuthenticatedUserVisibility.fromJson(String json) { return switch (json) {
  'public' => public,
  'private' => private,
  'internal' => internal,
  _ => PackagesListPackagesForAuthenticatedUserVisibility._(json),
}; }

static const PackagesListPackagesForAuthenticatedUserVisibility public = PackagesListPackagesForAuthenticatedUserVisibility._('public');

static const PackagesListPackagesForAuthenticatedUserVisibility private = PackagesListPackagesForAuthenticatedUserVisibility._('private');

static const PackagesListPackagesForAuthenticatedUserVisibility internal = PackagesListPackagesForAuthenticatedUserVisibility._('internal');

static const List<PackagesListPackagesForAuthenticatedUserVisibility> values = [public, private, internal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForAuthenticatedUserVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PackagesListPackagesForAuthenticatedUserVisibility($value)'; } 
 }
