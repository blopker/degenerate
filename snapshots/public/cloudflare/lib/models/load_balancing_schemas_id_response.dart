// GENERATED CODE - DO NOT MODIFY BY HAND

import 'load_balancing_schemas_id_response_result.dart';final class LoadBalancingSchemasIdResponse {const LoadBalancingSchemasIdResponse({this.result});

factory LoadBalancingSchemasIdResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingSchemasIdResponse(
  result: json['result'] != null ? LoadBalancingSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LoadBalancingSchemasIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingSchemasIdResponse copyWith({LoadBalancingSchemasIdResponseResult Function()? result}) { return LoadBalancingSchemasIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingSchemasIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingSchemasIdResponse(result: $result)'; } 
 }
