// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_worker_pipelines_common_success.dart';import 'streams_by_stream_id_response_result.dart';@immutable final class StreamsByStreamIdResponse {const StreamsByStreamIdResponse({required this.result, required this.success, });

factory StreamsByStreamIdResponse.fromJson(Map<String, dynamic> json) { return StreamsByStreamIdResponse(
  result: StreamsByStreamIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: CloudflarePipelinesWorkerPipelinesCommonSuccess.fromJson(json['success'] as bool),
); }

final StreamsByStreamIdResponseResult result;

/// Indicates whether the API call was successful.
final CloudflarePipelinesWorkerPipelinesCommonSuccess success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success'); } 
StreamsByStreamIdResponse copyWith({StreamsByStreamIdResponseResult? result, CloudflarePipelinesWorkerPipelinesCommonSuccess? success, }) { return StreamsByStreamIdResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsByStreamIdResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'StreamsByStreamIdResponse(result: $result, success: $success)'; } 
 }
