// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_description.dart';import 'teams_devices_expiration.dart';import 'teams_devices_input.dart';import 'teams_devices_match_item.dart';import 'teams_devices_name.dart';import 'teams_devices_schedule.dart';import 'teams_devices_type.dart';final class DevicePostureRulesCreateDevicePostureRuleRequest {const DevicePostureRulesCreateDevicePostureRuleRequest({this.description, this.expiration, this.input, this.match, required this.name, this.schedule, required this.type, });

factory DevicePostureRulesCreateDevicePostureRuleRequest.fromJson(Map<String, dynamic> json) { return DevicePostureRulesCreateDevicePostureRuleRequest(
  description: json['description'] != null ? TeamsDevicesDescription.fromJson(json['description'] as String) : null,
  expiration: json['expiration'] != null ? TeamsDevicesExpiration.fromJson(json['expiration'] as String) : null,
  input: json['input'] != null ? TeamsDevicesInput.fromJson(json['input'] as Map<String, dynamic>) : null,
  match: (json['match'] as List<dynamic>?)?.map((e) => TeamsDevicesMatchItem.fromJson(e as Map<String, dynamic>)).toList(),
  name: TeamsDevicesName.fromJson(json['name'] as String),
  schedule: json['schedule'] != null ? TeamsDevicesSchedule.fromJson(json['schedule'] as String) : null,
  type: TeamsDevicesType.fromJson(json['type'] as String),
); }

/// The description of the device posture rule.
final TeamsDevicesDescription? description;

/// Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
final TeamsDevicesExpiration? expiration;

final TeamsDevicesInput? input;

/// The conditions that the client must match to run the rule.
final List<TeamsDevicesMatchItem>? match;

/// The name of the device posture rule.
final TeamsDevicesName name;

/// Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
final TeamsDevicesSchedule? schedule;

/// The type of device posture rule.
final TeamsDevicesType type;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (expiration != null) 'expiration': expiration?.toJson(),
  if (input != null) 'input': input?.toJson(),
  if (match != null) 'match': match?.map((e) => e.toJson()).toList(),
  'name': name.toJson(),
  if (schedule != null) 'schedule': schedule?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('type'); } 
DevicePostureRulesCreateDevicePostureRuleRequest copyWith({TeamsDevicesDescription Function()? description, TeamsDevicesExpiration Function()? expiration, TeamsDevicesInput Function()? input, List<TeamsDevicesMatchItem> Function()? match, TeamsDevicesName? name, TeamsDevicesSchedule Function()? schedule, TeamsDevicesType? type, }) { return DevicePostureRulesCreateDevicePostureRuleRequest(
  description: description != null ? description() : this.description,
  expiration: expiration != null ? expiration() : this.expiration,
  input: input != null ? input() : this.input,
  match: match != null ? match() : this.match,
  name: name ?? this.name,
  schedule: schedule != null ? schedule() : this.schedule,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DevicePostureRulesCreateDevicePostureRuleRequest &&
          description == other.description &&
          expiration == other.expiration &&
          input == other.input &&
          listEquals(match, other.match) &&
          name == other.name &&
          schedule == other.schedule &&
          type == other.type; } 
@override int get hashCode { return Object.hash(description, expiration, input, Object.hashAll(match ?? const []), name, schedule, type); } 
@override String toString() { return 'DevicePostureRulesCreateDevicePostureRuleRequest(description: $description, expiration: $expiration, input: $input, match: $match, name: $name, schedule: $schedule, type: $type)'; } 
 }
