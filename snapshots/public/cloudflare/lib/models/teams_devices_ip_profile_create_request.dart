// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_ip_profile_match.dart';import 'teams_devices_ip_profile_name.dart';import 'teams_devices_ip_profile_precedence.dart';import 'teams_devices_ip_profile_subnet_id.dart';@immutable final class TeamsDevicesIpProfileCreateRequest {const TeamsDevicesIpProfileCreateRequest({required this.match, required this.name, required this.precedence, required this.subnetId, this.description = const Omittable.absent(), this.enabled = true, });

factory TeamsDevicesIpProfileCreateRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesIpProfileCreateRequest(
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : true,
  match: TeamsDevicesIpProfileMatch.fromJson(json['match'] as String),
  name: TeamsDevicesIpProfileName.fromJson(json['name'] as String),
  precedence: TeamsDevicesIpProfilePrecedence.fromJson(json['precedence'] as num),
  subnetId: TeamsDevicesIpProfileSubnetId.fromJson(json['subnet_id'] as String),
); }

/// An optional description of the Device IP profile.
final Omittable<String?> description;

/// Whether the Device IP profile will be applied to matching devices.
final bool enabled;

final TeamsDevicesIpProfileMatch match;

final TeamsDevicesIpProfileName name;

final TeamsDevicesIpProfilePrecedence precedence;

final TeamsDevicesIpProfileSubnetId subnetId;

Map<String, dynamic> toJson() { return {
  if (description.isPresent) 'description': description.value,
  'enabled': enabled,
  'match': match.toJson(),
  'name': name.toJson(),
  'precedence': precedence.toJson(),
  'subnet_id': subnetId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('match') &&
      json.containsKey('name') &&
      json.containsKey('precedence') &&
      json.containsKey('subnet_id'); } 
TeamsDevicesIpProfileCreateRequest copyWith({Omittable<String?>? description, bool Function()? enabled, TeamsDevicesIpProfileMatch? match, TeamsDevicesIpProfileName? name, TeamsDevicesIpProfilePrecedence? precedence, TeamsDevicesIpProfileSubnetId? subnetId, }) { return TeamsDevicesIpProfileCreateRequest(
  description: description ?? this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  match: match ?? this.match,
  name: name ?? this.name,
  precedence: precedence ?? this.precedence,
  subnetId: subnetId ?? this.subnetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesIpProfileCreateRequest &&
          description == other.description &&
          enabled == other.enabled &&
          match == other.match &&
          name == other.name &&
          precedence == other.precedence &&
          subnetId == other.subnetId; } 
@override int get hashCode { return Object.hash(description, enabled, match, name, precedence, subnetId); } 
@override String toString() { return 'TeamsDevicesIpProfileCreateRequest(description: $description, enabled: $enabled, match: $match, name: $name, precedence: $precedence, subnetId: $subnetId)'; } 
 }
