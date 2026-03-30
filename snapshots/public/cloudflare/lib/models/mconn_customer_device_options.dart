// GENERATED CODE - DO NOT MODIFY BY HAND

/// Exactly one of id, serial_number, or provision_license must be provided.
final class MconnCustomerDeviceOptions {const MconnCustomerDeviceOptions({this.id, this.provisionLicense, this.serialNumber, });

factory MconnCustomerDeviceOptions.fromJson(Map<String, dynamic> json) { return MconnCustomerDeviceOptions(
  id: json['id'] as String?,
  provisionLicense: json['provision_license'] as bool?,
  serialNumber: json['serial_number'] as String?,
); }

final String? id;

/// When true, create and provision a new licence key for the connector.
final bool? provisionLicense;

final String? serialNumber;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'provision_license': ?provisionLicense,
  'serial_number': ?serialNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'provision_license', 'serial_number'}.contains(key)); } 
MconnCustomerDeviceOptions copyWith({String Function()? id, bool Function()? provisionLicense, String Function()? serialNumber, }) { return MconnCustomerDeviceOptions(
  id: id != null ? id() : this.id,
  provisionLicense: provisionLicense != null ? provisionLicense() : this.provisionLicense,
  serialNumber: serialNumber != null ? serialNumber() : this.serialNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerDeviceOptions &&
          id == other.id &&
          provisionLicense == other.provisionLicense &&
          serialNumber == other.serialNumber; } 
@override int get hashCode { return Object.hash(id, provisionLicense, serialNumber); } 
@override String toString() { return 'MconnCustomerDeviceOptions(id: $id, provisionLicense: $provisionLicense, serialNumber: $serialNumber)'; } 
 }
