// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_files_response_result.dart';import 'autorag_config_files_response_result_info.dart';final class AutoragConfigFilesResponse {const AutoragConfigFilesResponse({required this.result, required this.resultInfo, required this.success, });

factory AutoragConfigFilesResponse.fromJson(Map<String, dynamic> json) { return AutoragConfigFilesResponse(
  result: (json['result'] as List<dynamic>).map((e) => AutoragConfigFilesResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: AutoragConfigFilesResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<AutoragConfigFilesResponseResult> result;

final AutoragConfigFilesResponseResultInfo resultInfo;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'result_info': resultInfo.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('result_info') &&
      json.containsKey('success') && json['success'] is bool; } 
AutoragConfigFilesResponse copyWith({List<AutoragConfigFilesResponseResult>? result, AutoragConfigFilesResponseResultInfo? resultInfo, bool? success, }) { return AutoragConfigFilesResponse(
  result: result ?? this.result,
  resultInfo: resultInfo ?? this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigFilesResponse &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), resultInfo, success); } 
@override String toString() { return 'AutoragConfigFilesResponse(result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
