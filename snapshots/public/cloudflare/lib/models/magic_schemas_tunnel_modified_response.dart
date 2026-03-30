// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_schemas_tunnel_modified_response_result.dart';final class MagicSchemasTunnelModifiedResponse {const MagicSchemasTunnelModifiedResponse({this.result});

factory MagicSchemasTunnelModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelModifiedResponse(
  result: json['result'] != null ? MagicSchemasTunnelModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSchemasTunnelModifiedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSchemasTunnelModifiedResponse copyWith({MagicSchemasTunnelModifiedResponseResult Function()? result}) { return MagicSchemasTunnelModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSchemasTunnelModifiedResponse(result: $result)'; } 
 }
