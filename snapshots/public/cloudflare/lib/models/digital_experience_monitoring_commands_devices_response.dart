// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_commands_devices_response_devices.dart';final class DigitalExperienceMonitoringCommandsDevicesResponse {const DigitalExperienceMonitoringCommandsDevicesResponse({this.devices});

factory DigitalExperienceMonitoringCommandsDevicesResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringCommandsDevicesResponse(
  devices: (json['devices'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringCommandsDevicesResponseDevices.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// List of eligible devices
final List<DigitalExperienceMonitoringCommandsDevicesResponseDevices>? devices;

Map<String, dynamic> toJson() { return {
  if (devices != null) 'devices': devices?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'devices'}.contains(key)); } 
DigitalExperienceMonitoringCommandsDevicesResponse copyWith({List<DigitalExperienceMonitoringCommandsDevicesResponseDevices> Function()? devices}) { return DigitalExperienceMonitoringCommandsDevicesResponse(
  devices: devices != null ? devices() : this.devices,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringCommandsDevicesResponse &&
          listEquals(devices, other.devices); } 
@override int get hashCode { return Object.hashAll(devices ?? const []).hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringCommandsDevicesResponse(devices: $devices)'; } 
 }
