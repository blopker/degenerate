// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_components_schemas_modified_tunnels_collection_response_result.dart';@immutable final class MagicComponentsSchemasModifiedTunnelsCollectionResponse {const MagicComponentsSchemasModifiedTunnelsCollectionResponse({this.result});

factory MagicComponentsSchemasModifiedTunnelsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasModifiedTunnelsCollectionResponse(
  result: json['result'] != null ? MagicComponentsSchemasModifiedTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicComponentsSchemasModifiedTunnelsCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicComponentsSchemasModifiedTunnelsCollectionResponse copyWith({MagicComponentsSchemasModifiedTunnelsCollectionResponseResult Function()? result}) { return MagicComponentsSchemasModifiedTunnelsCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasModifiedTunnelsCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicComponentsSchemasModifiedTunnelsCollectionResponse(result: $result)'; } 
 }
