// GENERATED CODE - DO NOT MODIFY BY HAND

/// Device type of the reader.
final class DeletedTerminalReaderDeviceType {const DeletedTerminalReaderDeviceType._(this.value);

factory DeletedTerminalReaderDeviceType.fromJson(String json) { return switch (json) {
  'bbpos_chipper2x' => bbposChipper2x,
  'bbpos_wisepad3' => bbposWisepad3,
  'bbpos_wisepos_e' => bbposWiseposE,
  'mobile_phone_reader' => mobilePhoneReader,
  'simulated_stripe_s700' => simulatedStripeS700,
  'simulated_stripe_s710' => simulatedStripeS710,
  'simulated_wisepos_e' => simulatedWiseposE,
  'stripe_m2' => stripeM2,
  'stripe_s700' => stripeS700,
  'stripe_s710' => stripeS710,
  'verifone_P400' => verifoneP400,
  _ => DeletedTerminalReaderDeviceType._(json),
}; }

static const DeletedTerminalReaderDeviceType bbposChipper2x = DeletedTerminalReaderDeviceType._('bbpos_chipper2x');

static const DeletedTerminalReaderDeviceType bbposWisepad3 = DeletedTerminalReaderDeviceType._('bbpos_wisepad3');

static const DeletedTerminalReaderDeviceType bbposWiseposE = DeletedTerminalReaderDeviceType._('bbpos_wisepos_e');

static const DeletedTerminalReaderDeviceType mobilePhoneReader = DeletedTerminalReaderDeviceType._('mobile_phone_reader');

static const DeletedTerminalReaderDeviceType simulatedStripeS700 = DeletedTerminalReaderDeviceType._('simulated_stripe_s700');

static const DeletedTerminalReaderDeviceType simulatedStripeS710 = DeletedTerminalReaderDeviceType._('simulated_stripe_s710');

static const DeletedTerminalReaderDeviceType simulatedWiseposE = DeletedTerminalReaderDeviceType._('simulated_wisepos_e');

static const DeletedTerminalReaderDeviceType stripeM2 = DeletedTerminalReaderDeviceType._('stripe_m2');

static const DeletedTerminalReaderDeviceType stripeS700 = DeletedTerminalReaderDeviceType._('stripe_s700');

static const DeletedTerminalReaderDeviceType stripeS710 = DeletedTerminalReaderDeviceType._('stripe_s710');

static const DeletedTerminalReaderDeviceType verifoneP400 = DeletedTerminalReaderDeviceType._('verifone_P400');

static const List<DeletedTerminalReaderDeviceType> values = [bbposChipper2x, bbposWisepad3, bbposWiseposE, mobilePhoneReader, simulatedStripeS700, simulatedStripeS710, simulatedWiseposE, stripeM2, stripeS700, stripeS710, verifoneP400];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedTerminalReaderDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedTerminalReaderDeviceType($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class DeletedTerminalReaderObject {const DeletedTerminalReaderObject._(this.value);

factory DeletedTerminalReaderObject.fromJson(String json) { return switch (json) {
  'terminal.reader' => terminalReader,
  _ => DeletedTerminalReaderObject._(json),
}; }

static const DeletedTerminalReaderObject terminalReader = DeletedTerminalReaderObject._('terminal.reader');

static const List<DeletedTerminalReaderObject> values = [terminalReader];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedTerminalReaderObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedTerminalReaderObject($value)'; } 
 }
/// 
final class DeletedTerminalReader {const DeletedTerminalReader({required this.deleted, required this.deviceType, required this.id, required this.object, required this.serialNumber, });

factory DeletedTerminalReader.fromJson(Map<String, dynamic> json) { return DeletedTerminalReader(
  deleted: json['deleted'] as bool,
  deviceType: DeletedTerminalReaderDeviceType.fromJson(json['device_type'] as String),
  id: json['id'] as String,
  object: DeletedTerminalReaderObject.fromJson(json['object'] as String),
  serialNumber: json['serial_number'] as String,
); }

/// Always true for a deleted object
final bool deleted;

/// Device type of the reader.
final DeletedTerminalReaderDeviceType deviceType;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final DeletedTerminalReaderObject object;

/// Serial number of the reader.
final String serialNumber;

Map<String, dynamic> toJson() { return {
  'deleted': deleted,
  'device_type': deviceType.toJson(),
  'id': id,
  'object': object.toJson(),
  'serial_number': serialNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('device_type') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('serial_number') && json['serial_number'] is String; } 
DeletedTerminalReader copyWith({bool? deleted, DeletedTerminalReaderDeviceType? deviceType, String? id, DeletedTerminalReaderObject? object, String? serialNumber, }) { return DeletedTerminalReader(
  deleted: deleted ?? this.deleted,
  deviceType: deviceType ?? this.deviceType,
  id: id ?? this.id,
  object: object ?? this.object,
  serialNumber: serialNumber ?? this.serialNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedTerminalReader &&
          deleted == other.deleted &&
          deviceType == other.deviceType &&
          id == other.id &&
          object == other.object &&
          serialNumber == other.serialNumber; } 
@override int get hashCode { return Object.hash(deleted, deviceType, id, object, serialNumber); } 
@override String toString() { return 'DeletedTerminalReader(deleted: $deleted, deviceType: $deviceType, id: $id, object: $object, serialNumber: $serialNumber)'; } 
 }
