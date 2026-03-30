// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_gre_tunnel.dart';final class MagicTunnelModifiedResponseResult {const MagicTunnelModifiedResponseResult({this.modified, this.modifiedGreTunnel, });

factory MagicTunnelModifiedResponseResult.fromJson(Map<String, dynamic> json) { return MagicTunnelModifiedResponseResult(
  modified: json['modified'] as bool?,
  modifiedGreTunnel: json['modified_gre_tunnel'] != null ? MagicGreTunnel.fromJson(json['modified_gre_tunnel'] as Map<String, dynamic>) : null,
); }

final bool? modified;

final MagicGreTunnel? modifiedGreTunnel;

Map<String, dynamic> toJson() { return {
  'modified': ?modified,
  if (modifiedGreTunnel != null) 'modified_gre_tunnel': modifiedGreTunnel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'modified', 'modified_gre_tunnel'}.contains(key)); } 
MagicTunnelModifiedResponseResult copyWith({bool Function()? modified, MagicGreTunnel Function()? modifiedGreTunnel, }) { return MagicTunnelModifiedResponseResult(
  modified: modified != null ? modified() : this.modified,
  modifiedGreTunnel: modifiedGreTunnel != null ? modifiedGreTunnel() : this.modifiedGreTunnel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelModifiedResponseResult &&
          modified == other.modified &&
          modifiedGreTunnel == other.modifiedGreTunnel; } 
@override int get hashCode { return Object.hash(modified, modifiedGreTunnel); } 
@override String toString() { return 'MagicTunnelModifiedResponseResult(modified: $modified, modifiedGreTunnel: $modifiedGreTunnel)'; } 
 }
