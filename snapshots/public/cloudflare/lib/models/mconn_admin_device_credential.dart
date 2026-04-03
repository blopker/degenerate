// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_uuid.dart';@immutable final class MconnAdminDeviceCredential {const MconnAdminDeviceCredential({required this.deviceId, required this.id, required this.provisionedAt, required this.type, required this.value, });

factory MconnAdminDeviceCredential.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceCredential(
  deviceId: MconnUuid.fromJson(json['device_id'] as String),
  id: MconnUuid.fromJson(json['id'] as String),
  provisionedAt: json['provisioned_at'] as String,
  type: json['type'] as String,
  value: json['value'] as String,
); }

final MconnUuid deviceId;

final MconnUuid id;

final String provisionedAt;

final String type;

final String value;

Map<String, dynamic> toJson() { return {
  'device_id': deviceId.toJson(),
  'id': id.toJson(),
  'provisioned_at': provisionedAt,
  'type': type,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('device_id') &&
      json.containsKey('id') &&
      json.containsKey('provisioned_at') && json['provisioned_at'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('value') && json['value'] is String; } 
MconnAdminDeviceCredential copyWith({MconnUuid? deviceId, MconnUuid? id, String? provisionedAt, String? type, String? value, }) { return MconnAdminDeviceCredential(
  deviceId: deviceId ?? this.deviceId,
  id: id ?? this.id,
  provisionedAt: provisionedAt ?? this.provisionedAt,
  type: type ?? this.type,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceCredential &&
          deviceId == other.deviceId &&
          id == other.id &&
          provisionedAt == other.provisionedAt &&
          type == other.type &&
          value == other.value; } 
@override int get hashCode { return Object.hash(deviceId, id, provisionedAt, type, value); } 
@override String toString() { return 'MconnAdminDeviceCredential(deviceId: $deviceId, id: $id, provisionedAt: $provisionedAt, type: $type, value: $value)'; } 
 }
