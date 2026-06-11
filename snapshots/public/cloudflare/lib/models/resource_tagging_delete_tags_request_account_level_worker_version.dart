// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_account_resource_type_worker_version_enum.dart';import 'resource_tagging_resource_id.dart';import 'resource_tagging_worker_id.dart';/// Request body schema for deleting tags from worker_version resources.
@immutable final class ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion {const ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion({required this.resourceId, required this.resourceType, required this.workerId, });

factory ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion(
  resourceId: ResourceTaggingResourceId.fromJson(json['resource_id'] as String),
  resourceType: ResourceTaggingAccountResourceTypeWorkerVersionEnum.fromJson(json['resource_type'] as String),
  workerId: ResourceTaggingWorkerId.fromJson(json['worker_id'] as String),
); }

final ResourceTaggingResourceId resourceId;

/// Enum for worker_version resource type.
final ResourceTaggingAccountResourceTypeWorkerVersionEnum resourceType;

final ResourceTaggingWorkerId workerId;

Map<String, dynamic> toJson() { return {
  'resource_id': resourceId.toJson(),
  'resource_type': resourceType.toJson(),
  'worker_id': workerId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resource_id') &&
      json.containsKey('resource_type') &&
      json.containsKey('worker_id'); } 
ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion copyWith({ResourceTaggingResourceId? resourceId, ResourceTaggingAccountResourceTypeWorkerVersionEnum? resourceType, ResourceTaggingWorkerId? workerId, }) { return ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion(
  resourceId: resourceId ?? this.resourceId,
  resourceType: resourceType ?? this.resourceType,
  workerId: workerId ?? this.workerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion &&
          resourceId == other.resourceId &&
          resourceType == other.resourceType &&
          workerId == other.workerId; } 
@override int get hashCode { return Object.hash(resourceId, resourceType, workerId); } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestAccountLevelWorkerVersion(resourceId: $resourceId, resourceType: $resourceType, workerId: $workerId)'; } 
 }
