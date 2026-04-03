// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_posture_rules.dart';@immutable final class TeamsDevicesSingleResponse {const TeamsDevicesSingleResponse({this.result});

factory TeamsDevicesSingleResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesSingleResponse(
  result: json['result'] != null ? TeamsDevicesDevicePostureRules.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDevicePostureRules? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesSingleResponse copyWith({TeamsDevicesDevicePostureRules Function()? result}) { return TeamsDevicesSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesSingleResponse(result: $result)'; } 
 }
