// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_messages2.dart';import 'teams_devices_zero_trust_account_device_settings.dart';@immutable final class TeamsDevicesZeroTrustAccountDeviceSettingsResponse {const TeamsDevicesZeroTrustAccountDeviceSettingsResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory TeamsDevicesZeroTrustAccountDeviceSettingsResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesZeroTrustAccountDeviceSettingsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<TeamsDevicesMessages2> errors;

final List<TeamsDevicesMessages2> messages;

final TeamsDevicesZeroTrustAccountDeviceSettings result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
TeamsDevicesZeroTrustAccountDeviceSettingsResponse copyWith({List<TeamsDevicesMessages2>? errors, List<TeamsDevicesMessages2>? messages, TeamsDevicesZeroTrustAccountDeviceSettings? result, bool? success, }) { return TeamsDevicesZeroTrustAccountDeviceSettingsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesZeroTrustAccountDeviceSettingsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'TeamsDevicesZeroTrustAccountDeviceSettingsResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
