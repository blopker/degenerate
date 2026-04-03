// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_disable_for_time.dart';@immutable final class TeamsDevicesOverrideCodesResponseResult {const TeamsDevicesOverrideCodesResponseResult({this.disableForTime});

factory TeamsDevicesOverrideCodesResponseResult.fromJson(Map<String, dynamic> json) { return TeamsDevicesOverrideCodesResponseResult(
  disableForTime: json['disable_for_time'] != null ? TeamsDevicesDisableForTime.fromJson(json['disable_for_time'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDisableForTime? disableForTime;

Map<String, dynamic> toJson() { return {
  if (disableForTime != null) 'disable_for_time': disableForTime?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disable_for_time'}.contains(key)); } 
TeamsDevicesOverrideCodesResponseResult copyWith({TeamsDevicesDisableForTime Function()? disableForTime}) { return TeamsDevicesOverrideCodesResponseResult(
  disableForTime: disableForTime != null ? disableForTime() : this.disableForTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesOverrideCodesResponseResult &&
          disableForTime == other.disableForTime; } 
@override int get hashCode { return disableForTime.hashCode; } 
@override String toString() { return 'TeamsDevicesOverrideCodesResponseResult(disableForTime: $disableForTime)'; } 
 }
