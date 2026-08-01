// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_messages2.dart';import 'teams_devices_override_codes_response_result.dart';import 'teams_devices_result_info.dart';@immutable final class TeamsDevicesOverrideCodesResponse {const TeamsDevicesOverrideCodesResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory TeamsDevicesOverrideCodesResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesOverrideCodesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: TeamsDevicesOverrideCodesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? TeamsDevicesResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<TeamsDevicesMessages2> errors;

final List<TeamsDevicesMessages2> messages;

final TeamsDevicesOverrideCodesResponseResult result;

/// Whether the API call was successful.
final bool success;

final TeamsDevicesResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
TeamsDevicesOverrideCodesResponse copyWith({List<TeamsDevicesMessages2>? errors, List<TeamsDevicesMessages2>? messages, TeamsDevicesOverrideCodesResponseResult? result, bool? success, TeamsDevicesResultInfo? Function()? resultInfo, }) { return TeamsDevicesOverrideCodesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesOverrideCodesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, resultInfo); } 
@override String toString() { return 'TeamsDevicesOverrideCodesResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
