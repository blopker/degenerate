// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_tunnel_deleted_response_result.dart';final class MagicTunnelDeletedResponse {const MagicTunnelDeletedResponse({this.result});

factory MagicTunnelDeletedResponse.fromJson(Map<String, dynamic> json) { return MagicTunnelDeletedResponse(
  result: json['result'] != null ? MagicTunnelDeletedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicTunnelDeletedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicTunnelDeletedResponse copyWith({MagicTunnelDeletedResponseResult Function()? result}) { return MagicTunnelDeletedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelDeletedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicTunnelDeletedResponse(result: $result)'; } 
 }
