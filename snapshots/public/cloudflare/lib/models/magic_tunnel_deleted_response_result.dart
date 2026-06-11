// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_gre_tunnel.dart';@immutable final class MagicTunnelDeletedResponseResult {const MagicTunnelDeletedResponseResult({this.deleted, this.deletedGreTunnel, });

factory MagicTunnelDeletedResponseResult.fromJson(Map<String, dynamic> json) { return MagicTunnelDeletedResponseResult(
  deleted: json['deleted'] as bool?,
  deletedGreTunnel: json['deleted_gre_tunnel'] != null ? MagicGreTunnel.fromJson(json['deleted_gre_tunnel'] as Map<String, dynamic>) : null,
); }

final bool? deleted;

final MagicGreTunnel? deletedGreTunnel;

Map<String, dynamic> toJson() { return {
  'deleted': ?deleted,
  if (deletedGreTunnel != null) 'deleted_gre_tunnel': deletedGreTunnel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deleted', 'deleted_gre_tunnel'}.contains(key)); } 
MagicTunnelDeletedResponseResult copyWith({bool Function()? deleted, MagicGreTunnel Function()? deletedGreTunnel, }) { return MagicTunnelDeletedResponseResult(
  deleted: deleted != null ? deleted() : this.deleted,
  deletedGreTunnel: deletedGreTunnel != null ? deletedGreTunnel() : this.deletedGreTunnel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelDeletedResponseResult &&
          deleted == other.deleted &&
          deletedGreTunnel == other.deletedGreTunnel; } 
@override int get hashCode { return Object.hash(deleted, deletedGreTunnel); } 
@override String toString() { return 'MagicTunnelDeletedResponseResult(deleted: $deleted, deletedGreTunnel: $deletedGreTunnel)'; } 
 }
