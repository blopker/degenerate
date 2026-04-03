// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_preview_response_result.dart';@immutable final class LoadBalancingPreviewResponse {const LoadBalancingPreviewResponse({this.result});

factory LoadBalancingPreviewResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingPreviewResponse(
  result: json['result'] != null ? LoadBalancingPreviewResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LoadBalancingPreviewResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingPreviewResponse copyWith({LoadBalancingPreviewResponseResult Function()? result}) { return LoadBalancingPreviewResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingPreviewResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingPreviewResponse(result: $result)'; } 
 }
