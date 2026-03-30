// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_components_schemas_name.dart';import 'teams_devices_config_request.dart';import 'teams_devices_crowdstrike_config_request.dart';import 'teams_devices_custom_s2s_config_request.dart';import 'teams_devices_interval.dart';import 'teams_devices_intune_config_request.dart';import 'teams_devices_kolide_config_request.dart';import 'teams_devices_schemas_type.dart';import 'teams_devices_sentinelone_s2s_config_request.dart';import 'teams_devices_tanium_config_request.dart';import 'teams_devices_uptycs_config_request.dart';import 'teams_devices_workspace_one_config_request.dart';final class DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest {const DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest({this.config, this.interval, this.name, this.type, });

factory DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest.fromJson(Map<String, dynamic> json) { return DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest(
  config: json['config'] != null ? OneOf8.parse(json['config'], fromA: (v) => TeamsDevicesWorkspaceOneConfigRequest.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesCrowdstrikeConfigRequest.fromJson(v as Map<String, dynamic>), fromC: (v) => TeamsDevicesUptycsConfigRequest.fromJson(v as Map<String, dynamic>), fromD: (v) => TeamsDevicesIntuneConfigRequest.fromJson(v as Map<String, dynamic>), fromE: (v) => TeamsDevicesKolideConfigRequest.fromJson(v as Map<String, dynamic>), fromF: (v) => TeamsDevicesTaniumConfigRequest.fromJson(v as Map<String, dynamic>), fromG: (v) => TeamsDevicesSentineloneS2sConfigRequest.fromJson(v as Map<String, dynamic>), fromH: (v) => TeamsDevicesCustomS2sConfigRequest.fromJson(v as Map<String, dynamic>),) : null,
  interval: json['interval'] != null ? TeamsDevicesInterval.fromJson(json['interval'] as String) : null,
  name: json['name'] != null ? TeamsDevicesComponentsSchemasName.fromJson(json['name'] as String) : null,
  type: json['type'] != null ? TeamsDevicesSchemasType.fromJson(json['type'] as String) : null,
); }

final TeamsDevicesConfigRequest? config;

/// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
final TeamsDevicesInterval? interval;

/// The name of the device posture integration.
final TeamsDevicesComponentsSchemasName? name;

/// The type of device posture integration.
final TeamsDevicesSchemasType? type;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  if (interval != null) 'interval': interval?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'config', 'interval', 'name', 'type'}.contains(key)); } 
DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest copyWith({TeamsDevicesConfigRequest Function()? config, TeamsDevicesInterval Function()? interval, TeamsDevicesComponentsSchemasName Function()? name, TeamsDevicesSchemasType Function()? type, }) { return DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest(
  config: config != null ? config() : this.config,
  interval: interval != null ? interval() : this.interval,
  name: name != null ? name() : this.name,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest &&
          config == other.config &&
          interval == other.interval &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, interval, name, type); } 
@override String toString() { return 'DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest(config: $config, interval: $interval, name: $name, type: $type)'; } 
 }
