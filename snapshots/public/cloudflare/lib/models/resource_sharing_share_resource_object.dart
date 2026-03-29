// GENERATED CODE - DO NOT MODIFY BY HAND

import 'resource_sharing_account_id.dart';import 'resource_sharing_created.dart';import 'resource_sharing_modified.dart';import 'resource_sharing_resource_id.dart';import 'resource_sharing_resource_resource_id.dart';import 'resource_sharing_resource_status.dart';import 'resource_sharing_resource_type.dart';import 'resource_sharing_resource_version.dart';final class ResourceSharingShareResourceObject {const ResourceSharingShareResourceObject({required this.created, required this.id, required this.meta, required this.modified, required this.resourceAccountId, required this.resourceId, required this.resourceType, required this.resourceVersion, required this.status, });

factory ResourceSharingShareResourceObject.fromJson(Map<String, dynamic> json) { return ResourceSharingShareResourceObject(
  created: ResourceSharingCreated.fromJson(json['created'] as String),
  id: ResourceSharingResourceId.fromJson(json['id'] as String),
  meta: (json['meta'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  modified: ResourceSharingModified.fromJson(json['modified'] as String),
  resourceAccountId: ResourceSharingAccountId.fromJson(json['resource_account_id'] as String),
  resourceId: ResourceSharingResourceResourceId.fromJson(json['resource_id'] as String),
  resourceType: ResourceSharingResourceType.fromJson(json['resource_type'] as String),
  resourceVersion: ResourceSharingResourceVersion.fromJson(json['resource_version'] as num),
  status: ResourceSharingResourceStatus.fromJson(json['status'] as String),
); }

/// When the share was created.
final ResourceSharingCreated created;

/// Share Resource identifier.
final ResourceSharingResourceId id;

/// Resource Metadata.
final Map<String,dynamic> meta;

/// When the share was modified.
final ResourceSharingModified modified;

/// Account identifier.
final ResourceSharingAccountId resourceAccountId;

/// Share Resource identifier.
final ResourceSharingResourceResourceId resourceId;

/// Resource Type.
final ResourceSharingResourceType resourceType;

/// Resource Version.
final ResourceSharingResourceVersion resourceVersion;

/// Resource Status.
final ResourceSharingResourceStatus status;

Map<String, dynamic> toJson() { return {
  'created': created.toJson(),
  'id': id.toJson(),
  'meta': meta,
  'modified': modified.toJson(),
  'resource_account_id': resourceAccountId.toJson(),
  'resource_id': resourceId.toJson(),
  'resource_type': resourceType.toJson(),
  'resource_version': resourceVersion.toJson(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') &&
      json.containsKey('id') &&
      json.containsKey('meta') &&
      json.containsKey('modified') &&
      json.containsKey('resource_account_id') &&
      json.containsKey('resource_id') &&
      json.containsKey('resource_type') &&
      json.containsKey('resource_version') &&
      json.containsKey('status'); } 
ResourceSharingShareResourceObject copyWith({ResourceSharingCreated? created, ResourceSharingResourceId? id, Map<String,dynamic>? meta, ResourceSharingModified? modified, ResourceSharingAccountId? resourceAccountId, ResourceSharingResourceResourceId? resourceId, ResourceSharingResourceType? resourceType, ResourceSharingResourceVersion? resourceVersion, ResourceSharingResourceStatus? status, }) { return ResourceSharingShareResourceObject(
  created: created ?? this.created,
  id: id ?? this.id,
  meta: meta ?? this.meta,
  modified: modified ?? this.modified,
  resourceAccountId: resourceAccountId ?? this.resourceAccountId,
  resourceId: resourceId ?? this.resourceId,
  resourceType: resourceType ?? this.resourceType,
  resourceVersion: resourceVersion ?? this.resourceVersion,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingShareResourceObject &&
          created == other.created &&
          id == other.id &&
          meta == other.meta &&
          modified == other.modified &&
          resourceAccountId == other.resourceAccountId &&
          resourceId == other.resourceId &&
          resourceType == other.resourceType &&
          resourceVersion == other.resourceVersion &&
          status == other.status; } 
@override int get hashCode { return Object.hash(created, id, meta, modified, resourceAccountId, resourceId, resourceType, resourceVersion, status); } 
@override String toString() { return 'ResourceSharingShareResourceObject(created: $created, id: $id, meta: $meta, modified: $modified, resourceAccountId: $resourceAccountId, resourceId: $resourceId, resourceType: $resourceType, resourceVersion: $resourceVersion, status: $status)'; } 
 }
