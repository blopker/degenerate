// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_schemas_tunnels_collection_response_result.dart';final class MagicSchemasTunnelsCollectionResponse {const MagicSchemasTunnelsCollectionResponse({this.result});

factory MagicSchemasTunnelsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelsCollectionResponse(
  result: json['result'] != null ? MagicSchemasTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSchemasTunnelsCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSchemasTunnelsCollectionResponse copyWith({MagicSchemasTunnelsCollectionResponseResult Function()? result}) { return MagicSchemasTunnelsCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelsCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSchemasTunnelsCollectionResponse(result: $result)'; } 
 }
