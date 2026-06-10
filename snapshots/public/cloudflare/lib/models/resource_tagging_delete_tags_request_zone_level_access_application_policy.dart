// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_access_application_id.dart';import 'resource_tagging_resource_id.dart';import 'resource_tagging_zone_resource_type_access_application_policy_enum.dart';/// Request body schema for deleting tags from access_application_policy resources.
@immutable final class ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy {const ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy({required this.resourceId, required this.resourceType, required this.accessApplicationId, });

factory ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy(
  resourceId: ResourceTaggingResourceId.fromJson(json['resource_id'] as String),
  resourceType: ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum.fromJson(json['resource_type'] as String),
  accessApplicationId: ResourceTaggingAccessApplicationId.fromJson(json['access_application_id'] as String),
); }

final ResourceTaggingResourceId resourceId;

final ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum resourceType;

/// Access application ID is required only for access_application_policy resources
final ResourceTaggingAccessApplicationId accessApplicationId;

Map<String, dynamic> toJson() { return {
  'resource_id': resourceId.toJson(),
  'resource_type': resourceType.toJson(),
  'access_application_id': accessApplicationId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resource_id') &&
      json.containsKey('resource_type') &&
      json.containsKey('access_application_id'); } 
ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy copyWith({ResourceTaggingResourceId? resourceId, ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum? resourceType, ResourceTaggingAccessApplicationId? accessApplicationId, }) { return ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy(
  resourceId: resourceId ?? this.resourceId,
  resourceType: resourceType ?? this.resourceType,
  accessApplicationId: accessApplicationId ?? this.accessApplicationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy &&
          resourceId == other.resourceId &&
          resourceType == other.resourceType &&
          accessApplicationId == other.accessApplicationId; } 
@override int get hashCode { return Object.hash(resourceId, resourceType, accessApplicationId); } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy(resourceId: $resourceId, resourceType: $resourceType, accessApplicationId: $accessApplicationId)'; } 
 }
