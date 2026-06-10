// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_resource_id.dart';import 'resource_tagging_zone_resource_type_base_enum.dart';/// Request body schema for setting tags on zone-level resources with no extra requirements.
@immutable final class ResourceTaggingSetTagsRequestZoneLevelBase {const ResourceTaggingSetTagsRequestZoneLevelBase({required this.resourceId, required this.resourceType, this.tags, });

factory ResourceTaggingSetTagsRequestZoneLevelBase.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelBase(
  resourceId: ResourceTaggingResourceId.fromJson(json['resource_id'] as String),
  resourceType: ResourceTaggingZoneResourceTypeBaseEnum.fromJson(json['resource_type'] as String),
  tags: (json['tags'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// Identifies the unique resource.
final ResourceTaggingResourceId resourceId;

final ResourceTaggingZoneResourceTypeBaseEnum resourceType;

final Map<String,String>? tags;

Map<String, dynamic> toJson() { return {
  'resource_id': resourceId.toJson(),
  'resource_type': resourceType.toJson(),
  'tags': ?tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resource_id') &&
      json.containsKey('resource_type'); } 
ResourceTaggingSetTagsRequestZoneLevelBase copyWith({ResourceTaggingResourceId? resourceId, ResourceTaggingZoneResourceTypeBaseEnum? resourceType, Map<String, String> Function()? tags, }) { return ResourceTaggingSetTagsRequestZoneLevelBase(
  resourceId: resourceId ?? this.resourceId,
  resourceType: resourceType ?? this.resourceType,
  tags: tags != null ? tags() : this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingSetTagsRequestZoneLevelBase &&
          resourceId == other.resourceId &&
          resourceType == other.resourceType &&
          tags == other.tags; } 
@override int get hashCode { return Object.hash(resourceId, resourceType, tags); } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelBase(resourceId: $resourceId, resourceType: $resourceType, tags: $tags)'; } 
 }
