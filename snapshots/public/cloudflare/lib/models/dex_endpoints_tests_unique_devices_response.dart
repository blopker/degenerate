// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_messages2.dart';import 'digital_experience_monitoring_unique_devices_response.dart';@immutable final class DexEndpointsTestsUniqueDevicesResponse {const DexEndpointsTestsUniqueDevicesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DexEndpointsTestsUniqueDevicesResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsTestsUniqueDevicesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DigitalExperienceMonitoringUniqueDevicesResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DigitalExperienceMonitoringMessages2> errors;

final List<DigitalExperienceMonitoringMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DigitalExperienceMonitoringUniqueDevicesResponse? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DexEndpointsTestsUniqueDevicesResponse copyWith({List<DigitalExperienceMonitoringMessages2>? errors, List<DigitalExperienceMonitoringMessages2>? messages, bool? success, DigitalExperienceMonitoringUniqueDevicesResponse Function()? result, }) { return DexEndpointsTestsUniqueDevicesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsTestsUniqueDevicesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DexEndpointsTestsUniqueDevicesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
