// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_ipsec_tunnel.dart';final class MagicSchemasTunnelSingleResponseResult {const MagicSchemasTunnelSingleResponseResult({this.ipsecTunnel});

factory MagicSchemasTunnelSingleResponseResult.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelSingleResponseResult(
  ipsecTunnel: json['ipsec_tunnel'] != null ? MagicIpsecTunnel.fromJson(json['ipsec_tunnel'] as Map<String, dynamic>) : null,
); }

final MagicIpsecTunnel? ipsecTunnel;

Map<String, dynamic> toJson() { return {
  if (ipsecTunnel != null) 'ipsec_tunnel': ipsecTunnel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ipsec_tunnel'}.contains(key)); } 
MagicSchemasTunnelSingleResponseResult copyWith({MagicIpsecTunnel Function()? ipsecTunnel}) { return MagicSchemasTunnelSingleResponseResult(
  ipsecTunnel: ipsecTunnel != null ? ipsecTunnel() : this.ipsecTunnel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelSingleResponseResult &&
          ipsecTunnel == other.ipsecTunnel; } 
@override int get hashCode { return ipsecTunnel.hashCode; } 
@override String toString() { return 'MagicSchemasTunnelSingleResponseResult(ipsecTunnel: $ipsecTunnel)'; } 
 }
