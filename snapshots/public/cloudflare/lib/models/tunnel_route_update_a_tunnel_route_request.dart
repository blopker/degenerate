// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_ip_network.dart';import 'tunnel_route_comment.dart';import 'tunnel_tunnel_id.dart';import 'tunnel_virtual_network_id_computed_optional.dart';@immutable final class TunnelRouteUpdateATunnelRouteRequest {const TunnelRouteUpdateATunnelRouteRequest({this.comment, this.network, this.tunnelId, this.virtualNetworkId, });

factory TunnelRouteUpdateATunnelRouteRequest.fromJson(Map<String, dynamic> json) { return TunnelRouteUpdateATunnelRouteRequest(
  comment: json['comment'] != null ? TunnelRouteComment.fromJson(json['comment'] as String) : null,
  network: json['network'] != null ? TunnelIpNetwork.fromJson(json['network'] as String) : null,
  tunnelId: json['tunnel_id'] != null ? TunnelTunnelId.fromJson(json['tunnel_id'] as String) : null,
  virtualNetworkId: json['virtual_network_id'] != null ? TunnelVirtualNetworkIdComputedOptional.fromJson(json['virtual_network_id'] as String) : null,
); }

/// Optional remark describing the route.
final TunnelRouteComment? comment;

/// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
final TunnelIpNetwork? network;

/// UUID of the tunnel.
final TunnelTunnelId? tunnelId;

/// UUID of the virtual network.
final TunnelVirtualNetworkIdComputedOptional? virtualNetworkId;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (network != null) 'network': network?.toJson(),
  if (tunnelId != null) 'tunnel_id': tunnelId?.toJson(),
  if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'network', 'tunnel_id', 'virtual_network_id'}.contains(key)); } 
TunnelRouteUpdateATunnelRouteRequest copyWith({TunnelRouteComment Function()? comment, TunnelIpNetwork Function()? network, TunnelTunnelId Function()? tunnelId, TunnelVirtualNetworkIdComputedOptional Function()? virtualNetworkId, }) { return TunnelRouteUpdateATunnelRouteRequest(
  comment: comment != null ? comment() : this.comment,
  network: network != null ? network() : this.network,
  tunnelId: tunnelId != null ? tunnelId() : this.tunnelId,
  virtualNetworkId: virtualNetworkId != null ? virtualNetworkId() : this.virtualNetworkId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelRouteUpdateATunnelRouteRequest &&
          comment == other.comment &&
          network == other.network &&
          tunnelId == other.tunnelId &&
          virtualNetworkId == other.virtualNetworkId; } 
@override int get hashCode { return Object.hash(comment, network, tunnelId, virtualNetworkId); } 
@override String toString() { return 'TunnelRouteUpdateATunnelRouteRequest(comment: $comment, network: $network, tunnelId: $tunnelId, virtualNetworkId: $virtualNetworkId)'; } 
 }
