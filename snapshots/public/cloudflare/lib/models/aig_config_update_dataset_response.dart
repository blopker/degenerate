// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_dataset_response_result.dart';@immutable final class AigConfigUpdateDatasetResponse {const AigConfigUpdateDatasetResponse({required this.result, required this.success, });

factory AigConfigUpdateDatasetResponse.fromJson(Map<String, dynamic> json) { return AigConfigUpdateDatasetResponse(
  result: AigConfigUpdateDatasetResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigUpdateDatasetResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigUpdateDatasetResponse copyWith({AigConfigUpdateDatasetResponseResult? result, bool? success, }) { return AigConfigUpdateDatasetResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateDatasetResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigUpdateDatasetResponse(result: $result, success: $success)'; } 
 }
