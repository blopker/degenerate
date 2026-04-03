// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_list_job_logs_response_result.dart';import 'ai_search_instance_list_job_logs_response_result_info.dart';@immutable final class AiSearchInstanceListJobLogsResponse {const AiSearchInstanceListJobLogsResponse({required this.result, required this.resultInfo, required this.success, });

factory AiSearchInstanceListJobLogsResponse.fromJson(Map<String, dynamic> json) { return AiSearchInstanceListJobLogsResponse(
  result: (json['result'] as List<dynamic>).map((e) => AiSearchInstanceListJobLogsResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: AiSearchInstanceListJobLogsResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<AiSearchInstanceListJobLogsResponseResult> result;

final AiSearchInstanceListJobLogsResponseResultInfo resultInfo;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'result_info': resultInfo.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('result_info') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchInstanceListJobLogsResponse copyWith({List<AiSearchInstanceListJobLogsResponseResult>? result, AiSearchInstanceListJobLogsResponseResultInfo? resultInfo, bool? success, }) { return AiSearchInstanceListJobLogsResponse(
  result: result ?? this.result,
  resultInfo: resultInfo ?? this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceListJobLogsResponse &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), resultInfo, success); } 
@override String toString() { return 'AiSearchInstanceListJobLogsResponse(result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
