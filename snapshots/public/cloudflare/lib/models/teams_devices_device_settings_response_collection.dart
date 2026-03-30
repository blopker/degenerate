// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_settings_policy.dart';final class TeamsDevicesDeviceSettingsResponseCollection {const TeamsDevicesDeviceSettingsResponseCollection({this.result});

factory TeamsDevicesDeviceSettingsResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesDeviceSettingsResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesDeviceSettingsPolicy.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesDeviceSettingsPolicy>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDeviceSettingsResponseCollection copyWith({List<TeamsDevicesDeviceSettingsPolicy> Function()? result}) { return TeamsDevicesDeviceSettingsResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDeviceSettingsResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesDeviceSettingsResponseCollection(result: $result)'; } 
 }
