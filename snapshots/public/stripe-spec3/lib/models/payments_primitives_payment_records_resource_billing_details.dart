// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_address.dart';/// Billing details used by the customer for this payment.
@immutable final class PaymentsPrimitivesPaymentRecordsResourceBillingDetails {const PaymentsPrimitivesPaymentRecordsResourceBillingDetails({required this.address, this.email = const Omittable.absent(), this.name = const Omittable.absent(), this.phone = const Omittable.absent(), });

factory PaymentsPrimitivesPaymentRecordsResourceBillingDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourceBillingDetails(
  address: PaymentsPrimitivesPaymentRecordsResourceAddress.fromJson(json['address'] as Map<String, dynamic>),
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
); }

final PaymentsPrimitivesPaymentRecordsResourceAddress address;

/// The billing email associated with the method of payment.
final Omittable<String?> email;

/// The billing name associated with the method of payment.
final Omittable<String?> name;

/// The billing phone number associated with the method of payment.
final Omittable<String?> phone;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (email.isPresent) 'email': email.value,
  if (name.isPresent) 'name': name.value,
  if (phone.isPresent) 'phone': phone.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
PaymentsPrimitivesPaymentRecordsResourceBillingDetails copyWith({PaymentsPrimitivesPaymentRecordsResourceAddress? address, Omittable<String?>? email, Omittable<String?>? name, Omittable<String?>? phone, }) { return PaymentsPrimitivesPaymentRecordsResourceBillingDetails(
  address: address ?? this.address,
  email: email ?? this.email,
  name: name ?? this.name,
  phone: phone ?? this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourceBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, email, name, phone); } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourceBillingDetails(address: $address, email: $email, name: $name, phone: $phone)'; } 
 }
