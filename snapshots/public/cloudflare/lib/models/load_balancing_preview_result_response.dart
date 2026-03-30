// GENERATED CODE - DO NOT MODIFY BY HAND

import 'load_balancing_preview_result_value.dart';final class LoadBalancingPreviewResultResponse {const LoadBalancingPreviewResultResponse({this.result});

factory LoadBalancingPreviewResultResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingPreviewResultResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, LoadBalancingPreviewResultValue.fromJson(v as Map<String, dynamic>))),
); }

/// Resulting health data from a preview operation.
final Map<String,LoadBalancingPreviewResultValue>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingPreviewResultResponse copyWith({Map<String, LoadBalancingPreviewResultValue> Function()? result}) { return LoadBalancingPreviewResultResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingPreviewResultResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingPreviewResultResponse(result: $result)'; } 
 }
