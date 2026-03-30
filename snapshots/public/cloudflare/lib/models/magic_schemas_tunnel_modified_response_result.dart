// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_ipsec_tunnel.dart';final class MagicSchemasTunnelModifiedResponseResult {const MagicSchemasTunnelModifiedResponseResult({this.modified, this.modifiedIpsecTunnel, });

factory MagicSchemasTunnelModifiedResponseResult.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelModifiedResponseResult(
  modified: json['modified'] as bool?,
  modifiedIpsecTunnel: json['modified_ipsec_tunnel'] != null ? MagicIpsecTunnel.fromJson(json['modified_ipsec_tunnel'] as Map<String, dynamic>) : null,
); }

final bool? modified;

final MagicIpsecTunnel? modifiedIpsecTunnel;

Map<String, dynamic> toJson() { return {
  'modified': ?modified,
  if (modifiedIpsecTunnel != null) 'modified_ipsec_tunnel': modifiedIpsecTunnel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'modified', 'modified_ipsec_tunnel'}.contains(key)); } 
MagicSchemasTunnelModifiedResponseResult copyWith({bool Function()? modified, MagicIpsecTunnel Function()? modifiedIpsecTunnel, }) { return MagicSchemasTunnelModifiedResponseResult(
  modified: modified != null ? modified() : this.modified,
  modifiedIpsecTunnel: modifiedIpsecTunnel != null ? modifiedIpsecTunnel() : this.modifiedIpsecTunnel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelModifiedResponseResult &&
          modified == other.modified &&
          modifiedIpsecTunnel == other.modifiedIpsecTunnel; } 
@override int get hashCode { return Object.hash(modified, modifiedIpsecTunnel); } 
@override String toString() { return 'MagicSchemasTunnelModifiedResponseResult(modified: $modified, modifiedIpsecTunnel: $modifiedIpsecTunnel)'; } 
 }
