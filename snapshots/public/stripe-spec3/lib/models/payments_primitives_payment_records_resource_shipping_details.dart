// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_address.dart';/// The customer's shipping information associated with this payment.
@immutable final class PaymentsPrimitivesPaymentRecordsResourceShippingDetails {const PaymentsPrimitivesPaymentRecordsResourceShippingDetails({required this.address, this.name = const Omittable.absent(), this.phone = const Omittable.absent(), });

factory PaymentsPrimitivesPaymentRecordsResourceShippingDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourceShippingDetails(
  address: PaymentsPrimitivesPaymentRecordsResourceAddress.fromJson(json['address'] as Map<String, dynamic>),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
); }

final PaymentsPrimitivesPaymentRecordsResourceAddress address;

/// The shipping recipient's name.
final Omittable<String?> name;

/// The shipping recipient's phone number.
final Omittable<String?> phone;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (name.isPresent) 'name': name.value,
  if (phone.isPresent) 'phone': phone.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
PaymentsPrimitivesPaymentRecordsResourceShippingDetails copyWith({PaymentsPrimitivesPaymentRecordsResourceAddress? address, Omittable<String?>? name, Omittable<String?>? phone, }) { return PaymentsPrimitivesPaymentRecordsResourceShippingDetails(
  address: address ?? this.address,
  name: name ?? this.name,
  phone: phone ?? this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourceShippingDetails &&
          address == other.address &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, name, phone); } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourceShippingDetails(address: $address, name: $name, phone: $phone)'; } 
 }
