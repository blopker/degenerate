// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_fleet_status_over_time_response_result.dart';import 'digital_experience_monitoring_fleet_status_over_time_response_result_info.dart';import 'digital_experience_monitoring_messages2.dart';@immutable final class DigitalExperienceMonitoringFleetStatusOverTimeResponse {const DigitalExperienceMonitoringFleetStatusOverTimeResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DigitalExperienceMonitoringFleetStatusOverTimeResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusOverTimeResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DigitalExperienceMonitoringFleetStatusOverTimeResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? DigitalExperienceMonitoringFleetStatusOverTimeResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DigitalExperienceMonitoringMessages2> errors;

final List<DigitalExperienceMonitoringMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DigitalExperienceMonitoringFleetStatusOverTimeResponseResultInfo? resultInfo;

final DigitalExperienceMonitoringFleetStatusOverTimeResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DigitalExperienceMonitoringFleetStatusOverTimeResponse copyWith({List<DigitalExperienceMonitoringMessages2>? errors, List<DigitalExperienceMonitoringMessages2>? messages, bool? success, DigitalExperienceMonitoringFleetStatusOverTimeResponseResultInfo Function()? resultInfo, DigitalExperienceMonitoringFleetStatusOverTimeResponseResult Function()? result, }) { return DigitalExperienceMonitoringFleetStatusOverTimeResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusOverTimeResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusOverTimeResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
