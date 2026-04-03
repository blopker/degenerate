// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_fetch_evaluations_response_result.dart';@immutable final class AigConfigFetchEvaluationsResponse {const AigConfigFetchEvaluationsResponse({required this.result, required this.success, });

factory AigConfigFetchEvaluationsResponse.fromJson(Map<String, dynamic> json) { return AigConfigFetchEvaluationsResponse(
  result: AigConfigFetchEvaluationsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigFetchEvaluationsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigFetchEvaluationsResponse copyWith({AigConfigFetchEvaluationsResponseResult? result, bool? success, }) { return AigConfigFetchEvaluationsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigFetchEvaluationsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigFetchEvaluationsResponse(result: $result, success: $success)'; } 
 }
