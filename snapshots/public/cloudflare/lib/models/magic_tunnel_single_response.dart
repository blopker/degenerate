// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_tunnel_single_response_result.dart';final class MagicTunnelSingleResponse {const MagicTunnelSingleResponse({this.result});

factory MagicTunnelSingleResponse.fromJson(Map<String, dynamic> json) { return MagicTunnelSingleResponse(
  result: json['result'] != null ? MagicTunnelSingleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicTunnelSingleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicTunnelSingleResponse copyWith({MagicTunnelSingleResponseResult Function()? result}) { return MagicTunnelSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicTunnelSingleResponse(result: $result)'; } 
 }
