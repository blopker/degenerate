// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_permission_group_request_meta.dart';/// A named group of permissions that map to a group of operations against resources.
@immutable final class IamPermissionGroupRequest {const IamPermissionGroupRequest({required this.id, this.meta, });

factory IamPermissionGroupRequest.fromJson(Map<String, dynamic> json) { return IamPermissionGroupRequest(
  id: json['id'] as String,
  meta: json['meta'] != null ? IamPermissionGroupRequestMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
); }

/// Identifier of the permission group.
final String id;

/// Attributes associated to the permission group.
final IamPermissionGroupRequestMeta? meta;

Map<String, dynamic> toJson() { return {
  'id': id,
  if (meta != null) 'meta': meta?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
IamPermissionGroupRequest copyWith({String? id, IamPermissionGroupRequestMeta? Function()? meta, }) { return IamPermissionGroupRequest(
  id: id ?? this.id,
  meta: meta != null ? meta() : this.meta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamPermissionGroupRequest &&
          id == other.id &&
          meta == other.meta; } 
@override int get hashCode { return Object.hash(id, meta); } 
@override String toString() { return 'IamPermissionGroupRequest(id: $id, meta: $meta)'; } 
 }
