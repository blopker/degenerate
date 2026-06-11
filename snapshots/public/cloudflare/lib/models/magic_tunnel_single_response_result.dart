// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_gre_tunnel.dart';@immutable final class MagicTunnelSingleResponseResult {const MagicTunnelSingleResponseResult({this.greTunnel});

factory MagicTunnelSingleResponseResult.fromJson(Map<String, dynamic> json) { return MagicTunnelSingleResponseResult(
  greTunnel: json['gre_tunnel'] != null ? MagicGreTunnel.fromJson(json['gre_tunnel'] as Map<String, dynamic>) : null,
); }

final MagicGreTunnel? greTunnel;

Map<String, dynamic> toJson() { return {
  if (greTunnel != null) 'gre_tunnel': greTunnel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gre_tunnel'}.contains(key)); } 
MagicTunnelSingleResponseResult copyWith({MagicGreTunnel Function()? greTunnel}) { return MagicTunnelSingleResponseResult(
  greTunnel: greTunnel != null ? greTunnel() : this.greTunnel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelSingleResponseResult &&
          greTunnel == other.greTunnel; } 
@override int get hashCode { return greTunnel.hashCode; } 
@override String toString() { return 'MagicTunnelSingleResponseResult(greTunnel: $greTunnel)'; } 
 }
