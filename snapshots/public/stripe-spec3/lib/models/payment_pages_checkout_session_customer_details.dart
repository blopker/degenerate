// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';import 'payment_pages_checkout_session_tax_id.dart';/// The customer’s tax exempt status after a completed Checkout Session.
@immutable final class PaymentPagesCheckoutSessionCustomerDetailsTaxExempt {const PaymentPagesCheckoutSessionCustomerDetailsTaxExempt._(this.value);

factory PaymentPagesCheckoutSessionCustomerDetailsTaxExempt.fromJson(String json) { return switch (json) {
  'exempt' => exempt,
  'none' => none,
  'reverse' => reverse,
  _ => PaymentPagesCheckoutSessionCustomerDetailsTaxExempt._(json),
}; }

static const PaymentPagesCheckoutSessionCustomerDetailsTaxExempt exempt = PaymentPagesCheckoutSessionCustomerDetailsTaxExempt._('exempt');

static const PaymentPagesCheckoutSessionCustomerDetailsTaxExempt none = PaymentPagesCheckoutSessionCustomerDetailsTaxExempt._('none');

static const PaymentPagesCheckoutSessionCustomerDetailsTaxExempt reverse = PaymentPagesCheckoutSessionCustomerDetailsTaxExempt._('reverse');

static const List<PaymentPagesCheckoutSessionCustomerDetailsTaxExempt> values = [exempt, none, reverse];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionCustomerDetailsTaxExempt && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionCustomerDetailsTaxExempt($value)'; } 
 }
/// 
@immutable final class PaymentPagesCheckoutSessionCustomerDetails {const PaymentPagesCheckoutSessionCustomerDetails({this.address = const Omittable.absent(), this.businessName = const Omittable.absent(), this.email = const Omittable.absent(), this.individualName = const Omittable.absent(), this.name = const Omittable.absent(), this.phone = const Omittable.absent(), this.taxExempt = const Omittable.absent(), this.taxIds = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionCustomerDetails.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionCustomerDetails(
  address: json.containsKey('address') ? Omittable(json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  businessName: json.containsKey('business_name') ? Omittable(json['business_name'] as String?) : const Omittable.absent(),
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  individualName: json.containsKey('individual_name') ? Omittable(json['individual_name'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
  taxExempt: json.containsKey('tax_exempt') ? Omittable(json['tax_exempt'] != null ? PaymentPagesCheckoutSessionCustomerDetailsTaxExempt.fromJson(json['tax_exempt'] as String) : null) : const Omittable.absent(),
  taxIds: json.containsKey('tax_ids') ? Omittable((json['tax_ids'] as List<dynamic>?)?.map((e) => PaymentPagesCheckoutSessionTaxId.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
); }

/// The customer's address after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
final Omittable<Address?> address;

/// The customer's business name after a completed Checkout Session.
final Omittable<String?> businessName;

/// The email associated with the Customer, if one exists, on the Checkout Session after a completed Checkout Session or at time of session expiry.
/// Otherwise, if the customer has consented to promotional content, this value is the most recent valid email provided by the customer on the Checkout form.
final Omittable<String?> email;

/// The customer's individual name after a completed Checkout Session.
final Omittable<String?> individualName;

/// The customer's name after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
final Omittable<String?> name;

/// The customer's phone number after a completed Checkout Session.
final Omittable<String?> phone;

/// The customer’s tax exempt status after a completed Checkout Session.
final Omittable<PaymentPagesCheckoutSessionCustomerDetailsTaxExempt?> taxExempt;

/// The customer’s tax IDs after a completed Checkout Session.
final Omittable<List<PaymentPagesCheckoutSessionTaxId>?> taxIds;

Map<String, dynamic> toJson() { return {
  if (address.isPresent) 'address': address.value?.toJson(),
  if (businessName.isPresent) 'business_name': businessName.value,
  if (email.isPresent) 'email': email.value,
  if (individualName.isPresent) 'individual_name': individualName.value,
  if (name.isPresent) 'name': name.value,
  if (phone.isPresent) 'phone': phone.value,
  if (taxExempt.isPresent) 'tax_exempt': taxExempt.value?.toJson(),
  if (taxIds.isPresent) 'tax_ids': taxIds.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'business_name', 'email', 'individual_name', 'name', 'phone', 'tax_exempt', 'tax_ids'}.contains(key)); } 
PaymentPagesCheckoutSessionCustomerDetails copyWith({Omittable<Address?>? address, Omittable<String?>? businessName, Omittable<String?>? email, Omittable<String?>? individualName, Omittable<String?>? name, Omittable<String?>? phone, Omittable<PaymentPagesCheckoutSessionCustomerDetailsTaxExempt?>? taxExempt, Omittable<List<PaymentPagesCheckoutSessionTaxId>?>? taxIds, }) { return PaymentPagesCheckoutSessionCustomerDetails(
  address: address ?? this.address,
  businessName: businessName ?? this.businessName,
  email: email ?? this.email,
  individualName: individualName ?? this.individualName,
  name: name ?? this.name,
  phone: phone ?? this.phone,
  taxExempt: taxExempt ?? this.taxExempt,
  taxIds: taxIds ?? this.taxIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionCustomerDetails &&
          address == other.address &&
          businessName == other.businessName &&
          email == other.email &&
          individualName == other.individualName &&
          name == other.name &&
          phone == other.phone &&
          taxExempt == other.taxExempt &&
          taxIds.isPresent == other.taxIds.isPresent &&
          listEquals(taxIds.value, other.taxIds.value); } 
@override int get hashCode { return Object.hash(address, businessName, email, individualName, name, phone, taxExempt, Object.hashAll(taxIds.value ?? const [])); } 
@override String toString() { return 'PaymentPagesCheckoutSessionCustomerDetails(address: $address, businessName: $businessName, email: $email, individualName: $individualName, name: $name, phone: $phone, taxExempt: $taxExempt, taxIds: $taxIds)'; } 
 }
