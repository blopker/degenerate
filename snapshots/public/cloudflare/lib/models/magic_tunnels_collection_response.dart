// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_tunnels_collection_response_result.dart';final class MagicTunnelsCollectionResponse {const MagicTunnelsCollectionResponse({this.result});

factory MagicTunnelsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicTunnelsCollectionResponse(
  result: json['result'] != null ? MagicTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicTunnelsCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicTunnelsCollectionResponse copyWith({MagicTunnelsCollectionResponseResult Function()? result}) { return MagicTunnelsCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelsCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicTunnelsCollectionResponse(result: $result)'; } 
 }
