// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_create_dataset_response_result.dart';@immutable final class AigConfigCreateDatasetResponse {const AigConfigCreateDatasetResponse({required this.result, required this.success, });

factory AigConfigCreateDatasetResponse.fromJson(Map<String, dynamic> json) { return AigConfigCreateDatasetResponse(
  result: AigConfigCreateDatasetResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigCreateDatasetResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigCreateDatasetResponse copyWith({AigConfigCreateDatasetResponseResult? result, bool? success, }) { return AigConfigCreateDatasetResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigCreateDatasetResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigCreateDatasetResponse(result: $result, success: $success)'; } 
 }
