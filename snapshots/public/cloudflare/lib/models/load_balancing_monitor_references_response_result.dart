// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class LoadBalancingMonitorReferencesResponseResultReferenceType {const LoadBalancingMonitorReferencesResponseResultReferenceType._(this.value);

factory LoadBalancingMonitorReferencesResponseResultReferenceType.fromJson(String json) { return switch (json) {
  '*' => $empty,
  'referral' => referral,
  'referrer' => referrer,
  _ => LoadBalancingMonitorReferencesResponseResultReferenceType._(json),
}; }

static const LoadBalancingMonitorReferencesResponseResultReferenceType $empty = LoadBalancingMonitorReferencesResponseResultReferenceType._('*');

static const LoadBalancingMonitorReferencesResponseResultReferenceType referral = LoadBalancingMonitorReferencesResponseResultReferenceType._('referral');

static const LoadBalancingMonitorReferencesResponseResultReferenceType referrer = LoadBalancingMonitorReferencesResponseResultReferenceType._('referrer');

static const List<LoadBalancingMonitorReferencesResponseResultReferenceType> values = [$empty, referral, referrer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingMonitorReferencesResponseResultReferenceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingMonitorReferencesResponseResultReferenceType($value)'; } 
 }
@immutable final class LoadBalancingMonitorReferencesResponseResult {const LoadBalancingMonitorReferencesResponseResult({this.referenceType, this.resourceId, this.resourceName, this.resourceType, });

factory LoadBalancingMonitorReferencesResponseResult.fromJson(Map<String, dynamic> json) { return LoadBalancingMonitorReferencesResponseResult(
  referenceType: json['reference_type'] != null ? LoadBalancingMonitorReferencesResponseResultReferenceType.fromJson(json['reference_type'] as String) : null,
  resourceId: json['resource_id'] as String?,
  resourceName: json['resource_name'] as String?,
  resourceType: json['resource_type'] as String?,
); }

final LoadBalancingMonitorReferencesResponseResultReferenceType? referenceType;

final String? resourceId;

final String? resourceName;

final String? resourceType;

Map<String, dynamic> toJson() { return {
  if (referenceType != null) 'reference_type': referenceType?.toJson(),
  'resource_id': ?resourceId,
  'resource_name': ?resourceName,
  'resource_type': ?resourceType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference_type', 'resource_id', 'resource_name', 'resource_type'}.contains(key)); } 
LoadBalancingMonitorReferencesResponseResult copyWith({LoadBalancingMonitorReferencesResponseResultReferenceType Function()? referenceType, String Function()? resourceId, String Function()? resourceName, String Function()? resourceType, }) { return LoadBalancingMonitorReferencesResponseResult(
  referenceType: referenceType != null ? referenceType() : this.referenceType,
  resourceId: resourceId != null ? resourceId() : this.resourceId,
  resourceName: resourceName != null ? resourceName() : this.resourceName,
  resourceType: resourceType != null ? resourceType() : this.resourceType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingMonitorReferencesResponseResult &&
          referenceType == other.referenceType &&
          resourceId == other.resourceId &&
          resourceName == other.resourceName &&
          resourceType == other.resourceType; } 
@override int get hashCode { return Object.hash(referenceType, resourceId, resourceName, resourceType); } 
@override String toString() { return 'LoadBalancingMonitorReferencesResponseResult(referenceType: $referenceType, resourceId: $resourceId, resourceName: $resourceName, resourceType: $resourceType)'; } 
 }
