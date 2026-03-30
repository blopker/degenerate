// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_tunnel_client.dart';final class TunnelTunnelConnectionsResponse {const TunnelTunnelConnectionsResponse({this.result});

factory TunnelTunnelConnectionsResponse.fromJson(Map<String, dynamic> json) { return TunnelTunnelConnectionsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelTunnelClient.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelTunnelClient>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelTunnelConnectionsResponse copyWith({List<TunnelTunnelClient> Function()? result}) { return TunnelTunnelConnectionsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelTunnelConnectionsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelTunnelConnectionsResponse(result: $result)'; } 
 }
