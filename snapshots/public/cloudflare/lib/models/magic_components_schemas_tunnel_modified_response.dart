// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_components_schemas_tunnel_modified_response_result.dart';@immutable final class MagicComponentsSchemasTunnelModifiedResponse {const MagicComponentsSchemasTunnelModifiedResponse({this.result});

factory MagicComponentsSchemasTunnelModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasTunnelModifiedResponse(
  result: json['result'] != null ? MagicComponentsSchemasTunnelModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicComponentsSchemasTunnelModifiedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicComponentsSchemasTunnelModifiedResponse copyWith({MagicComponentsSchemasTunnelModifiedResponseResult Function()? result}) { return MagicComponentsSchemasTunnelModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasTunnelModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicComponentsSchemasTunnelModifiedResponse(result: $result)'; } 
 }
