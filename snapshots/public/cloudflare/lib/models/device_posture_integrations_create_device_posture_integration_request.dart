// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_components_schemas_name.dart';import 'teams_devices_config_request.dart';import 'teams_devices_crowdstrike_config_request.dart';import 'teams_devices_custom_s2s_config_request.dart';import 'teams_devices_interval.dart';import 'teams_devices_intune_config_request.dart';import 'teams_devices_kolide_config_request.dart';import 'teams_devices_schemas_type.dart';import 'teams_devices_sentinelone_s2s_config_request.dart';import 'teams_devices_tanium_config_request.dart';import 'teams_devices_uptycs_config_request.dart';import 'teams_devices_workspace_one_config_request.dart';final class DevicePostureIntegrationsCreateDevicePostureIntegrationRequest {const DevicePostureIntegrationsCreateDevicePostureIntegrationRequest({required this.config, required this.interval, required this.name, required this.type, });

factory DevicePostureIntegrationsCreateDevicePostureIntegrationRequest.fromJson(Map<String, dynamic> json) { return DevicePostureIntegrationsCreateDevicePostureIntegrationRequest(
  config: OneOf8.parse(json['config'], fromA: (v) => TeamsDevicesWorkspaceOneConfigRequest.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesCrowdstrikeConfigRequest.fromJson(v as Map<String, dynamic>), fromC: (v) => TeamsDevicesUptycsConfigRequest.fromJson(v as Map<String, dynamic>), fromD: (v) => TeamsDevicesIntuneConfigRequest.fromJson(v as Map<String, dynamic>), fromE: (v) => TeamsDevicesKolideConfigRequest.fromJson(v as Map<String, dynamic>), fromF: (v) => TeamsDevicesTaniumConfigRequest.fromJson(v as Map<String, dynamic>), fromG: (v) => TeamsDevicesSentineloneS2sConfigRequest.fromJson(v as Map<String, dynamic>), fromH: (v) => TeamsDevicesCustomS2sConfigRequest.fromJson(v as Map<String, dynamic>),),
  interval: TeamsDevicesInterval.fromJson(json['interval'] as String),
  name: TeamsDevicesComponentsSchemasName.fromJson(json['name'] as String),
  type: TeamsDevicesSchemasType.fromJson(json['type'] as String),
); }

final TeamsDevicesConfigRequest config;

/// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
final TeamsDevicesInterval interval;

/// The name of the device posture integration.
final TeamsDevicesComponentsSchemasName name;

/// The type of device posture integration.
final TeamsDevicesSchemasType type;

Map<String, dynamic> toJson() { return {
  'config': config.toJson(),
  'interval': interval.toJson(),
  'name': name.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('config') &&
      json.containsKey('interval') &&
      json.containsKey('name') &&
      json.containsKey('type'); } 
DevicePostureIntegrationsCreateDevicePostureIntegrationRequest copyWith({TeamsDevicesConfigRequest? config, TeamsDevicesInterval? interval, TeamsDevicesComponentsSchemasName? name, TeamsDevicesSchemasType? type, }) { return DevicePostureIntegrationsCreateDevicePostureIntegrationRequest(
  config: config ?? this.config,
  interval: interval ?? this.interval,
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DevicePostureIntegrationsCreateDevicePostureIntegrationRequest &&
          config == other.config &&
          interval == other.interval &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, interval, name, type); } 
@override String toString() { return 'DevicePostureIntegrationsCreateDevicePostureIntegrationRequest(config: $config, interval: $interval, name: $name, type: $type)'; } 
 }
