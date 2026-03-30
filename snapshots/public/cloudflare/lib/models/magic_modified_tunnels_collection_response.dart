// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_modified_tunnels_collection_response_result.dart';final class MagicModifiedTunnelsCollectionResponse {const MagicModifiedTunnelsCollectionResponse({this.result});

factory MagicModifiedTunnelsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicModifiedTunnelsCollectionResponse(
  result: json['result'] != null ? MagicModifiedTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicModifiedTunnelsCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicModifiedTunnelsCollectionResponse copyWith({MagicModifiedTunnelsCollectionResponseResult Function()? result}) { return MagicModifiedTunnelsCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicModifiedTunnelsCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicModifiedTunnelsCollectionResponse(result: $result)'; } 
 }
