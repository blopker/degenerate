// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates whether or not the incremental authorization feature is supported.
@immutable final class ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus {const ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus._(this.value);

factory ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus.fromJson(String json) { return switch (json) {
  'available' => available,
  'unavailable' => unavailable,
  _ => ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus._(json),
}; }

static const ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus available = ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus._('available');

static const ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus unavailable = ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus._('unavailable');

static const List<ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus> values = [available, unavailable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus($value)'; } 
 }
/// 
@immutable final class ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization {const ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization({required this.status});

factory ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization.fromJson(Map<String, dynamic> json) { return ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization(
  status: ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus.fromJson(json['status'] as String),
); }

/// Indicates whether or not the incremental authorization feature is supported.
final ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus status;

Map<String, dynamic> toJson() { return {
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization copyWith({ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorizationStatus? status}) { return ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization(
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization(status: $status)'; } 
 }
