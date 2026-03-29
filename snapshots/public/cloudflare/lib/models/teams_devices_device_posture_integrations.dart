// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_components_schemas_name.dart';import 'teams_devices_config_response.dart';import 'teams_devices_interval.dart';import 'teams_devices_schemas_type.dart';import 'teams_devices_uuid.dart';final class TeamsDevicesDevicePostureIntegrations {const TeamsDevicesDevicePostureIntegrations({this.config, this.id, this.interval, this.name, this.type, });

factory TeamsDevicesDevicePostureIntegrations.fromJson(Map<String, dynamic> json) { return TeamsDevicesDevicePostureIntegrations(
  config: json['config'] != null ? TeamsDevicesConfigResponse.fromJson(json['config'] as Map<String, dynamic>) : null,
  id: json['id'] != null ? TeamsDevicesUuid.fromJson(json['id'] as String) : null,
  interval: json['interval'] != null ? TeamsDevicesInterval.fromJson(json['interval'] as String) : null,
  name: json['name'] != null ? TeamsDevicesComponentsSchemasName.fromJson(json['name'] as String) : null,
  type: json['type'] != null ? TeamsDevicesSchemasType.fromJson(json['type'] as String) : null,
); }

final TeamsDevicesConfigResponse? config;

final TeamsDevicesUuid? id;

final TeamsDevicesInterval? interval;

/// The name of the device posture integration.
final TeamsDevicesComponentsSchemasName? name;

final TeamsDevicesSchemasType? type;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (interval != null) 'interval': interval?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TeamsDevicesDevicePostureIntegrations copyWith({TeamsDevicesConfigResponse Function()? config, TeamsDevicesUuid Function()? id, TeamsDevicesInterval Function()? interval, TeamsDevicesComponentsSchemasName Function()? name, TeamsDevicesSchemasType Function()? type, }) { return TeamsDevicesDevicePostureIntegrations(
  config: config != null ? config() : this.config,
  id: id != null ? id() : this.id,
  interval: interval != null ? interval() : this.interval,
  name: name != null ? name() : this.name,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDevicePostureIntegrations &&
          config == other.config &&
          id == other.id &&
          interval == other.interval &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, interval, name, type); } 
@override String toString() { return 'TeamsDevicesDevicePostureIntegrations(config: $config, id: $id, interval: $interval, name: $name, type: $type)'; } 
 }
