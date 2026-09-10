// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// 
@immutable final class Shipping {const Shipping({this.address, this.carrier = const Omittable.absent(), this.name, this.phone = const Omittable.absent(), this.trackingNumber = const Omittable.absent(), });

factory Shipping.fromJson(Map<String, dynamic> json) { return Shipping(
  address: json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null,
  carrier: json.containsKey('carrier') ? Omittable(json['carrier'] as String?) : const Omittable.absent(),
  name: json['name'] as String?,
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
  trackingNumber: json.containsKey('tracking_number') ? Omittable(json['tracking_number'] as String?) : const Omittable.absent(),
); }

final Address? address;

/// The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
final Omittable<String?> carrier;

/// Recipient name.
final String? name;

/// Recipient phone (including extension).
final Omittable<String?> phone;

/// The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
final Omittable<String?> trackingNumber;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (carrier.isPresent) 'carrier': carrier.value,
  'name': ?name,
  if (phone.isPresent) 'phone': phone.value,
  if (trackingNumber.isPresent) 'tracking_number': trackingNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'carrier', 'name', 'phone', 'tracking_number'}.contains(key)); } 
Shipping copyWith({Address? Function()? address, Omittable<String?>? carrier, String? Function()? name, Omittable<String?>? phone, Omittable<String?>? trackingNumber, }) { return Shipping(
  address: address != null ? address() : this.address,
  carrier: carrier ?? this.carrier,
  name: name != null ? name() : this.name,
  phone: phone ?? this.phone,
  trackingNumber: trackingNumber ?? this.trackingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Shipping &&
          address == other.address &&
          carrier == other.carrier &&
          name == other.name &&
          phone == other.phone &&
          trackingNumber == other.trackingNumber; } 
@override int get hashCode { return Object.hash(address, carrier, name, phone, trackingNumber); } 
@override String toString() { return 'Shipping(address: $address, carrier: $carrier, name: $name, phone: $phone, trackingNumber: $trackingNumber)'; } 
 }
