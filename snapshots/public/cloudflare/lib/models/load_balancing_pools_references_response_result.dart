// GENERATED CODE - DO NOT MODIFY BY HAND

final class LoadBalancingPoolsReferencesResponseResultReferenceType {const LoadBalancingPoolsReferencesResponseResultReferenceType._(this.value);

factory LoadBalancingPoolsReferencesResponseResultReferenceType.fromJson(String json) { return switch (json) {
  '*' => $empty,
  'referral' => referral,
  'referrer' => referrer,
  _ => LoadBalancingPoolsReferencesResponseResultReferenceType._(json),
}; }

static const LoadBalancingPoolsReferencesResponseResultReferenceType $empty = LoadBalancingPoolsReferencesResponseResultReferenceType._('*');

static const LoadBalancingPoolsReferencesResponseResultReferenceType referral = LoadBalancingPoolsReferencesResponseResultReferenceType._('referral');

static const LoadBalancingPoolsReferencesResponseResultReferenceType referrer = LoadBalancingPoolsReferencesResponseResultReferenceType._('referrer');

static const List<LoadBalancingPoolsReferencesResponseResultReferenceType> values = [$empty, referral, referrer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingPoolsReferencesResponseResultReferenceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingPoolsReferencesResponseResultReferenceType($value)'; } 
 }
final class LoadBalancingPoolsReferencesResponseResult {const LoadBalancingPoolsReferencesResponseResult({this.referenceType, this.resourceId, this.resourceName, this.resourceType, });

factory LoadBalancingPoolsReferencesResponseResult.fromJson(Map<String, dynamic> json) { return LoadBalancingPoolsReferencesResponseResult(
  referenceType: json['reference_type'] != null ? LoadBalancingPoolsReferencesResponseResultReferenceType.fromJson(json['reference_type'] as String) : null,
  resourceId: json['resource_id'] as String?,
  resourceName: json['resource_name'] as String?,
  resourceType: json['resource_type'] as String?,
); }

final LoadBalancingPoolsReferencesResponseResultReferenceType? referenceType;

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
LoadBalancingPoolsReferencesResponseResult copyWith({LoadBalancingPoolsReferencesResponseResultReferenceType Function()? referenceType, String Function()? resourceId, String Function()? resourceName, String Function()? resourceType, }) { return LoadBalancingPoolsReferencesResponseResult(
  referenceType: referenceType != null ? referenceType() : this.referenceType,
  resourceId: resourceId != null ? resourceId() : this.resourceId,
  resourceName: resourceName != null ? resourceName() : this.resourceName,
  resourceType: resourceType != null ? resourceType() : this.resourceType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingPoolsReferencesResponseResult &&
          referenceType == other.referenceType &&
          resourceId == other.resourceId &&
          resourceName == other.resourceName &&
          resourceType == other.resourceType; } 
@override int get hashCode { return Object.hash(referenceType, resourceId, resourceName, resourceType); } 
@override String toString() { return 'LoadBalancingPoolsReferencesResponseResult(referenceType: $referenceType, resourceId: $resourceId, resourceName: $resourceName, resourceType: $resourceType)'; } 
 }
