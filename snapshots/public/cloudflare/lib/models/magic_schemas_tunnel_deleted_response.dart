// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_schemas_tunnel_deleted_response_result.dart';@immutable final class MagicSchemasTunnelDeletedResponse {const MagicSchemasTunnelDeletedResponse({this.result});

factory MagicSchemasTunnelDeletedResponse.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelDeletedResponse(
  result: json['result'] != null ? MagicSchemasTunnelDeletedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSchemasTunnelDeletedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSchemasTunnelDeletedResponse copyWith({MagicSchemasTunnelDeletedResponseResult Function()? result}) { return MagicSchemasTunnelDeletedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelDeletedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSchemasTunnelDeletedResponse(result: $result)'; } 
 }
