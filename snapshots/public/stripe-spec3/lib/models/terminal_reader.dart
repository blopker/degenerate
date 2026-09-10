// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_location.dart';import 'terminal_reader_location.dart';import 'terminal_reader_reader_resource_reader_action.dart';/// Device type of the reader.
@immutable final class TerminalReaderDeviceType {const TerminalReaderDeviceType._(this.value);

factory TerminalReaderDeviceType.fromJson(String json) { return switch (json) {
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
  _ => TerminalReaderDeviceType._(json),
}; }

static const TerminalReaderDeviceType bbposChipper2x = TerminalReaderDeviceType._('bbpos_chipper2x');

static const TerminalReaderDeviceType bbposWisepad3 = TerminalReaderDeviceType._('bbpos_wisepad3');

static const TerminalReaderDeviceType bbposWiseposE = TerminalReaderDeviceType._('bbpos_wisepos_e');

static const TerminalReaderDeviceType mobilePhoneReader = TerminalReaderDeviceType._('mobile_phone_reader');

static const TerminalReaderDeviceType simulatedStripeS700 = TerminalReaderDeviceType._('simulated_stripe_s700');

static const TerminalReaderDeviceType simulatedStripeS710 = TerminalReaderDeviceType._('simulated_stripe_s710');

static const TerminalReaderDeviceType simulatedWiseposE = TerminalReaderDeviceType._('simulated_wisepos_e');

static const TerminalReaderDeviceType stripeM2 = TerminalReaderDeviceType._('stripe_m2');

static const TerminalReaderDeviceType stripeS700 = TerminalReaderDeviceType._('stripe_s700');

static const TerminalReaderDeviceType stripeS710 = TerminalReaderDeviceType._('stripe_s710');

static const TerminalReaderDeviceType verifoneP400 = TerminalReaderDeviceType._('verifone_P400');

static const List<TerminalReaderDeviceType> values = [bbposChipper2x, bbposWisepad3, bbposWiseposE, mobilePhoneReader, simulatedStripeS700, simulatedStripeS710, simulatedWiseposE, stripeM2, stripeS700, stripeS710, verifoneP400];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderDeviceType($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class TerminalReaderObject {const TerminalReaderObject._(this.value);

factory TerminalReaderObject.fromJson(String json) { return switch (json) {
  'terminal.reader' => terminalReader,
  _ => TerminalReaderObject._(json),
}; }

static const TerminalReaderObject terminalReader = TerminalReaderObject._('terminal.reader');

static const List<TerminalReaderObject> values = [terminalReader];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderObject($value)'; } 
 }
/// The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
@immutable final class TerminalReaderStatus {const TerminalReaderStatus._(this.value);

factory TerminalReaderStatus.fromJson(String json) { return switch (json) {
  'offline' => offline,
  'online' => online,
  _ => TerminalReaderStatus._(json),
}; }

static const TerminalReaderStatus offline = TerminalReaderStatus._('offline');

static const TerminalReaderStatus online = TerminalReaderStatus._('online');

static const List<TerminalReaderStatus> values = [offline, online];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderStatus($value)'; } 
 }
/// A Reader represents a physical device for accepting payment details.
/// 
/// Related guide: [Connecting to a reader](https://docs.stripe.com/terminal/payments/connect-reader)
@immutable final class TerminalReader {const TerminalReader({required this.deviceType, required this.id, required this.label, required this.livemode, required this.metadata, required this.object, required this.serialNumber, this.action = const Omittable.absent(), this.deviceSwVersion = const Omittable.absent(), this.ipAddress = const Omittable.absent(), this.lastSeenAt = const Omittable.absent(), this.location = const Omittable.absent(), this.status = const Omittable.absent(), });

factory TerminalReader.fromJson(Map<String, dynamic> json) { return TerminalReader(
  action: json.containsKey('action') ? Omittable(json['action'] != null ? TerminalReaderReaderResourceReaderAction.fromJson(json['action'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  deviceSwVersion: json.containsKey('device_sw_version') ? Omittable(json['device_sw_version'] as String?) : const Omittable.absent(),
  deviceType: TerminalReaderDeviceType.fromJson(json['device_type'] as String),
  id: json['id'] as String,
  ipAddress: json.containsKey('ip_address') ? Omittable(json['ip_address'] as String?) : const Omittable.absent(),
  label: json['label'] as String,
  lastSeenAt: json.containsKey('last_seen_at') ? Omittable(json['last_seen_at'] != null ? (json['last_seen_at'] as num).toInt() : null) : const Omittable.absent(),
  livemode: json['livemode'] as bool,
  location: json.containsKey('location') ? Omittable(json['location'] != null ? OneOf2.parse(json['location'], fromA: (v) => v as String, fromB: (v) => TerminalLocation.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  object: TerminalReaderObject.fromJson(json['object'] as String),
  serialNumber: json['serial_number'] as String,
  status: json.containsKey('status') ? Omittable(json['status'] != null ? TerminalReaderStatus.fromJson(json['status'] as String) : null) : const Omittable.absent(),
); }

/// The most recent action performed by the reader.
final Omittable<TerminalReaderReaderResourceReaderAction?> action;

/// The current software version of the reader.
final Omittable<String?> deviceSwVersion;

/// Device type of the reader.
final TerminalReaderDeviceType deviceType;

/// Unique identifier for the object.
final String id;

/// The local IP address of the reader.
final Omittable<String?> ipAddress;

/// Custom label given to the reader for easier identification.
final String label;

/// The last time this reader reported to Stripe backend. Timestamp is measured in milliseconds since the Unix epoch. Unlike most other Stripe timestamp fields which use seconds, this field uses milliseconds.
final Omittable<int?> lastSeenAt;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// The location identifier of the reader.
final Omittable<TerminalReaderLocation?> location;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final TerminalReaderObject object;

/// Serial number of the reader.
final String serialNumber;

/// The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
final Omittable<TerminalReaderStatus?> status;

Map<String, dynamic> toJson() { return {
  if (action.isPresent) 'action': action.value?.toJson(),
  if (deviceSwVersion.isPresent) 'device_sw_version': deviceSwVersion.value,
  'device_type': deviceType.toJson(),
  'id': id,
  if (ipAddress.isPresent) 'ip_address': ipAddress.value,
  'label': label,
  if (lastSeenAt.isPresent) 'last_seen_at': lastSeenAt.value,
  'livemode': livemode,
  if (location.isPresent) 'location': location.value?.toJson(),
  'metadata': metadata,
  'object': object.toJson(),
  'serial_number': serialNumber,
  if (status.isPresent) 'status': status.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('device_type') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('label') && json['label'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('serial_number') && json['serial_number'] is String; } 
TerminalReader copyWith({Omittable<TerminalReaderReaderResourceReaderAction?>? action, Omittable<String?>? deviceSwVersion, TerminalReaderDeviceType? deviceType, String? id, Omittable<String?>? ipAddress, String? label, Omittable<int?>? lastSeenAt, bool? livemode, Omittable<TerminalReaderLocation?>? location, Map<String,String>? metadata, TerminalReaderObject? object, String? serialNumber, Omittable<TerminalReaderStatus?>? status, }) { return TerminalReader(
  action: action ?? this.action,
  deviceSwVersion: deviceSwVersion ?? this.deviceSwVersion,
  deviceType: deviceType ?? this.deviceType,
  id: id ?? this.id,
  ipAddress: ipAddress ?? this.ipAddress,
  label: label ?? this.label,
  lastSeenAt: lastSeenAt ?? this.lastSeenAt,
  livemode: livemode ?? this.livemode,
  location: location ?? this.location,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  serialNumber: serialNumber ?? this.serialNumber,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReader &&
          action == other.action &&
          deviceSwVersion == other.deviceSwVersion &&
          deviceType == other.deviceType &&
          id == other.id &&
          ipAddress == other.ipAddress &&
          label == other.label &&
          lastSeenAt == other.lastSeenAt &&
          livemode == other.livemode &&
          location == other.location &&
          metadata == other.metadata &&
          object == other.object &&
          serialNumber == other.serialNumber &&
          status == other.status; } 
@override int get hashCode { return Object.hash(action, deviceSwVersion, deviceType, id, ipAddress, label, lastSeenAt, livemode, location, metadata, object, serialNumber, status); } 
@override String toString() { return 'TerminalReader(action: $action, deviceSwVersion: $deviceSwVersion, deviceType: $deviceType, id: $id, ipAddress: $ipAddress, label: $label, lastSeenAt: $lastSeenAt, livemode: $livemode, location: $location, metadata: $metadata, object: $object, serialNumber: $serialNumber, status: $status)'; } 
 }
