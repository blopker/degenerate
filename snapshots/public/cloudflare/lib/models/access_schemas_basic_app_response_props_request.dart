// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_scim_config.dart';import 'access_timestamp.dart';import 'access_uuid.dart';@immutable final class AccessSchemasBasicAppResponsePropsRequest {const AccessSchemasBasicAppResponsePropsRequest({this.createdAt, this.id, this.scimConfig, this.updatedAt, });

factory AccessSchemasBasicAppResponsePropsRequest.fromJson(Map<String, dynamic> json) { return AccessSchemasBasicAppResponsePropsRequest(
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  scimConfig: json['scim_config'] != null ? AccessSchemasScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
); }

final AccessTimestamp? createdAt;

/// UUID.
final AccessUuid? id;

final AccessSchemasScimConfig? scimConfig;

final AccessTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'id', 'scim_config', 'updated_at'}.contains(key)); } 
AccessSchemasBasicAppResponsePropsRequest copyWith({AccessTimestamp? Function()? createdAt, AccessUuid? Function()? id, AccessSchemasScimConfig? Function()? scimConfig, AccessTimestamp? Function()? updatedAt, }) { return AccessSchemasBasicAppResponsePropsRequest(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasBasicAppResponsePropsRequest &&
          createdAt == other.createdAt &&
          id == other.id &&
          scimConfig == other.scimConfig &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, id, scimConfig, updatedAt); } 
@override String toString() { return 'AccessSchemasBasicAppResponsePropsRequest(createdAt: $createdAt, id: $id, scimConfig: $scimConfig, updatedAt: $updatedAt)'; } 
 }
