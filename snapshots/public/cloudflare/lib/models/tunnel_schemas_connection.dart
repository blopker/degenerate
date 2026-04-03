// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_client_id.dart';import 'tunnel_colo_name.dart';import 'tunnel_connection_id.dart';import 'tunnel_ip.dart';import 'tunnel_is_pending_reconnect.dart';import 'tunnel_version.dart';@immutable final class TunnelSchemasConnection {const TunnelSchemasConnection({this.clientId, this.clientVersion, this.coloName, this.id, this.isPendingReconnect, this.openedAt, this.originIp, this.uuid, });

factory TunnelSchemasConnection.fromJson(Map<String, dynamic> json) { return TunnelSchemasConnection(
  clientId: json['client_id'] != null ? TunnelClientId.fromJson(json['client_id'] as String) : null,
  clientVersion: json['client_version'] != null ? TunnelVersion.fromJson(json['client_version'] as String) : null,
  coloName: json['colo_name'] != null ? TunnelColoName.fromJson(json['colo_name'] as String) : null,
  id: json['id'] != null ? TunnelConnectionId.fromJson(json['id'] as String) : null,
  isPendingReconnect: json['is_pending_reconnect'] != null ? TunnelIsPendingReconnect.fromJson(json['is_pending_reconnect'] as bool) : null,
  openedAt: json['opened_at'] != null ? DateTime.parse(json['opened_at'] as String) : null,
  originIp: json['origin_ip'] != null ? TunnelIp.fromJson(json['origin_ip'] as String) : null,
  uuid: json['uuid'] != null ? TunnelConnectionId.fromJson(json['uuid'] as String) : null,
); }

/// UUID of the Cloudflare Tunnel connector.
final TunnelClientId? clientId;

final TunnelVersion? clientVersion;

/// The Cloudflare data center used for this connection.
final TunnelColoName? coloName;

/// UUID of the Cloudflare Tunnel connection.
final TunnelConnectionId? id;

/// Cloudflare continues to track connections for several minutes after they disconnect. This is an optimization to improve latency and reliability of reconnecting.  If `true`, the connection has disconnected but is still being tracked. If `false`, the connection is actively serving traffic.
final TunnelIsPendingReconnect? isPendingReconnect;

/// Timestamp of when the connection was established.
final DateTime? openedAt;

/// The public IP address of the host running cloudflared.
final TunnelIp? originIp;

/// UUID of the Cloudflare Tunnel connection.
final TunnelConnectionId? uuid;

Map<String, dynamic> toJson() { return {
  if (clientId != null) 'client_id': clientId?.toJson(),
  if (clientVersion != null) 'client_version': clientVersion?.toJson(),
  if (coloName != null) 'colo_name': coloName?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (isPendingReconnect != null) 'is_pending_reconnect': isPendingReconnect?.toJson(),
  if (openedAt != null) 'opened_at': openedAt?.toIso8601String(),
  if (originIp != null) 'origin_ip': originIp?.toJson(),
  if (uuid != null) 'uuid': uuid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_version', 'colo_name', 'id', 'is_pending_reconnect', 'opened_at', 'origin_ip', 'uuid'}.contains(key)); } 
TunnelSchemasConnection copyWith({TunnelClientId Function()? clientId, TunnelVersion Function()? clientVersion, TunnelColoName Function()? coloName, TunnelConnectionId Function()? id, TunnelIsPendingReconnect Function()? isPendingReconnect, DateTime Function()? openedAt, TunnelIp Function()? originIp, TunnelConnectionId Function()? uuid, }) { return TunnelSchemasConnection(
  clientId: clientId != null ? clientId() : this.clientId,
  clientVersion: clientVersion != null ? clientVersion() : this.clientVersion,
  coloName: coloName != null ? coloName() : this.coloName,
  id: id != null ? id() : this.id,
  isPendingReconnect: isPendingReconnect != null ? isPendingReconnect() : this.isPendingReconnect,
  openedAt: openedAt != null ? openedAt() : this.openedAt,
  originIp: originIp != null ? originIp() : this.originIp,
  uuid: uuid != null ? uuid() : this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelSchemasConnection &&
          clientId == other.clientId &&
          clientVersion == other.clientVersion &&
          coloName == other.coloName &&
          id == other.id &&
          isPendingReconnect == other.isPendingReconnect &&
          openedAt == other.openedAt &&
          originIp == other.originIp &&
          uuid == other.uuid; } 
@override int get hashCode { return Object.hash(clientId, clientVersion, coloName, id, isPendingReconnect, openedAt, originIp, uuid); } 
@override String toString() { return 'TunnelSchemasConnection(clientId: $clientId, clientVersion: $clientVersion, coloName: $coloName, id: $id, isPendingReconnect: $isPendingReconnect, openedAt: $openedAt, originIp: $originIp, uuid: $uuid)'; } 
 }
