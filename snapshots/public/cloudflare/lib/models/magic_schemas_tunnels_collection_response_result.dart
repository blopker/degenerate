// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_ipsec_tunnel.dart';final class MagicSchemasTunnelsCollectionResponseResult {const MagicSchemasTunnelsCollectionResponseResult({this.ipsecTunnels});

factory MagicSchemasTunnelsCollectionResponseResult.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelsCollectionResponseResult(
  ipsecTunnels: (json['ipsec_tunnels'] as List<dynamic>?)?.map((e) => MagicIpsecTunnel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicIpsecTunnel>? ipsecTunnels;

Map<String, dynamic> toJson() { return {
  if (ipsecTunnels != null) 'ipsec_tunnels': ipsecTunnels?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ipsec_tunnels'}.contains(key)); } 
MagicSchemasTunnelsCollectionResponseResult copyWith({List<MagicIpsecTunnel> Function()? ipsecTunnels}) { return MagicSchemasTunnelsCollectionResponseResult(
  ipsecTunnels: ipsecTunnels != null ? ipsecTunnels() : this.ipsecTunnels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelsCollectionResponseResult &&
          listEquals(ipsecTunnels, other.ipsecTunnels); } 
@override int get hashCode { return Object.hashAll(ipsecTunnels ?? const []).hashCode; } 
@override String toString() { return 'MagicSchemasTunnelsCollectionResponseResult(ipsecTunnels: $ipsecTunnels)'; } 
 }
