// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_schemas_tunnel_single_response_result.dart';@immutable final class MagicSchemasTunnelSingleResponse {const MagicSchemasTunnelSingleResponse({this.result});

factory MagicSchemasTunnelSingleResponse.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelSingleResponse(
  result: json['result'] != null ? MagicSchemasTunnelSingleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSchemasTunnelSingleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSchemasTunnelSingleResponse copyWith({MagicSchemasTunnelSingleResponseResult Function()? result}) { return MagicSchemasTunnelSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSchemasTunnelSingleResponse(result: $result)'; } 
 }
