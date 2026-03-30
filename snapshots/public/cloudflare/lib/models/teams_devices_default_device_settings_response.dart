// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_default_device_settings_policy.dart';final class TeamsDevicesDefaultDeviceSettingsResponse {const TeamsDevicesDefaultDeviceSettingsResponse({this.result});

factory TeamsDevicesDefaultDeviceSettingsResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesDefaultDeviceSettingsResponse(
  result: json['result'] != null ? TeamsDevicesDefaultDeviceSettingsPolicy.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDefaultDeviceSettingsPolicy? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDefaultDeviceSettingsResponse copyWith({TeamsDevicesDefaultDeviceSettingsPolicy Function()? result}) { return TeamsDevicesDefaultDeviceSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDefaultDeviceSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesDefaultDeviceSettingsResponse(result: $result)'; } 
 }
