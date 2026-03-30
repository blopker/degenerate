// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_cfd_tunnel.dart';import 'tunnel_tunnel_response_collection_result.dart';import 'tunnel_warp_connector_tunnel.dart';final class TunnelTunnelResponseCollection {const TunnelTunnelResponseCollection({this.result});

factory TunnelTunnelResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelTunnelResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => TunnelCfdTunnel.fromJson(v as Map<String, dynamic>), fromB: (v) => TunnelWarpConnectorTunnel.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<TunnelTunnelResponseCollectionResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelTunnelResponseCollection copyWith({List<TunnelTunnelResponseCollectionResult> Function()? result}) { return TunnelTunnelResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelTunnelResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelTunnelResponseCollection(result: $result)'; } 
 }
