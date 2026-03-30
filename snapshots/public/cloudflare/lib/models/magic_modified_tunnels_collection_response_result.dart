// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_gre_tunnel.dart';final class MagicModifiedTunnelsCollectionResponseResult {const MagicModifiedTunnelsCollectionResponseResult({this.modified, this.modifiedGreTunnels, });

factory MagicModifiedTunnelsCollectionResponseResult.fromJson(Map<String, dynamic> json) { return MagicModifiedTunnelsCollectionResponseResult(
  modified: json['modified'] as bool?,
  modifiedGreTunnels: (json['modified_gre_tunnels'] as List<dynamic>?)?.map((e) => MagicGreTunnel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final bool? modified;

final List<MagicGreTunnel>? modifiedGreTunnels;

Map<String, dynamic> toJson() { return {
  'modified': ?modified,
  if (modifiedGreTunnels != null) 'modified_gre_tunnels': modifiedGreTunnels?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'modified', 'modified_gre_tunnels'}.contains(key)); } 
MagicModifiedTunnelsCollectionResponseResult copyWith({bool Function()? modified, List<MagicGreTunnel> Function()? modifiedGreTunnels, }) { return MagicModifiedTunnelsCollectionResponseResult(
  modified: modified != null ? modified() : this.modified,
  modifiedGreTunnels: modifiedGreTunnels != null ? modifiedGreTunnels() : this.modifiedGreTunnels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicModifiedTunnelsCollectionResponseResult &&
          modified == other.modified &&
          listEquals(modifiedGreTunnels, other.modifiedGreTunnels); } 
@override int get hashCode { return Object.hash(modified, Object.hashAll(modifiedGreTunnels ?? const [])); } 
@override String toString() { return 'MagicModifiedTunnelsCollectionResponseResult(modified: $modified, modifiedGreTunnels: $modifiedGreTunnels)'; } 
 }
