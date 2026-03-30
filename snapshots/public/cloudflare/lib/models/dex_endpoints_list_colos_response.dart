// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_colos_response2.dart';import 'digital_experience_monitoring_messages2.dart';final class DexEndpointsListColosResponse {const DexEndpointsListColosResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DexEndpointsListColosResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsListColosResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringColosResponse2.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DigitalExperienceMonitoringMessages2> errors;

final List<DigitalExperienceMonitoringMessages2> messages;

/// Whether the API call was successful.
final bool success;

/// array of colos.
final List<DigitalExperienceMonitoringColosResponse2>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DexEndpointsListColosResponse copyWith({List<DigitalExperienceMonitoringMessages2>? errors, List<DigitalExperienceMonitoringMessages2>? messages, bool? success, List<DigitalExperienceMonitoringColosResponse2> Function()? result, }) { return DexEndpointsListColosResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsListColosResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DexEndpointsListColosResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
