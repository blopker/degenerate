// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';import 'issuing_card_shipping_address_validation.dart';import 'issuing_card_shipping_customs.dart';/// The delivery company that shipped a card.
@immutable final class IssuingCardShippingCarrier {const IssuingCardShippingCarrier._(this.value);

factory IssuingCardShippingCarrier.fromJson(String json) { return switch (json) {
  'dhl' => dhl,
  'fedex' => fedex,
  'royal_mail' => royalMail,
  'usps' => usps,
  _ => IssuingCardShippingCarrier._(json),
}; }

static const IssuingCardShippingCarrier dhl = IssuingCardShippingCarrier._('dhl');

static const IssuingCardShippingCarrier fedex = IssuingCardShippingCarrier._('fedex');

static const IssuingCardShippingCarrier royalMail = IssuingCardShippingCarrier._('royal_mail');

static const IssuingCardShippingCarrier usps = IssuingCardShippingCarrier._('usps');

static const List<IssuingCardShippingCarrier> values = [dhl, fedex, royalMail, usps];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardShippingCarrier && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardShippingCarrier($value)'; } 
 }
/// Shipment service, such as `standard` or `express`.
@immutable final class IssuingCardShippingService {const IssuingCardShippingService._(this.value);

factory IssuingCardShippingService.fromJson(String json) { return switch (json) {
  'express' => express,
  'priority' => priority,
  'standard' => standard,
  _ => IssuingCardShippingService._(json),
}; }

static const IssuingCardShippingService express = IssuingCardShippingService._('express');

static const IssuingCardShippingService priority = IssuingCardShippingService._('priority');

static const IssuingCardShippingService standard = IssuingCardShippingService._('standard');

static const List<IssuingCardShippingService> values = [express, priority, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardShippingService && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardShippingService($value)'; } 
 }
/// The delivery status of the card.
@immutable final class IssuingCardShippingStatus {const IssuingCardShippingStatus._(this.value);

factory IssuingCardShippingStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'delivered' => delivered,
  'failure' => failure,
  'pending' => pending,
  'returned' => returned,
  'shipped' => shipped,
  'submitted' => submitted,
  _ => IssuingCardShippingStatus._(json),
}; }

static const IssuingCardShippingStatus canceled = IssuingCardShippingStatus._('canceled');

static const IssuingCardShippingStatus delivered = IssuingCardShippingStatus._('delivered');

static const IssuingCardShippingStatus failure = IssuingCardShippingStatus._('failure');

static const IssuingCardShippingStatus pending = IssuingCardShippingStatus._('pending');

static const IssuingCardShippingStatus returned = IssuingCardShippingStatus._('returned');

static const IssuingCardShippingStatus shipped = IssuingCardShippingStatus._('shipped');

static const IssuingCardShippingStatus submitted = IssuingCardShippingStatus._('submitted');

static const List<IssuingCardShippingStatus> values = [canceled, delivered, failure, pending, returned, shipped, submitted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardShippingStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardShippingStatus($value)'; } 
 }
