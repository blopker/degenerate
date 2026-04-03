// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_components_schemas_tunnels_collection_response_result.dart';@immutable final class MagicComponentsSchemasTunnelsCollectionResponse {const MagicComponentsSchemasTunnelsCollectionResponse({this.result});

factory MagicComponentsSchemasTunnelsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasTunnelsCollectionResponse(
  result: json['result'] != null ? MagicComponentsSchemasTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicComponentsSchemasTunnelsCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicComponentsSchemasTunnelsCollectionResponse copyWith({MagicComponentsSchemasTunnelsCollectionResponseResult Function()? result}) { return MagicComponentsSchemasTunnelsCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasTunnelsCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicComponentsSchemasTunnelsCollectionResponse(result: $result)'; } 
 }
