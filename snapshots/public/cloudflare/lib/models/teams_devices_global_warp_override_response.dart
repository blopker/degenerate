// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_global_warp_override.dart';final class TeamsDevicesGlobalWarpOverrideResponse {const TeamsDevicesGlobalWarpOverrideResponse({this.result});

factory TeamsDevicesGlobalWarpOverrideResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesGlobalWarpOverrideResponse(
  result: json['result'] != null ? TeamsDevicesGlobalWarpOverride.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesGlobalWarpOverride? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesGlobalWarpOverrideResponse copyWith({TeamsDevicesGlobalWarpOverride Function()? result}) { return TeamsDevicesGlobalWarpOverrideResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesGlobalWarpOverrideResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesGlobalWarpOverrideResponse(result: $result)'; } 
 }
