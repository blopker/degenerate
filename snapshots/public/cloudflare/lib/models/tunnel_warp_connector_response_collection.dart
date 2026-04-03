// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_warp_connector_tunnel.dart';@immutable final class TunnelWarpConnectorResponseCollection {const TunnelWarpConnectorResponseCollection({this.result});

factory TunnelWarpConnectorResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelWarpConnectorResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelWarpConnectorTunnel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelWarpConnectorTunnel>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelWarpConnectorResponseCollection copyWith({List<TunnelWarpConnectorTunnel> Function()? result}) { return TunnelWarpConnectorResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelWarpConnectorResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelWarpConnectorResponseCollection(result: $result)'; } 
 }
