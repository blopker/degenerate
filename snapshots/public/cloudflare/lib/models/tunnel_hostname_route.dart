// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tunnel_components_schemas_tunnel_id.dart';import 'tunnel_created_at.dart';import 'tunnel_deleted_at.dart';import 'tunnel_hostname.dart';import 'tunnel_hostname_comment.dart';import 'tunnel_hostname_route_id.dart';/// A user-friendly name for a tunnel.
extension type const TunnelSchemasTunnelName(String value) {
factory TunnelSchemasTunnelName.fromJson(String json) => TunnelSchemasTunnelName(json);

String toJson() => value;

}
final class TunnelHostnameRoute {const TunnelHostnameRoute({this.comment, this.createdAt, this.deletedAt, this.hostname, this.id, this.tunnelId, this.tunnelName, });

factory TunnelHostnameRoute.fromJson(Map<String, dynamic> json) { return TunnelHostnameRoute(
  comment: json['comment'] != null ? TunnelHostnameComment.fromJson(json['comment'] as String) : null,
  createdAt: json['created_at'] != null ? TunnelCreatedAt.fromJson(json['created_at'] as String) : null,
  deletedAt: json['deleted_at'] != null ? TunnelDeletedAt.fromJson(json['deleted_at'] as String) : null,
  hostname: json['hostname'] != null ? TunnelHostname.fromJson(json['hostname'] as String) : null,
  id: json['id'] != null ? TunnelHostnameRouteId.fromJson(json['id'] as String) : null,
  tunnelId: json['tunnel_id'] != null ? TunnelComponentsSchemasTunnelId.fromJson(json['tunnel_id'] as String) : null,
  tunnelName: json['tunnel_name'] != null ? TunnelSchemasTunnelName.fromJson(json['tunnel_name'] as String) : null,
); }

/// An optional description of the hostname route.
final TunnelHostnameComment? comment;

/// Timestamp of when the resource was created.
final TunnelCreatedAt? createdAt;

/// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
final TunnelDeletedAt? deletedAt;

/// The hostname of the route.
final TunnelHostname? hostname;

final TunnelHostnameRouteId? id;

/// UUID of the tunnel.
final TunnelComponentsSchemasTunnelId? tunnelId;

final TunnelSchemasTunnelName? tunnelName;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (deletedAt != null) 'deleted_at': deletedAt?.toJson(),
  if (hostname != null) 'hostname': hostname?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (tunnelId != null) 'tunnel_id': tunnelId?.toJson(),
  if (tunnelName != null) 'tunnel_name': tunnelName?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'created_at', 'deleted_at', 'hostname', 'id', 'tunnel_id', 'tunnel_name'}.contains(key)); } 
TunnelHostnameRoute copyWith({TunnelHostnameComment Function()? comment, TunnelCreatedAt Function()? createdAt, TunnelDeletedAt Function()? deletedAt, TunnelHostname Function()? hostname, TunnelHostnameRouteId Function()? id, TunnelComponentsSchemasTunnelId Function()? tunnelId, TunnelSchemasTunnelName Function()? tunnelName, }) { return TunnelHostnameRoute(
  comment: comment != null ? comment() : this.comment,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  deletedAt: deletedAt != null ? deletedAt() : this.deletedAt,
  hostname: hostname != null ? hostname() : this.hostname,
  id: id != null ? id() : this.id,
  tunnelId: tunnelId != null ? tunnelId() : this.tunnelId,
  tunnelName: tunnelName != null ? tunnelName() : this.tunnelName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelHostnameRoute &&
          comment == other.comment &&
          createdAt == other.createdAt &&
          deletedAt == other.deletedAt &&
          hostname == other.hostname &&
          id == other.id &&
          tunnelId == other.tunnelId &&
          tunnelName == other.tunnelName; } 
@override int get hashCode { return Object.hash(comment, createdAt, deletedAt, hostname, id, tunnelId, tunnelName); } 
@override String toString() { return 'TunnelHostnameRoute(comment: $comment, createdAt: $createdAt, deletedAt: $deletedAt, hostname: $hostname, id: $id, tunnelId: $tunnelId, tunnelName: $tunnelName)'; } 
 }
