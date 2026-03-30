// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_components_schemas_tunnel_single_response_result.dart';final class MagicComponentsSchemasTunnelSingleResponse {const MagicComponentsSchemasTunnelSingleResponse({this.result});

factory MagicComponentsSchemasTunnelSingleResponse.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasTunnelSingleResponse(
  result: json['result'] != null ? MagicComponentsSchemasTunnelSingleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicComponentsSchemasTunnelSingleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicComponentsSchemasTunnelSingleResponse copyWith({MagicComponentsSchemasTunnelSingleResponseResult Function()? result}) { return MagicComponentsSchemasTunnelSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasTunnelSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicComponentsSchemasTunnelSingleResponse(result: $result)'; } 
 }
