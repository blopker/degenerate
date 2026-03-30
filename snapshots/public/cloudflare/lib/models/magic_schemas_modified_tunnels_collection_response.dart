// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_schemas_modified_tunnels_collection_response_result.dart';final class MagicSchemasModifiedTunnelsCollectionResponse {const MagicSchemasModifiedTunnelsCollectionResponse({this.result});

factory MagicSchemasModifiedTunnelsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicSchemasModifiedTunnelsCollectionResponse(
  result: json['result'] != null ? MagicSchemasModifiedTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSchemasModifiedTunnelsCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSchemasModifiedTunnelsCollectionResponse copyWith({MagicSchemasModifiedTunnelsCollectionResponseResult Function()? result}) { return MagicSchemasModifiedTunnelsCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasModifiedTunnelsCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSchemasModifiedTunnelsCollectionResponse(result: $result)'; } 
 }
