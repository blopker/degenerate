// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_worker_pipelines_common_success.dart';import 'sinks_by_sink_id_response_result.dart';@immutable final class SinksBySinkIdResponse {const SinksBySinkIdResponse({required this.result, required this.success, });

factory SinksBySinkIdResponse.fromJson(Map<String, dynamic> json) { return SinksBySinkIdResponse(
  result: SinksBySinkIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: CloudflarePipelinesWorkerPipelinesCommonSuccess.fromJson(json['success'] as bool),
); }

final SinksBySinkIdResponseResult result;

/// Indicates whether the API call was successful.
final CloudflarePipelinesWorkerPipelinesCommonSuccess success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success'); } 
SinksBySinkIdResponse copyWith({SinksBySinkIdResponseResult? result, CloudflarePipelinesWorkerPipelinesCommonSuccess? success, }) { return SinksBySinkIdResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SinksBySinkIdResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'SinksBySinkIdResponse(result: $result, success: $success)'; } 
 }
