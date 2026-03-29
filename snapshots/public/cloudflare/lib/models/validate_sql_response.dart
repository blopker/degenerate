// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_worker_pipelines_common_success.dart';import 'validate_sql_response_result.dart';final class ValidateSqlResponse {const ValidateSqlResponse({required this.result, required this.success, });

factory ValidateSqlResponse.fromJson(Map<String, dynamic> json) { return ValidateSqlResponse(
  result: ValidateSqlResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: CloudflarePipelinesWorkerPipelinesCommonSuccess.fromJson(json['success'] as bool),
); }

final ValidateSqlResponseResult result;

/// Indicates whether the API call was successful.
final CloudflarePipelinesWorkerPipelinesCommonSuccess success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success'); } 
ValidateSqlResponse copyWith({ValidateSqlResponseResult? result, CloudflarePipelinesWorkerPipelinesCommonSuccess? success, }) { return ValidateSqlResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ValidateSqlResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'ValidateSqlResponse(result: $result, success: $success)'; } 
 }
