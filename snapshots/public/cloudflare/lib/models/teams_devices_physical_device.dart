// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_registration_details.dart';import 'teams_devices_user.dart';/// A WARP Device.
@immutable final class TeamsDevicesPhysicalDevice {const TeamsDevicesPhysicalDevice({required this.activeRegistrations, required this.createdAt, required this.id, required this.lastSeenAt, required this.name, required this.updatedAt, this.clientVersion = const Omittable.absent(), this.deletedAt = const Omittable.absent(), this.deviceType = const Omittable.absent(), this.hardwareId = const Omittable.absent(), this.lastSeenRegistration = const Omittable.absent(), this.lastSeenUser = const Omittable.absent(), this.macAddress = const Omittable.absent(), this.manufacturer = const Omittable.absent(), this.model = const Omittable.absent(), this.osVersion = const Omittable.absent(), this.osVersionExtra = const Omittable.absent(), this.publicIp = const Omittable.absent(), this.serialNumber = const Omittable.absent(), });

factory TeamsDevicesPhysicalDevice.fromJson(Map<String, dynamic> json) { return TeamsDevicesPhysicalDevice(
  activeRegistrations: (json['active_registrations'] as num).toInt(),
  clientVersion: json.containsKey('client_version') ? Omittable(json['client_version'] as String?) : const Omittable.absent(),
  createdAt: json['created_at'] as String,
  deletedAt: json.containsKey('deleted_at') ? Omittable(json['deleted_at'] as String?) : const Omittable.absent(),
  deviceType: json.containsKey('device_type') ? Omittable(json['device_type'] as String?) : const Omittable.absent(),
  hardwareId: json.containsKey('hardware_id') ? Omittable(json['hardware_id'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  lastSeenAt: json['last_seen_at'] as String?,
  lastSeenRegistration: json.containsKey('last_seen_registration') ? Omittable(json['last_seen_registration'] != null ? TeamsDevicesRegistrationDetails.fromJson(json['last_seen_registration'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  lastSeenUser: json.containsKey('last_seen_user') ? Omittable(json['last_seen_user'] != null ? TeamsDevicesUser.fromJson(json['last_seen_user'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  macAddress: json.containsKey('mac_address') ? Omittable(json['mac_address'] as String?) : const Omittable.absent(),
  manufacturer: json.containsKey('manufacturer') ? Omittable(json['manufacturer'] as String?) : const Omittable.absent(),
  model: json.containsKey('model') ? Omittable(json['model'] as String?) : const Omittable.absent(),
  name: json['name'] as String,
  osVersion: json.containsKey('os_version') ? Omittable(json['os_version'] as String?) : const Omittable.absent(),
  osVersionExtra: json.containsKey('os_version_extra') ? Omittable(json['os_version_extra'] as String?) : const Omittable.absent(),
  publicIp: json.containsKey('public_ip') ? Omittable(json['public_ip'] as String?) : const Omittable.absent(),
  serialNumber: json.containsKey('serial_number') ? Omittable(json['serial_number'] as String?) : const Omittable.absent(),
  updatedAt: json['updated_at'] as String,
); }

/// The number of active registrations for the device. Active registrations are those which haven't been revoked or deleted.
final int activeRegistrations;

/// Version of the WARP client.
final Omittable<String?> clientVersion;

/// The RFC3339 timestamp when the device was created.
final String createdAt;

/// The RFC3339 timestamp when the device was deleted.
final Omittable<String?> deletedAt;

/// The device operating system.
final Omittable<String?> deviceType;

/// A string that uniquely identifies the hardware or virtual machine (VM).
final Omittable<String?> hardwareId;

/// The unique ID of the device.
final String id;

/// The RFC3339 timestamp when the device was last seen.
final String? lastSeenAt;

/// The last seen registration for the device.
final Omittable<TeamsDevicesRegistrationDetails?> lastSeenRegistration;

/// The last user to use the WARP device.
final Omittable<TeamsDevicesUser?> lastSeenUser;

/// The device MAC address.
final Omittable<String?> macAddress;

/// The device manufacturer.
final Omittable<String?> manufacturer;

/// The model name of the device.
final Omittable<String?> model;

/// The name of the device.
final String name;

/// The device operating system version number.
final Omittable<String?> osVersion;

/// Additional operating system version details. For Windows, the UBR (Update Build Revision). For Mac or iOS, the Product Version Extra. For Linux, the distribution name and version.
final Omittable<String?> osVersionExtra;

/// **Deprecated**: IP information is provided by DEX - see https://developers.cloudflare.com/api/resources/zero_trust/subresources/dex/subresources/fleet_status/subresources/devices/methods/list/
/// 
final Omittable<String?> publicIp;

/// The device serial number.
final Omittable<String?> serialNumber;

/// The RFC3339 timestamp when the device was last updated.
final String updatedAt;

Map<String, dynamic> toJson() { return {
  'active_registrations': activeRegistrations,
  if (clientVersion.isPresent) 'client_version': clientVersion.value,
  'created_at': createdAt,
  if (deletedAt.isPresent) 'deleted_at': deletedAt.value,
  if (deviceType.isPresent) 'device_type': deviceType.value,
  if (hardwareId.isPresent) 'hardware_id': hardwareId.value,
  'id': id,
  'last_seen_at': lastSeenAt,
  if (lastSeenRegistration.isPresent) 'last_seen_registration': lastSeenRegistration.value?.toJson(),
  if (lastSeenUser.isPresent) 'last_seen_user': lastSeenUser.value?.toJson(),
  if (macAddress.isPresent) 'mac_address': macAddress.value,
  if (manufacturer.isPresent) 'manufacturer': manufacturer.value,
  if (model.isPresent) 'model': model.value,
  'name': name,
  if (osVersion.isPresent) 'os_version': osVersion.value,
  if (osVersionExtra.isPresent) 'os_version_extra': osVersionExtra.value,
  if (publicIp.isPresent) 'public_ip': publicIp.value,
  if (serialNumber.isPresent) 'serial_number': serialNumber.value,
  'updated_at': updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active_registrations') && json['active_registrations'] is num &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('last_seen_at') && json['last_seen_at'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
TeamsDevicesPhysicalDevice copyWith({int? activeRegistrations, Omittable<String?>? clientVersion, String? createdAt, Omittable<String?>? deletedAt, Omittable<String?>? deviceType, Omittable<String?>? hardwareId, String? id, String? Function()? lastSeenAt, Omittable<TeamsDevicesRegistrationDetails?>? lastSeenRegistration, Omittable<TeamsDevicesUser?>? lastSeenUser, Omittable<String?>? macAddress, Omittable<String?>? manufacturer, Omittable<String?>? model, String? name, Omittable<String?>? osVersion, Omittable<String?>? osVersionExtra, Omittable<String?>? publicIp, Omittable<String?>? serialNumber, String? updatedAt, }) { return TeamsDevicesPhysicalDevice(
  activeRegistrations: activeRegistrations ?? this.activeRegistrations,
  clientVersion: clientVersion ?? this.clientVersion,
  createdAt: createdAt ?? this.createdAt,
  deletedAt: deletedAt ?? this.deletedAt,
  deviceType: deviceType ?? this.deviceType,
  hardwareId: hardwareId ?? this.hardwareId,
  id: id ?? this.id,
  lastSeenAt: lastSeenAt != null ? lastSeenAt() : this.lastSeenAt,
  lastSeenRegistration: lastSeenRegistration ?? this.lastSeenRegistration,
  lastSeenUser: lastSeenUser ?? this.lastSeenUser,
  macAddress: macAddress ?? this.macAddress,
  manufacturer: manufacturer ?? this.manufacturer,
  model: model ?? this.model,
  name: name ?? this.name,
  osVersion: osVersion ?? this.osVersion,
  osVersionExtra: osVersionExtra ?? this.osVersionExtra,
  publicIp: publicIp ?? this.publicIp,
  serialNumber: serialNumber ?? this.serialNumber,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesPhysicalDevice &&
          activeRegistrations == other.activeRegistrations &&
          clientVersion == other.clientVersion &&
          createdAt == other.createdAt &&
          deletedAt == other.deletedAt &&
          deviceType == other.deviceType &&
          hardwareId == other.hardwareId &&
          id == other.id &&
          lastSeenAt == other.lastSeenAt &&
          lastSeenRegistration == other.lastSeenRegistration &&
          lastSeenUser == other.lastSeenUser &&
          macAddress == other.macAddress &&
          manufacturer == other.manufacturer &&
          model == other.model &&
          name == other.name &&
          osVersion == other.osVersion &&
          osVersionExtra == other.osVersionExtra &&
          publicIp == other.publicIp &&
          serialNumber == other.serialNumber &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(activeRegistrations, clientVersion, createdAt, deletedAt, deviceType, hardwareId, id, lastSeenAt, lastSeenRegistration, lastSeenUser, macAddress, manufacturer, model, name, osVersion, osVersionExtra, publicIp, serialNumber, updatedAt); } 
@override String toString() { return 'TeamsDevicesPhysicalDevice(activeRegistrations: $activeRegistrations, clientVersion: $clientVersion, createdAt: $createdAt, deletedAt: $deletedAt, deviceType: $deviceType, hardwareId: $hardwareId, id: $id, lastSeenAt: $lastSeenAt, lastSeenRegistration: $lastSeenRegistration, lastSeenUser: $lastSeenUser, macAddress: $macAddress, manufacturer: $manufacturer, model: $model, name: $name, osVersion: $osVersion, osVersionExtra: $osVersionExtra, publicIp: $publicIp, serialNumber: $serialNumber, updatedAt: $updatedAt)'; } 
 }
