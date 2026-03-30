// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_ipsec_tunnel.dart';final class MagicSchemasModifiedTunnelsCollectionResponseResult {const MagicSchemasModifiedTunnelsCollectionResponseResult({this.modified, this.modifiedIpsecTunnels, });

factory MagicSchemasModifiedTunnelsCollectionResponseResult.fromJson(Map<String, dynamic> json) { return MagicSchemasModifiedTunnelsCollectionResponseResult(
  modified: json['modified'] as bool?,
  modifiedIpsecTunnels: (json['modified_ipsec_tunnels'] as List<dynamic>?)?.map((e) => MagicIpsecTunnel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final bool? modified;

final List<MagicIpsecTunnel>? modifiedIpsecTunnels;

Map<String, dynamic> toJson() { return {
  'modified': ?modified,
  if (modifiedIpsecTunnels != null) 'modified_ipsec_tunnels': modifiedIpsecTunnels?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'modified', 'modified_ipsec_tunnels'}.contains(key)); } 
MagicSchemasModifiedTunnelsCollectionResponseResult copyWith({bool Function()? modified, List<MagicIpsecTunnel> Function()? modifiedIpsecTunnels, }) { return MagicSchemasModifiedTunnelsCollectionResponseResult(
  modified: modified != null ? modified() : this.modified,
  modifiedIpsecTunnels: modifiedIpsecTunnels != null ? modifiedIpsecTunnels() : this.modifiedIpsecTunnels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasModifiedTunnelsCollectionResponseResult &&
          modified == other.modified &&
          listEquals(modifiedIpsecTunnels, other.modifiedIpsecTunnels); } 
@override int get hashCode { return Object.hash(modified, Object.hashAll(modifiedIpsecTunnels ?? const [])); } 
@override String toString() { return 'MagicSchemasModifiedTunnelsCollectionResponseResult(modified: $modified, modifiedIpsecTunnels: $modifiedIpsecTunnels)'; } 
 }
