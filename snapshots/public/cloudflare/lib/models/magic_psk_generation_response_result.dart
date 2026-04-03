// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_identifier.dart';import 'magic_psk.dart';import 'magic_psk_metadata.dart';@immutable final class MagicPskGenerationResponseResult {const MagicPskGenerationResponseResult({this.ipsecTunnelId, this.psk, this.pskMetadata, });

factory MagicPskGenerationResponseResult.fromJson(Map<String, dynamic> json) { return MagicPskGenerationResponseResult(
  ipsecTunnelId: json['ipsec_tunnel_id'] != null ? MagicIdentifier.fromJson(json['ipsec_tunnel_id'] as String) : null,
  psk: json['psk'] != null ? MagicPsk.fromJson(json['psk'] as String) : null,
  pskMetadata: json['psk_metadata'] != null ? MagicPskMetadata.fromJson(json['psk_metadata'] as Map<String, dynamic>) : null,
); }

/// Identifier
final MagicIdentifier? ipsecTunnelId;

/// A randomly generated or provided string for use in the IPsec tunnel.
final MagicPsk? psk;

final MagicPskMetadata? pskMetadata;

Map<String, dynamic> toJson() { return {
  if (ipsecTunnelId != null) 'ipsec_tunnel_id': ipsecTunnelId?.toJson(),
  if (psk != null) 'psk': psk?.toJson(),
  if (pskMetadata != null) 'psk_metadata': pskMetadata?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ipsec_tunnel_id', 'psk', 'psk_metadata'}.contains(key)); } 
MagicPskGenerationResponseResult copyWith({MagicIdentifier Function()? ipsecTunnelId, MagicPsk Function()? psk, MagicPskMetadata Function()? pskMetadata, }) { return MagicPskGenerationResponseResult(
  ipsecTunnelId: ipsecTunnelId != null ? ipsecTunnelId() : this.ipsecTunnelId,
  psk: psk != null ? psk() : this.psk,
  pskMetadata: pskMetadata != null ? pskMetadata() : this.pskMetadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicPskGenerationResponseResult &&
          ipsecTunnelId == other.ipsecTunnelId &&
          psk == other.psk &&
          pskMetadata == other.pskMetadata; } 
@override int get hashCode { return Object.hash(ipsecTunnelId, psk, pskMetadata); } 
@override String toString() { return 'MagicPskGenerationResponseResult(ipsecTunnelId: $ipsecTunnelId, psk: $psk, pskMetadata: $pskMetadata)'; } 
 }
