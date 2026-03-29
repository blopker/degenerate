// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tunnel_components_schemas_tunnel_id.dart';import 'tunnel_hostname.dart';import 'tunnel_hostname_comment.dart';final class ZeroTrustNetworksRouteHostnameUpdateRequest {const ZeroTrustNetworksRouteHostnameUpdateRequest({this.comment, this.hostname, this.tunnelId, });

factory ZeroTrustNetworksRouteHostnameUpdateRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustNetworksRouteHostnameUpdateRequest(
  comment: json['comment'] != null ? TunnelHostnameComment.fromJson(json['comment'] as String) : null,
  hostname: json['hostname'] != null ? TunnelHostname.fromJson(json['hostname'] as String) : null,
  tunnelId: json['tunnel_id'] != null ? TunnelComponentsSchemasTunnelId.fromJson(json['tunnel_id'] as String) : null,
); }

/// An optional description of the hostname route.
final TunnelHostnameComment? comment;

/// The hostname of the route.
final TunnelHostname? hostname;

/// UUID of the tunnel.
final TunnelComponentsSchemasTunnelId? tunnelId;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (hostname != null) 'hostname': hostname?.toJson(),
  if (tunnelId != null) 'tunnel_id': tunnelId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustNetworksRouteHostnameUpdateRequest copyWith({TunnelHostnameComment Function()? comment, TunnelHostname Function()? hostname, TunnelComponentsSchemasTunnelId Function()? tunnelId, }) { return ZeroTrustNetworksRouteHostnameUpdateRequest(
  comment: comment != null ? comment() : this.comment,
  hostname: hostname != null ? hostname() : this.hostname,
  tunnelId: tunnelId != null ? tunnelId() : this.tunnelId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustNetworksRouteHostnameUpdateRequest &&
          comment == other.comment &&
          hostname == other.hostname &&
          tunnelId == other.tunnelId; } 
@override int get hashCode { return Object.hash(comment, hostname, tunnelId); } 
@override String toString() { return 'ZeroTrustNetworksRouteHostnameUpdateRequest(comment: $comment, hostname: $hostname, tunnelId: $tunnelId)'; } 
 }
