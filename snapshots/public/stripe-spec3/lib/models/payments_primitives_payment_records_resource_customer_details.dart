// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about the customer for this payment.
@immutable final class PaymentsPrimitivesPaymentRecordsResourceCustomerDetails {const PaymentsPrimitivesPaymentRecordsResourceCustomerDetails({this.customer = const Omittable.absent(), this.email = const Omittable.absent(), this.name = const Omittable.absent(), this.phone = const Omittable.absent(), });

factory PaymentsPrimitivesPaymentRecordsResourceCustomerDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourceCustomerDetails(
  customer: json.containsKey('customer') ? Omittable(json['customer'] as String?) : const Omittable.absent(),
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
); }

/// ID of the Stripe Customer associated with this payment.
final Omittable<String?> customer;

/// The customer's email address.
final Omittable<String?> email;

/// The customer's name.
final Omittable<String?> name;

/// The customer's phone number.
final Omittable<String?> phone;

Map<String, dynamic> toJson() { return {
  if (customer.isPresent) 'customer': customer.value,
  if (email.isPresent) 'email': email.value,
  if (name.isPresent) 'name': name.value,
  if (phone.isPresent) 'phone': phone.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'customer', 'email', 'name', 'phone'}.contains(key)); } 
PaymentsPrimitivesPaymentRecordsResourceCustomerDetails copyWith({Omittable<String?>? customer, Omittable<String?>? email, Omittable<String?>? name, Omittable<String?>? phone, }) { return PaymentsPrimitivesPaymentRecordsResourceCustomerDetails(
  customer: customer ?? this.customer,
  email: email ?? this.email,
  name: name ?? this.name,
  phone: phone ?? this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourceCustomerDetails &&
          customer == other.customer &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(customer, email, name, phone); } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourceCustomerDetails(customer: $customer, email: $email, name: $name, phone: $phone)'; } 
 }
