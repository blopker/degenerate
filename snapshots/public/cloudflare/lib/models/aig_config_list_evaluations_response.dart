// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_list_evaluations_response_result.dart';final class AigConfigListEvaluationsResponse {const AigConfigListEvaluationsResponse({required this.result, required this.success, });

factory AigConfigListEvaluationsResponse.fromJson(Map<String, dynamic> json) { return AigConfigListEvaluationsResponse(
  result: (json['result'] as List<dynamic>).map((e) => AigConfigListEvaluationsResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigListEvaluationsResponseResult> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigListEvaluationsResponse copyWith({List<AigConfigListEvaluationsResponseResult>? result, bool? success, }) { return AigConfigListEvaluationsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListEvaluationsResponse &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), success); } 
@override String toString() { return 'AigConfigListEvaluationsResponse(result: $result, success: $success)'; } 
 }
