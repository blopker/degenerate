// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_uuid.dart';final class MconnControllerDevice {const MconnControllerDevice({required this.cryptKey, this.cryptKeyRotationFinishedAt, required this.id, this.imagedAt, this.lastCryptKey, this.serialNumber, });

factory MconnControllerDevice.fromJson(Map<String, dynamic> json) { return MconnControllerDevice(
  cryptKey: json['crypt_key'] as String,
  cryptKeyRotationFinishedAt: json['crypt_key_rotation_finished_at'] as String?,
  id: MconnUuid.fromJson(json['id'] as String),
  imagedAt: json['imaged_at'] as String?,
  lastCryptKey: json['last_crypt_key'] as String?,
  serialNumber: json['serial_number'] as String?,
); }

final String cryptKey;

final String? cryptKeyRotationFinishedAt;

final MconnUuid id;

final String? imagedAt;

final String? lastCryptKey;

final String? serialNumber;

Map<String, dynamic> toJson() { return {
  'crypt_key': cryptKey,
  'crypt_key_rotation_finished_at': ?cryptKeyRotationFinishedAt,
  'id': id.toJson(),
  'imaged_at': ?imagedAt,
  'last_crypt_key': ?lastCryptKey,
  'serial_number': ?serialNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('crypt_key') && json['crypt_key'] is String &&
      json.containsKey('id'); } 
MconnControllerDevice copyWith({String? cryptKey, String Function()? cryptKeyRotationFinishedAt, MconnUuid? id, String Function()? imagedAt, String Function()? lastCryptKey, String Function()? serialNumber, }) { return MconnControllerDevice(
  cryptKey: cryptKey ?? this.cryptKey,
  cryptKeyRotationFinishedAt: cryptKeyRotationFinishedAt != null ? cryptKeyRotationFinishedAt() : this.cryptKeyRotationFinishedAt,
  id: id ?? this.id,
  imagedAt: imagedAt != null ? imagedAt() : this.imagedAt,
  lastCryptKey: lastCryptKey != null ? lastCryptKey() : this.lastCryptKey,
  serialNumber: serialNumber != null ? serialNumber() : this.serialNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerDevice &&
          cryptKey == other.cryptKey &&
          cryptKeyRotationFinishedAt == other.cryptKeyRotationFinishedAt &&
          id == other.id &&
          imagedAt == other.imagedAt &&
          lastCryptKey == other.lastCryptKey &&
          serialNumber == other.serialNumber; } 
@override int get hashCode { return Object.hash(cryptKey, cryptKeyRotationFinishedAt, id, imagedAt, lastCryptKey, serialNumber); } 
@override String toString() { return 'MconnControllerDevice(cryptKey: $cryptKey, cryptKeyRotationFinishedAt: $cryptKeyRotationFinishedAt, id: $id, imagedAt: $imagedAt, lastCryptKey: $lastCryptKey, serialNumber: $serialNumber)'; } 
 }
