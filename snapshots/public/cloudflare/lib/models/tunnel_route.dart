// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tunnel_created_at.dart';import 'tunnel_deleted_at.dart';import 'tunnel_ip_network.dart';import 'tunnel_route_comment.dart';import 'tunnel_route_id.dart';import 'tunnel_tunnel_id.dart';import 'tunnel_virtual_network_id.dart';final class TunnelRoute {const TunnelRoute({this.comment, this.createdAt, this.deletedAt, this.id, this.network, this.tunnelId, this.virtualNetworkId, });

factory TunnelRoute.fromJson(Map<String, dynamic> json) { return TunnelRoute(
  comment: json['comment'] != null ? TunnelRouteComment.fromJson(json['comment'] as String) : null,
  createdAt: json['created_at'] != null ? TunnelCreatedAt.fromJson(json['created_at'] as String) : null,
  deletedAt: json['deleted_at'] != null ? TunnelDeletedAt.fromJson(json['deleted_at'] as String) : null,
  id: json['id'] != null ? TunnelRouteId.fromJson(json['id'] as String) : null,
  network: json['network'] != null ? TunnelIpNetwork.fromJson(json['network'] as String) : null,
  tunnelId: json['tunnel_id'] != null ? TunnelTunnelId.fromJson(json['tunnel_id'] as String) : null,
  virtualNetworkId: json['virtual_network_id'] != null ? TunnelVirtualNetworkId.fromJson(json['virtual_network_id'] as String) : null,
); }

final TunnelRouteComment? comment;

/// Timestamp of when the resource was created.
final TunnelCreatedAt? createdAt;

/// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
final TunnelDeletedAt? deletedAt;

final TunnelRouteId? id;

/// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
final TunnelIpNetwork? network;

final TunnelTunnelId? tunnelId;

final TunnelVirtualNetworkId? virtualNetworkId;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (deletedAt != null) 'deleted_at': deletedAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (network != null) 'network': network?.toJson(),
  if (tunnelId != null) 'tunnel_id': tunnelId?.toJson(),
  if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TunnelRoute copyWith({TunnelRouteComment Function()? comment, TunnelCreatedAt Function()? createdAt, TunnelDeletedAt Function()? deletedAt, TunnelRouteId Function()? id, TunnelIpNetwork Function()? network, TunnelTunnelId Function()? tunnelId, TunnelVirtualNetworkId Function()? virtualNetworkId, }) { return TunnelRoute(
  comment: comment != null ? comment() : this.comment,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  deletedAt: deletedAt != null ? deletedAt() : this.deletedAt,
  id: id != null ? id() : this.id,
  network: network != null ? network() : this.network,
  tunnelId: tunnelId != null ? tunnelId() : this.tunnelId,
  virtualNetworkId: virtualNetworkId != null ? virtualNetworkId() : this.virtualNetworkId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelRoute &&
          comment == other.comment &&
          createdAt == other.createdAt &&
          deletedAt == other.deletedAt &&
          id == other.id &&
          network == other.network &&
          tunnelId == other.tunnelId &&
          virtualNetworkId == other.virtualNetworkId; } 
@override int get hashCode { return Object.hash(comment, createdAt, deletedAt, id, network, tunnelId, virtualNetworkId); } 
@override String toString() { return 'TunnelRoute(comment: $comment, createdAt: $createdAt, deletedAt: $deletedAt, id: $id, network: $network, tunnelId: $tunnelId, virtualNetworkId: $virtualNetworkId)'; } 
 }
