// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_argo_tunnel.dart';final class TunnelLegacyTunnelResponseCollection {const TunnelLegacyTunnelResponseCollection({this.result});

factory TunnelLegacyTunnelResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelLegacyTunnelResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelArgoTunnel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelArgoTunnel>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelLegacyTunnelResponseCollection copyWith({List<TunnelArgoTunnel> Function()? result}) { return TunnelLegacyTunnelResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelLegacyTunnelResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelLegacyTunnelResponseCollection(result: $result)'; } 
 }
