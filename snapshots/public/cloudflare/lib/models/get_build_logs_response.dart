// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_build_logs_response.dart';import 'builds_pagination_info.dart';import 'get_build_logs_response_errors.dart';@immutable final class GetBuildLogsResponse {const GetBuildLogsResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory GetBuildLogsResponse.fromJson(Map<String, dynamic> json) { return GetBuildLogsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => GetBuildLogsResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: BuildsBuildLogsResponse.fromJson(json['result'] as Map<String, dynamic>),
  resultInfo: json['result_info'] != null ? BuildsPaginationInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<GetBuildLogsResponseErrors> errors;

final List<String> messages;

final BuildsBuildLogsResponse result;

final BuildsPaginationInfo? resultInfo;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages,
  'result': result.toJson(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
GetBuildLogsResponse copyWith({List<GetBuildLogsResponseErrors>? errors, List<String>? messages, BuildsBuildLogsResponse? result, BuildsPaginationInfo? Function()? resultInfo, bool? success, }) { return GetBuildLogsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetBuildLogsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, resultInfo, success); } 
@override String toString() { return 'GetBuildLogsResponse(errors: $errors, messages: $messages, result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
