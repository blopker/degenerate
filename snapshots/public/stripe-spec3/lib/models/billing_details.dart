// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// 
@immutable final class BillingDetails {const BillingDetails({this.address, this.email, this.name, this.phone, this.taxId, });

factory BillingDetails.fromJson(Map<String, dynamic> json) { return BillingDetails(
  address: json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  taxId: json['tax_id'] as String?,
); }

/// Billing address.
final Address? address;

/// Email address.
final String? email;

/// Full name.
final String? name;

/// Billing phone number (including extension).
final String? phone;

/// Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
final String? taxId;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
  'tax_id': ?taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'email', 'name', 'phone', 'tax_id'}.contains(key)); } 
BillingDetails copyWith({Address? Function()? address, String? Function()? email, String? Function()? name, String? Function()? phone, String? Function()? taxId, }) { return BillingDetails(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
  taxId: taxId != null ? taxId() : this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone &&
          taxId == other.taxId; } 
@override int get hashCode { return Object.hash(address, email, name, phone, taxId); } 
@override String toString() { return 'BillingDetails(address: $address, email: $email, name: $name, phone: $phone, taxId: $taxId)'; } 
 }
