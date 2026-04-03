// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device.dart';@immutable final class TeamsDevicesDeviceResponse {const TeamsDevicesDeviceResponse({this.result});

factory TeamsDevicesDeviceResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesDeviceResponse(
  result: json['result'] != null ? TeamsDevicesDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDeviceResponse copyWith({TeamsDevicesDevice Function()? result}) { return TeamsDevicesDeviceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDeviceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesDeviceResponse(result: $result)'; } 
 }
