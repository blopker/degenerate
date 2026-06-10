// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_messages2.dart';import 'digital_experience_monitoring_warp_config_change_event.dart';import 'digital_experience_monitoring_warp_events_response2.dart';import 'digital_experience_monitoring_warp_toggle_change_event.dart';import 'list_warp_change_events_response_result_info.dart';@immutable final class ListWarpChangeEventsResponse {const ListWarpChangeEventsResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory ListWarpChangeEventsResponse.fromJson(Map<String, dynamic> json) { return ListWarpChangeEventsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ListWarpChangeEventsResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => DigitalExperienceMonitoringWarpToggleChangeEvent.fromJson(v as Map<String, dynamic>), fromB: (v) => DigitalExperienceMonitoringWarpConfigChangeEvent.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<DigitalExperienceMonitoringMessages2> errors;

final List<DigitalExperienceMonitoringMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ListWarpChangeEventsResponseResultInfo? resultInfo;

final List<DigitalExperienceMonitoringWarpEventsResponse2>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ListWarpChangeEventsResponse copyWith({List<DigitalExperienceMonitoringMessages2>? errors, List<DigitalExperienceMonitoringMessages2>? messages, bool? success, ListWarpChangeEventsResponseResultInfo Function()? resultInfo, List<DigitalExperienceMonitoringWarpEventsResponse2> Function()? result, }) { return ListWarpChangeEventsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListWarpChangeEventsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ListWarpChangeEventsResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