/// Packaging options.
@immutable final class IssuingCardShippingType {const IssuingCardShippingType._(this.value);

factory IssuingCardShippingType.fromJson(String json) { return switch (json) {
  'bulk' => bulk,
  'individual' => individual,
  _ => IssuingCardShippingType._(json),
}; }

static const IssuingCardShippingType bulk = IssuingCardShippingType._('bulk');

static const IssuingCardShippingType individual = IssuingCardShippingType._('individual');

static const List<IssuingCardShippingType> values = [bulk, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardShippingType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardShippingType($value)'; } 
 }
/// 
@immutable final class IssuingCardShipping {const IssuingCardShipping({required this.address, required this.name, required this.service, required this.type, this.addressValidation = const Omittable.absent(), this.carrier = const Omittable.absent(), this.customs = const Omittable.absent(), this.eta = const Omittable.absent(), this.phoneNumber = const Omittable.absent(), this.requireSignature = const Omittable.absent(), this.status = const Omittable.absent(), this.trackingNumber = const Omittable.absent(), this.trackingUrl = const Omittable.absent(), });

factory IssuingCardShipping.fromJson(Map<String, dynamic> json) { return IssuingCardShipping(
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
  addressValidation: json.containsKey('address_validation') ? Omittable(json['address_validation'] != null ? IssuingCardShippingAddressValidation.fromJson(json['address_validation'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  carrier: json.containsKey('carrier') ? Omittable(json['carrier'] != null ? IssuingCardShippingCarrier.fromJson(json['carrier'] as String) : null) : const Omittable.absent(),
  customs: json.containsKey('customs') ? Omittable(json['customs'] != null ? IssuingCardShippingCustoms.fromJson(json['customs'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  eta: json.containsKey('eta') ? Omittable(json['eta'] != null ? (json['eta'] as num).toInt() : null) : const Omittable.absent(),
  name: json['name'] as String,
  phoneNumber: json.containsKey('phone_number') ? Omittable(json['phone_number'] as String?) : const Omittable.absent(),
  requireSignature: json.containsKey('require_signature') ? Omittable(json['require_signature'] as bool?) : const Omittable.absent(),
  service: IssuingCardShippingService.fromJson(json['service'] as String),
  status: json.containsKey('status') ? Omittable(json['status'] != null ? IssuingCardShippingStatus.fromJson(json['status'] as String) : null) : const Omittable.absent(),
  trackingNumber: json.containsKey('tracking_number') ? Omittable(json['tracking_number'] as String?) : const Omittable.absent(),
  trackingUrl: json.containsKey('tracking_url') ? Omittable(json['tracking_url'] as String?) : const Omittable.absent(),
  type: IssuingCardShippingType.fromJson(json['type'] as String),
); }

final Address address;

/// Address validation details for the shipment.
final Omittable<IssuingCardShippingAddressValidation?> addressValidation;

/// The delivery company that shipped a card.
final Omittable<IssuingCardShippingCarrier?> carrier;

/// Additional information that may be required for clearing customs.
final Omittable<IssuingCardShippingCustoms?> customs;

/// A unix timestamp representing a best estimate of when the card will be delivered.
final Omittable<int?> eta;

/// Recipient name.
final String name;

/// The phone number of the receiver of the shipment. Our courier partners will use this number to contact you in the event of card delivery issues. For individual shipments to the EU/UK, if this field is empty, we will provide them with the phone number provided when the cardholder was initially created.
final Omittable<String?> phoneNumber;

/// Whether a signature is required for card delivery. This feature is only supported for US users. Standard shipping service does not support signature on delivery. The default value for standard shipping service is false and for express and priority services is true.
final Omittable<bool?> requireSignature;

/// Shipment service, such as `standard` or `express`.
final IssuingCardShippingService service;

/// The delivery status of the card.
final Omittable<IssuingCardShippingStatus?> status;

/// A tracking number for a card shipment.
final Omittable<String?> trackingNumber;

/// A link to the shipping carrier's site where you can view detailed information about a card shipment.
final Omittable<String?> trackingUrl;

/// Packaging options.
final IssuingCardShippingType type;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (addressValidation.isPresent) 'address_validation': addressValidation.value?.toJson(),
  if (carrier.isPresent) 'carrier': carrier.value?.toJson(),
  if (customs.isPresent) 'customs': customs.value?.toJson(),
  if (eta.isPresent) 'eta': eta.value,
  'name': name,
  if (phoneNumber.isPresent) 'phone_number': phoneNumber.value,
  if (requireSignature.isPresent) 'require_signature': requireSignature.value,
  'service': service.toJson(),
  if (status.isPresent) 'status': status.value?.toJson(),
  if (trackingNumber.isPresent) 'tracking_number': trackingNumber.value,
  if (trackingUrl.isPresent) 'tracking_url': trackingUrl.value,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('service') &&
      json.containsKey('type'); } 
IssuingCardShipping copyWith({Address? address, Omittable<IssuingCardShippingAddressValidation?>? addressValidation, Omittable<IssuingCardShippingCarrier?>? carrier, Omittable<IssuingCardShippingCustoms?>? customs, Omittable<int?>? eta, String? name, Omittable<String?>? phoneNumber, Omittable<bool?>? requireSignature, IssuingCardShippingService? service, Omittable<IssuingCardShippingStatus?>? status, Omittable<String?>? trackingNumber, Omittable<String?>? trackingUrl, IssuingCardShippingType? type, }) { return IssuingCardShipping(
  address: address ?? this.address,
  addressValidation: addressValidation ?? this.addressValidation,
  carrier: carrier ?? this.carrier,
  customs: customs ?? this.customs,
  eta: eta ?? this.eta,
  name: name ?? this.name,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  requireSignature: requireSignature ?? this.requireSignature,
  service: service ?? this.service,
  status: status ?? this.status,
  trackingNumber: trackingNumber ?? this.trackingNumber,
  trackingUrl: trackingUrl ?? this.trackingUrl,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardShipping &&
          address == other.address &&
          addressValidation == other.addressValidation &&
          carrier == other.carrier &&
          customs == other.customs &&
          eta == other.eta &&
          name == other.name &&
          phoneNumber == other.phoneNumber &&
          requireSignature == other.requireSignature &&
          service == other.service &&
          status == other.status &&
          trackingNumber == other.trackingNumber &&
          trackingUrl == other.trackingUrl &&
          type == other.type; } 
@override int get hashCode { return Object.hash(address, addressValidation, carrier, customs, eta, name, phoneNumber, requireSignature, service, status, trackingNumber, trackingUrl, type); } 
@override String toString() { return 'IssuingCardShipping(address: $address, addressValidation: $addressValidation, carrier: $carrier, customs: $customs, eta: $eta, name: $name, phoneNumber: $phoneNumber, requireSignature: $requireSignature, service: $service, status: $status, trackingNumber: $trackingNumber, trackingUrl: $trackingUrl, type: $type)'; } 
 }
