// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_cfd_tunnel.dart';final class TunnelCfdTunnelResponseCollection {const TunnelCfdTunnelResponseCollection({this.result});

factory TunnelCfdTunnelResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelCfdTunnelResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelCfdTunnel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelCfdTunnel>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelCfdTunnelResponseCollection copyWith({List<TunnelCfdTunnel> Function()? result}) { return TunnelCfdTunnelResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelCfdTunnelResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelCfdTunnelResponseCollection(result: $result)'; } 
 }
