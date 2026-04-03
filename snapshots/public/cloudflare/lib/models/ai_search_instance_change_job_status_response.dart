// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_change_job_status_response_result.dart';@immutable final class AiSearchInstanceChangeJobStatusResponse {const AiSearchInstanceChangeJobStatusResponse({required this.result, required this.success, });

factory AiSearchInstanceChangeJobStatusResponse.fromJson(Map<String, dynamic> json) { return AiSearchInstanceChangeJobStatusResponse(
  result: AiSearchInstanceChangeJobStatusResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AiSearchInstanceChangeJobStatusResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchInstanceChangeJobStatusResponse copyWith({AiSearchInstanceChangeJobStatusResponseResult? result, bool? success, }) { return AiSearchInstanceChangeJobStatusResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceChangeJobStatusResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AiSearchInstanceChangeJobStatusResponse(result: $result, success: $success)'; } 
 }
