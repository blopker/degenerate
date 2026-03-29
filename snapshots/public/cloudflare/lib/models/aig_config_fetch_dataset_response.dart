// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_fetch_dataset_response_result.dart';final class AigConfigFetchDatasetResponse {const AigConfigFetchDatasetResponse({required this.result, required this.success, });

factory AigConfigFetchDatasetResponse.fromJson(Map<String, dynamic> json) { return AigConfigFetchDatasetResponse(
  result: AigConfigFetchDatasetResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigFetchDatasetResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigFetchDatasetResponse copyWith({AigConfigFetchDatasetResponseResult? result, bool? success, }) { return AigConfigFetchDatasetResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigFetchDatasetResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigFetchDatasetResponse(result: $result, success: $success)'; } 
 }
