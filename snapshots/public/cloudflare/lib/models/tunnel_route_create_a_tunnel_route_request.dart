// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_ip_network.dart';import 'tunnel_route_comment.dart';import 'tunnel_virtual_network_id_computed_optional.dart';@immutable final class TunnelRouteCreateATunnelRouteRequest {const TunnelRouteCreateATunnelRouteRequest({required this.network, this.comment, this.virtualNetworkId, });

factory TunnelRouteCreateATunnelRouteRequest.fromJson(Map<String, dynamic> json) { return TunnelRouteCreateATunnelRouteRequest(
  comment: json['comment'] != null ? TunnelRouteComment.fromJson(json['comment'] as String) : null,
  network: TunnelIpNetwork.fromJson(json['network'] as String),
  virtualNetworkId: json['virtual_network_id'] != null ? TunnelVirtualNetworkIdComputedOptional.fromJson(json['virtual_network_id'] as String) : null,
); }

/// Optional remark describing the route.
final TunnelRouteComment? comment;

/// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
final TunnelIpNetwork network;

/// UUID of the virtual network.
final TunnelVirtualNetworkIdComputedOptional? virtualNetworkId;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  'network': network.toJson(),
  if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('network'); } 
TunnelRouteCreateATunnelRouteRequest copyWith({TunnelRouteComment? Function()? comment, TunnelIpNetwork? network, TunnelVirtualNetworkIdComputedOptional? Function()? virtualNetworkId, }) { return TunnelRouteCreateATunnelRouteRequest(
  comment: comment != null ? comment() : this.comment,
  network: network ?? this.network,
  virtualNetworkId: virtualNetworkId != null ? virtualNetworkId() : this.virtualNetworkId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelRouteCreateATunnelRouteRequest &&
          comment == other.comment &&
          network == other.network &&
          virtualNetworkId == other.virtualNetworkId; } 
@override int get hashCode { return Object.hash(comment, network, virtualNetworkId); } 
@override String toString() { return 'TunnelRouteCreateATunnelRouteRequest(comment: $comment, network: $network, virtualNetworkId: $virtualNetworkId)'; } 
 }
