// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_ipsec_tunnel.dart';final class MagicSchemasCreateIpsecTunnelResponse {const MagicSchemasCreateIpsecTunnelResponse({this.result});

factory MagicSchemasCreateIpsecTunnelResponse.fromJson(Map<String, dynamic> json) { return MagicSchemasCreateIpsecTunnelResponse(
  result: json['result'] != null ? MagicIpsecTunnel.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicIpsecTunnel? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSchemasCreateIpsecTunnelResponse copyWith({MagicIpsecTunnel Function()? result}) { return MagicSchemasCreateIpsecTunnelResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasCreateIpsecTunnelResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSchemasCreateIpsecTunnelResponse(result: $result)'; } 
 }
