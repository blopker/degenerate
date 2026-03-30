// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_tunnel_modified_response_result.dart';final class MagicTunnelModifiedResponse {const MagicTunnelModifiedResponse({this.result});

factory MagicTunnelModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicTunnelModifiedResponse(
  result: json['result'] != null ? MagicTunnelModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicTunnelModifiedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicTunnelModifiedResponse copyWith({MagicTunnelModifiedResponseResult Function()? result}) { return MagicTunnelModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicTunnelModifiedResponse(result: $result)'; } 
 }
