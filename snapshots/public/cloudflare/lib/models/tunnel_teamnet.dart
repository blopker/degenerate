// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_created_at.dart';import 'tunnel_deleted_at.dart';import 'tunnel_ip_network.dart';import 'tunnel_route_comment.dart';import 'tunnel_route_id.dart';import 'tunnel_tunnel_id.dart';import 'tunnel_tunnel_name.dart';import 'tunnel_tunnel_type.dart';import 'tunnel_virtual_network_id_computed_optional.dart';import 'tunnel_virtual_network_name.dart';@immutable final class TunnelTeamnet {const TunnelTeamnet({this.comment, this.createdAt, this.deletedAt, this.id, this.network, this.tunType, this.tunnelId, this.tunnelName, this.virtualNetworkId, this.virtualNetworkName, });

factory TunnelTeamnet.fromJson(Map<String, dynamic> json) { return TunnelTeamnet(
  comment: json['comment'] != null ? TunnelRouteComment.fromJson(json['comment'] as String) : null,
  createdAt: json['created_at'] != null ? TunnelCreatedAt.fromJson(json['created_at'] as String) : null,
  deletedAt: json['deleted_at'] != null ? TunnelDeletedAt.fromJson(json['deleted_at'] as String) : null,
  id: json['id'] != null ? TunnelRouteId.fromJson(json['id'] as String) : null,
  network: json['network'] != null ? TunnelIpNetwork.fromJson(json['network'] as String) : null,
  tunType: json['tun_type'] != null ? TunnelTunnelType.fromJson(json['tun_type'] as String) : null,
  tunnelId: json['tunnel_id'] != null ? TunnelTunnelId.fromJson(json['tunnel_id'] as String) : null,
  tunnelName: json['tunnel_name'] != null ? TunnelTunnelName.fromJson(json['tunnel_name'] as String) : null,
  virtualNetworkId: json['virtual_network_id'] != null ? TunnelVirtualNetworkIdComputedOptional.fromJson(json['virtual_network_id'] as String) : null,
  virtualNetworkName: json['virtual_network_name'] != null ? TunnelVirtualNetworkName.fromJson(json['virtual_network_name'] as String) : null,
); }

/// Optional remark describing the route.
final TunnelRouteComment? comment;

/// Timestamp of when the resource was created.
final TunnelCreatedAt? createdAt;

/// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
final TunnelDeletedAt? deletedAt;

/// UUID of the route.
final TunnelRouteId? id;

/// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
final TunnelIpNetwork? network;

final TunnelTunnelType? tunType;

final TunnelTunnelId? tunnelId;

final TunnelTunnelName? tunnelName;

final TunnelVirtualNetworkIdComputedOptional? virtualNetworkId;

final TunnelVirtualNetworkName? virtualNetworkName;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (deletedAt != null) 'deleted_at': deletedAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (network != null) 'network': network?.toJson(),
  if (tunType != null) 'tun_type': tunType?.toJson(),
  if (tunnelId != null) 'tunnel_id': tunnelId?.toJson(),
  if (tunnelName != null) 'tunnel_name': tunnelName?.toJson(),
  if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId?.toJson(),
  if (virtualNetworkName != null) 'virtual_network_name': virtualNetworkName?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'created_at', 'deleted_at', 'id', 'network', 'tun_type', 'tunnel_id', 'tunnel_name', 'virtual_network_id', 'virtual_network_name'}.contains(key)); } 
TunnelTeamnet copyWith({TunnelRouteComment Function()? comment, TunnelCreatedAt Function()? createdAt, TunnelDeletedAt Function()? deletedAt, TunnelRouteId Function()? id, TunnelIpNetwork Function()? network, TunnelTunnelType Function()? tunType, TunnelTunnelId Function()? tunnelId, TunnelTunnelName Function()? tunnelName, TunnelVirtualNetworkIdComputedOptional Function()? virtualNetworkId, TunnelVirtualNetworkName Function()? virtualNetworkName, }) { return TunnelTeamnet(
  comment: comment != null ? comment() : this.comment,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  deletedAt: deletedAt != null ? deletedAt() : this.deletedAt,
  id: id != null ? id() : this.id,
  network: network != null ? network() : this.network,
  tunType: tunType != null ? tunType() : this.tunType,
  tunnelId: tunnelId != null ? tunnelId() : this.tunnelId,
  tunnelName: tunnelName != null ? tunnelName() : this.tunnelName,
  virtualNetworkId: virtualNetworkId != null ? virtualNetworkId() : this.virtualNetworkId,
  virtualNetworkName: virtualNetworkName != null ? virtualNetworkName() : this.virtualNetworkName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelTeamnet &&
          comment == other.comment &&
          createdAt == other.createdAt &&
          deletedAt == other.deletedAt &&
          id == other.id &&
          network == other.network &&
          tunType == other.tunType &&
          tunnelId == other.tunnelId &&
          tunnelName == other.tunnelName &&
          virtualNetworkId == other.virtualNetworkId &&
          virtualNetworkName == other.virtualNetworkName; } 
@override int get hashCode { return Object.hash(comment, createdAt, deletedAt, id, network, tunType, tunnelId, tunnelName, virtualNetworkId, virtualNetworkName); } 
@override String toString() { return 'TunnelTeamnet(comment: $comment, createdAt: $createdAt, deletedAt: $deletedAt, id: $id, network: $network, tunType: $tunType, tunnelId: $tunnelId, tunnelName: $tunnelName, virtualNetworkId: $virtualNetworkId, virtualNetworkName: $virtualNetworkName)'; } 
 }
