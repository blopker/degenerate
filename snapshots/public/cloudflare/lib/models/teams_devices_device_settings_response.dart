// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_settings_policy.dart';@immutable final class TeamsDevicesDeviceSettingsResponse {const TeamsDevicesDeviceSettingsResponse({this.result});

factory TeamsDevicesDeviceSettingsResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesDeviceSettingsResponse(
  result: json['result'] != null ? TeamsDevicesDeviceSettingsPolicy.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDeviceSettingsPolicy? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDeviceSettingsResponse copyWith({TeamsDevicesDeviceSettingsPolicy Function()? result}) { return TeamsDevicesDeviceSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDeviceSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesDeviceSettingsResponse(result: $result)'; } 
 }
