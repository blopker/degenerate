// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_uuid.dart';@immutable final class MconnControllerDeviceIdentity {const MconnControllerDeviceIdentity({required this.id, this.imagedAt, this.serialNumber, });

factory MconnControllerDeviceIdentity.fromJson(Map<String, dynamic> json) { return MconnControllerDeviceIdentity(
  id: MconnUuid.fromJson(json['id'] as String),
  imagedAt: json['imaged_at'] as String?,
  serialNumber: json['serial_number'] as String?,
); }

final MconnUuid id;

final String? imagedAt;

final String? serialNumber;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  'imaged_at': ?imagedAt,
  'serial_number': ?serialNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
MconnControllerDeviceIdentity copyWith({MconnUuid? id, String Function()? imagedAt, String Function()? serialNumber, }) { return MconnControllerDeviceIdentity(
  id: id ?? this.id,
  imagedAt: imagedAt != null ? imagedAt() : this.imagedAt,
  serialNumber: serialNumber != null ? serialNumber() : this.serialNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerDeviceIdentity &&
          id == other.id &&
          imagedAt == other.imagedAt &&
          serialNumber == other.serialNumber; } 
@override int get hashCode { return Object.hash(id, imagedAt, serialNumber); } 
@override String toString() { return 'MconnControllerDeviceIdentity(id: $id, imagedAt: $imagedAt, serialNumber: $serialNumber)'; } 
 }
