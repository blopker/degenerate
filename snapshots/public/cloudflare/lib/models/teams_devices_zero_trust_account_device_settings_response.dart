// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_zero_trust_account_device_settings.dart';final class TeamsDevicesZeroTrustAccountDeviceSettingsResponse {const TeamsDevicesZeroTrustAccountDeviceSettingsResponse({this.result});

factory TeamsDevicesZeroTrustAccountDeviceSettingsResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesZeroTrustAccountDeviceSettingsResponse(
  result: json['result'] != null ? TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesZeroTrustAccountDeviceSettings? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesZeroTrustAccountDeviceSettingsResponse copyWith({TeamsDevicesZeroTrustAccountDeviceSettings Function()? result}) { return TeamsDevicesZeroTrustAccountDeviceSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesZeroTrustAccountDeviceSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesZeroTrustAccountDeviceSettingsResponse(result: $result)'; } 
 }
