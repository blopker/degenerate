// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_account_resource_type_worker_version_enum.dart';import 'resource_tagging_resource_id.dart';import 'resource_tagging_worker_id.dart';/// Request body schema for setting tags on worker_version resources.
@immutable final class ResourceTaggingSetTagsRequestAccountLevelWorkerVersion {const ResourceTaggingSetTagsRequestAccountLevelWorkerVersion({required this.resourceId, required this.resourceType, required this.workerId, this.tags, });

factory ResourceTaggingSetTagsRequestAccountLevelWorkerVersion.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelWorkerVersion(
  resourceId: ResourceTaggingResourceId.fromJson(json['resource_id'] as String),
  resourceType: ResourceTaggingAccountResourceTypeWorkerVersionEnum.fromJson(json['resource_type'] as String),
  workerId: ResourceTaggingWorkerId.fromJson(json['worker_id'] as String),
  tags: (json['tags'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// Identifies the unique resource.
final ResourceTaggingResourceId resourceId;

/// Enum for worker_version resource type.
final ResourceTaggingAccountResourceTypeWorkerVersionEnum resourceType;

final ResourceTaggingWorkerId workerId;

final Map<String,String>? tags;

Map<String, dynamic> toJson() { return {
  'resource_id': resourceId.toJson(),
  'resource_type': resourceType.toJson(),
  'worker_id': workerId.toJson(),
  'tags': ?tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resource_id') &&
      json.containsKey('resource_type') &&
      json.containsKey('worker_id'); } 
ResourceTaggingSetTagsRequestAccountLevelWorkerVersion copyWith({ResourceTaggingResourceId? resourceId, ResourceTaggingAccountResourceTypeWorkerVersionEnum? resourceType, ResourceTaggingWorkerId? workerId, Map<String, String> Function()? tags, }) { return ResourceTaggingSetTagsRequestAccountLevelWorkerVersion(
  resourceId: resourceId ?? this.resourceId,
  resourceType: resourceType ?? this.resourceType,
  workerId: workerId ?? this.workerId,
  tags: tags != null ? tags() : this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingSetTagsRequestAccountLevelWorkerVersion &&
          resourceId == other.resourceId &&
          resourceType == other.resourceType &&
          workerId == other.workerId &&
          tags == other.tags; } 
@override int get hashCode { return Object.hash(resourceId, resourceType, workerId, tags); } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelWorkerVersion(resourceId: $resourceId, resourceType: $resourceType, workerId: $workerId, tags: $tags)'; } 
 }
