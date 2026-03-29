// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_components_schemas_type.dart';import 'teams_devices_device_managed_networks_components_schemas_name.dart';import 'teams_devices_schemas_config_request.dart';final class DeviceManagedNetworksCreateDeviceManagedNetworkRequest {const DeviceManagedNetworksCreateDeviceManagedNetworkRequest({required this.config, required this.name, required this.type, });

factory DeviceManagedNetworksCreateDeviceManagedNetworkRequest.fromJson(Map<String, dynamic> json) { return DeviceManagedNetworksCreateDeviceManagedNetworkRequest(
  config: TeamsDevicesSchemasConfigRequest.fromJson(json['config'] as Map<String, dynamic>),
  name: TeamsDevicesDeviceManagedNetworksComponentsSchemasName.fromJson(json['name'] as String),
  type: TeamsDevicesComponentsSchemasType.fromJson(json['type'] as String),
); }

final TeamsDevicesSchemasConfigRequest config;

/// The name of the device managed network. This name must be unique.
final TeamsDevicesDeviceManagedNetworksComponentsSchemasName name;

/// The type of device managed network.
final TeamsDevicesComponentsSchemasType type;

Map<String, dynamic> toJson() { return {
  'config': config.toJson(),
  'name': name.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('config') &&
      json.containsKey('name') &&
      json.containsKey('type'); } 
DeviceManagedNetworksCreateDeviceManagedNetworkRequest copyWith({TeamsDevicesSchemasConfigRequest? config, TeamsDevicesDeviceManagedNetworksComponentsSchemasName? name, TeamsDevicesComponentsSchemasType? type, }) { return DeviceManagedNetworksCreateDeviceManagedNetworkRequest(
  config: config ?? this.config,
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeviceManagedNetworksCreateDeviceManagedNetworkRequest &&
          config == other.config &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, name, type); } 
@override String toString() { return 'DeviceManagedNetworksCreateDeviceManagedNetworkRequest(config: $config, name: $name, type: $type)'; } 
 }
