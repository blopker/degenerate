// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_dex_test_schemas_http.dart';import 'teams_devices_messages2.dart';@immutable final class TeamsDevicesDexSingleResponse {const TeamsDevicesDexSingleResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory TeamsDevicesDexSingleResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesDexSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: TeamsDevicesDeviceDexTestSchemasHttp.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<TeamsDevicesMessages2> errors;

final List<TeamsDevicesMessages2> messages;

final TeamsDevicesDeviceDexTestSchemasHttp result;

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
TeamsDevicesDexSingleResponse copyWith({List<TeamsDevicesMessages2>? errors, List<TeamsDevicesMessages2>? messages, TeamsDevicesDeviceDexTestSchemasHttp? result, bool? success, }) { return TeamsDevicesDexSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDexSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'TeamsDevicesDexSingleResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
