// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_worker_pipelines_common_success.dart';import 'sinks_response_result.dart';import 'sinks_response_result_info.dart';@immutable final class SinksResponse {const SinksResponse({required this.result, required this.resultInfo, required this.success, });

factory SinksResponse.fromJson(Map<String, dynamic> json) { return SinksResponse(
  result: (json['result'] as List<dynamic>).map((e) => SinksResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: SinksResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>),
  success: CloudflarePipelinesWorkerPipelinesCommonSuccess.fromJson(json['success'] as bool),
); }

final List<SinksResponseResult> result;

final SinksResponseResultInfo resultInfo;

/// Indicates whether the API call was successful.
final CloudflarePipelinesWorkerPipelinesCommonSuccess success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'result_info': resultInfo.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('result_info') &&
      json.containsKey('success'); } 
SinksResponse copyWith({List<SinksResponseResult>? result, SinksResponseResultInfo? resultInfo, CloudflarePipelinesWorkerPipelinesCommonSuccess? success, }) { return SinksResponse(
  result: result ?? this.result,
  resultInfo: resultInfo ?? this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SinksResponse &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), resultInfo, success); } 
@override String toString() { return 'SinksResponse(result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
