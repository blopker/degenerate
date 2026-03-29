// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tunnel_colo_name.dart';import 'tunnel_connection_id.dart';import 'tunnel_is_pending_reconnect.dart';final class TunnelConnection {const TunnelConnection({this.coloName, this.isPendingReconnect, this.uuid, });

factory TunnelConnection.fromJson(Map<String, dynamic> json) { return TunnelConnection(
  coloName: json['colo_name'] != null ? TunnelColoName.fromJson(json['colo_name'] as String) : null,
  isPendingReconnect: json['is_pending_reconnect'] != null ? TunnelIsPendingReconnect.fromJson(json['is_pending_reconnect'] as bool) : null,
  uuid: json['uuid'] != null ? TunnelConnectionId.fromJson(json['uuid'] as String) : null,
); }

/// The Cloudflare data center used for this connection.
final TunnelColoName? coloName;

final TunnelIsPendingReconnect? isPendingReconnect;

final TunnelConnectionId? uuid;

Map<String, dynamic> toJson() { return {
  if (coloName != null) 'colo_name': coloName?.toJson(),
  if (isPendingReconnect != null) 'is_pending_reconnect': isPendingReconnect?.toJson(),
  if (uuid != null) 'uuid': uuid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'colo_name', 'is_pending_reconnect', 'uuid'}.contains(key)); } 
TunnelConnection copyWith({TunnelColoName Function()? coloName, TunnelIsPendingReconnect Function()? isPendingReconnect, TunnelConnectionId Function()? uuid, }) { return TunnelConnection(
  coloName: coloName != null ? coloName() : this.coloName,
  isPendingReconnect: isPendingReconnect != null ? isPendingReconnect() : this.isPendingReconnect,
  uuid: uuid != null ? uuid() : this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelConnection &&
          coloName == other.coloName &&
          isPendingReconnect == other.isPendingReconnect &&
          uuid == other.uuid; } 
@override int get hashCode { return Object.hash(coloName, isPendingReconnect, uuid); } 
@override String toString() { return 'TunnelConnection(coloName: $coloName, isPendingReconnect: $isPendingReconnect, uuid: $uuid)'; } 
 }
