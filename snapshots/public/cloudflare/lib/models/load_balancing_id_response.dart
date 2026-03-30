// GENERATED CODE - DO NOT MODIFY BY HAND

import 'load_balancing_id_response_result.dart';final class LoadBalancingIdResponse {const LoadBalancingIdResponse({this.result});

factory LoadBalancingIdResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingIdResponse(
  result: json['result'] != null ? LoadBalancingIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LoadBalancingIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingIdResponse copyWith({LoadBalancingIdResponseResult Function()? result}) { return LoadBalancingIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingIdResponse(result: $result)'; } 
 }
