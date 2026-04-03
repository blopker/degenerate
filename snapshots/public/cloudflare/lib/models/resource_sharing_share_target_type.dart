// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ResourceSharingShareTargetType {const ResourceSharingShareTargetType._(this.value);

factory ResourceSharingShareTargetType.fromJson(String json) { return switch (json) {
  'account' => account,
  'organization' => organization,
  _ => ResourceSharingShareTargetType._(json),
}; }

static const ResourceSharingShareTargetType account = ResourceSharingShareTargetType._('account');

static const ResourceSharingShareTargetType organization = ResourceSharingShareTargetType._('organization');

static const List<ResourceSharingShareTargetType> values = [account, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceSharingShareTargetType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResourceSharingShareTargetType($value)'; } 
 }
