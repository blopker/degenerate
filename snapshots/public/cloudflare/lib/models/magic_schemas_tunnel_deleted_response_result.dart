// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_ipsec_tunnel.dart';@immutable final class MagicSchemasTunnelDeletedResponseResult {const MagicSchemasTunnelDeletedResponseResult({this.deleted, this.deletedIpsecTunnel, });

factory MagicSchemasTunnelDeletedResponseResult.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelDeletedResponseResult(
  deleted: json['deleted'] as bool?,
  deletedIpsecTunnel: json['deleted_ipsec_tunnel'] != null ? MagicIpsecTunnel.fromJson(json['deleted_ipsec_tunnel'] as Map<String, dynamic>) : null,
); }

final bool? deleted;

final MagicIpsecTunnel? deletedIpsecTunnel;

Map<String, dynamic> toJson() { return {
  'deleted': ?deleted,
  if (deletedIpsecTunnel != null) 'deleted_ipsec_tunnel': deletedIpsecTunnel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deleted', 'deleted_ipsec_tunnel'}.contains(key)); } 
MagicSchemasTunnelDeletedResponseResult copyWith({bool Function()? deleted, MagicIpsecTunnel Function()? deletedIpsecTunnel, }) { return MagicSchemasTunnelDeletedResponseResult(
  deleted: deleted != null ? deleted() : this.deleted,
  deletedIpsecTunnel: deletedIpsecTunnel != null ? deletedIpsecTunnel() : this.deletedIpsecTunnel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelDeletedResponseResult &&
          deleted == other.deleted &&
          deletedIpsecTunnel == other.deletedIpsecTunnel; } 
@override int get hashCode { return Object.hash(deleted, deletedIpsecTunnel); } 
@override String toString() { return 'MagicSchemasTunnelDeletedResponseResult(deleted: $deleted, deletedIpsecTunnel: $deletedIpsecTunnel)'; } 
 }
