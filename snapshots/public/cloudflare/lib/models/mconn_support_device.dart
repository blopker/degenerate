// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_uuid.dart';final class MconnSupportDevice {const MconnSupportDevice({this.cryptKeyRotationFinishedAt, this.cryptKeyRotationStartedAt, this.cryptKeyRotationStatusCode, this.deviceType, this.ekCert, required this.id, this.imagedAt, required this.lastUpdated, required this.metadata, this.pkiRotationFinishedAt, this.pkiRotationStartedAt, this.pkiRotationStatusCode, this.serialNumber, });

factory MconnSupportDevice.fromJson(Map<String, dynamic> json) { return MconnSupportDevice(
  cryptKeyRotationFinishedAt: json['crypt_key_rotation_finished_at'] as String?,
  cryptKeyRotationStartedAt: json['crypt_key_rotation_started_at'] as String?,
  cryptKeyRotationStatusCode: json['crypt_key_rotation_status_code'] != null ? (json['crypt_key_rotation_status_code'] as num).toDouble() : null,
  deviceType: json['device_type'] as String?,
  ekCert: json['ek_cert'] as String?,
  id: MconnUuid.fromJson(json['id'] as String),
  imagedAt: json['imaged_at'] as String?,
  lastUpdated: json['last_updated'] as String,
  metadata: json['metadata'] as String,
  pkiRotationFinishedAt: json['pki_rotation_finished_at'] as String?,
  pkiRotationStartedAt: json['pki_rotation_started_at'] as String?,
  pkiRotationStatusCode: json['pki_rotation_status_code'] != null ? (json['pki_rotation_status_code'] as num).toDouble() : null,
  serialNumber: json['serial_number'] as String?,
); }

final String? cryptKeyRotationFinishedAt;

final String? cryptKeyRotationStartedAt;

final double? cryptKeyRotationStatusCode;

final String? deviceType;

final String? ekCert;

final MconnUuid id;

final String? imagedAt;

final String lastUpdated;

final String metadata;

final String? pkiRotationFinishedAt;

final String? pkiRotationStartedAt;

final double? pkiRotationStatusCode;

final String? serialNumber;

Map<String, dynamic> toJson() { return {
  'crypt_key_rotation_finished_at': ?cryptKeyRotationFinishedAt,
  'crypt_key_rotation_started_at': ?cryptKeyRotationStartedAt,
  'crypt_key_rotation_status_code': ?cryptKeyRotationStatusCode,
  'device_type': ?deviceType,
  'ek_cert': ?ekCert,
  'id': id.toJson(),
  'imaged_at': ?imagedAt,
  'last_updated': lastUpdated,
  'metadata': metadata,
  'pki_rotation_finished_at': ?pkiRotationFinishedAt,
  'pki_rotation_started_at': ?pkiRotationStartedAt,
  'pki_rotation_status_code': ?pkiRotationStatusCode,
  'serial_number': ?serialNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('last_updated') && json['last_updated'] is String &&
      json.containsKey('metadata') && json['metadata'] is String; } 
MconnSupportDevice copyWith({String Function()? cryptKeyRotationFinishedAt, String Function()? cryptKeyRotationStartedAt, double Function()? cryptKeyRotationStatusCode, String Function()? deviceType, String Function()? ekCert, MconnUuid? id, String Function()? imagedAt, String? lastUpdated, String? metadata, String Function()? pkiRotationFinishedAt, String Function()? pkiRotationStartedAt, double Function()? pkiRotationStatusCode, String Function()? serialNumber, }) { return MconnSupportDevice(
  cryptKeyRotationFinishedAt: cryptKeyRotationFinishedAt != null ? cryptKeyRotationFinishedAt() : this.cryptKeyRotationFinishedAt,
  cryptKeyRotationStartedAt: cryptKeyRotationStartedAt != null ? cryptKeyRotationStartedAt() : this.cryptKeyRotationStartedAt,
  cryptKeyRotationStatusCode: cryptKeyRotationStatusCode != null ? cryptKeyRotationStatusCode() : this.cryptKeyRotationStatusCode,
  deviceType: deviceType != null ? deviceType() : this.deviceType,
  ekCert: ekCert != null ? ekCert() : this.ekCert,
  id: id ?? this.id,
  imagedAt: imagedAt != null ? imagedAt() : this.imagedAt,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  metadata: metadata ?? this.metadata,
  pkiRotationFinishedAt: pkiRotationFinishedAt != null ? pkiRotationFinishedAt() : this.pkiRotationFinishedAt,
  pkiRotationStartedAt: pkiRotationStartedAt != null ? pkiRotationStartedAt() : this.pkiRotationStartedAt,
  pkiRotationStatusCode: pkiRotationStatusCode != null ? pkiRotationStatusCode() : this.pkiRotationStatusCode,
  serialNumber: serialNumber != null ? serialNumber() : this.serialNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportDevice &&
          cryptKeyRotationFinishedAt == other.cryptKeyRotationFinishedAt &&
          cryptKeyRotationStartedAt == other.cryptKeyRotationStartedAt &&
          cryptKeyRotationStatusCode == other.cryptKeyRotationStatusCode &&
          deviceType == other.deviceType &&
          ekCert == other.ekCert &&
          id == other.id &&
          imagedAt == other.imagedAt &&
          lastUpdated == other.lastUpdated &&
          metadata == other.metadata &&
          pkiRotationFinishedAt == other.pkiRotationFinishedAt &&
          pkiRotationStartedAt == other.pkiRotationStartedAt &&
          pkiRotationStatusCode == other.pkiRotationStatusCode &&
          serialNumber == other.serialNumber; } 
@override int get hashCode { return Object.hash(cryptKeyRotationFinishedAt, cryptKeyRotationStartedAt, cryptKeyRotationStatusCode, deviceType, ekCert, id, imagedAt, lastUpdated, metadata, pkiRotationFinishedAt, pkiRotationStartedAt, pkiRotationStatusCode, serialNumber); } 
@override String toString() { return 'MconnSupportDevice(cryptKeyRotationFinishedAt: $cryptKeyRotationFinishedAt, cryptKeyRotationStartedAt: $cryptKeyRotationStartedAt, cryptKeyRotationStatusCode: $cryptKeyRotationStatusCode, deviceType: $deviceType, ekCert: $ekCert, id: $id, imagedAt: $imagedAt, lastUpdated: $lastUpdated, metadata: $metadata, pkiRotationFinishedAt: $pkiRotationFinishedAt, pkiRotationStartedAt: $pkiRotationStartedAt, pkiRotationStatusCode: $pkiRotationStatusCode, serialNumber: $serialNumber)'; } 
 }
