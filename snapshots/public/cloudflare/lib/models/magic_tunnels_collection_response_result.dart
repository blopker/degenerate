// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_gre_tunnel.dart';final class MagicTunnelsCollectionResponseResult {const MagicTunnelsCollectionResponseResult({this.greTunnels});

factory MagicTunnelsCollectionResponseResult.fromJson(Map<String, dynamic> json) { return MagicTunnelsCollectionResponseResult(
  greTunnels: (json['gre_tunnels'] as List<dynamic>?)?.map((e) => MagicGreTunnel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicGreTunnel>? greTunnels;

Map<String, dynamic> toJson() { return {
  if (greTunnels != null) 'gre_tunnels': greTunnels?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gre_tunnels'}.contains(key)); } 
MagicTunnelsCollectionResponseResult copyWith({List<MagicGreTunnel> Function()? greTunnels}) { return MagicTunnelsCollectionResponseResult(
  greTunnels: greTunnels != null ? greTunnels() : this.greTunnels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelsCollectionResponseResult &&
          listEquals(greTunnels, other.greTunnels); } 
@override int get hashCode { return Object.hashAll(greTunnels ?? const []).hashCode; } 
@override String toString() { return 'MagicTunnelsCollectionResponseResult(greTunnels: $greTunnels)'; } 
 }
