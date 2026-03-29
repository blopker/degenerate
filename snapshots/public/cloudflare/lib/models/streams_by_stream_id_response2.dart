// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_worker_pipelines_common_success.dart';import 'streams_by_stream_id_response2_result.dart';final class StreamsByStreamIdResponse2 {const StreamsByStreamIdResponse2({required this.result, required this.success, });

factory StreamsByStreamIdResponse2.fromJson(Map<String, dynamic> json) { return StreamsByStreamIdResponse2(
  result: StreamsByStreamIdResponse2Result.fromJson(json['result'] as Map<String, dynamic>),
  success: CloudflarePipelinesWorkerPipelinesCommonSuccess.fromJson(json['success'] as bool),
); }

final StreamsByStreamIdResponse2Result result;

/// Indicates whether the API call was successful.
final CloudflarePipelinesWorkerPipelinesCommonSuccess success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success'); } 
StreamsByStreamIdResponse2 copyWith({StreamsByStreamIdResponse2Result? result, CloudflarePipelinesWorkerPipelinesCommonSuccess? success, }) { return StreamsByStreamIdResponse2(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsByStreamIdResponse2 &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'StreamsByStreamIdResponse2(result: $result, success: $success)'; } 
 }
