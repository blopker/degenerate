// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_gre_tunnel.dart';final class MagicCreateGreTunnelResponse {const MagicCreateGreTunnelResponse({this.result});

factory MagicCreateGreTunnelResponse.fromJson(Map<String, dynamic> json) { return MagicCreateGreTunnelResponse(
  result: json['result'] != null ? MagicGreTunnel.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicGreTunnel? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicCreateGreTunnelResponse copyWith({MagicGreTunnel Function()? result}) { return MagicCreateGreTunnelResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicCreateGreTunnelResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicCreateGreTunnelResponse(result: $result)'; } 
 }
