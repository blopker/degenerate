// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address5.dart';import 'post_payment_methods_request_billing_details_address.dart';import 'post_payment_methods_request_billing_details_email.dart';import 'post_payment_methods_request_billing_details_name.dart';import 'post_payment_methods_request_billing_details_phone.dart';/// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
final class PostPaymentMethodsRequestBillingDetails {const PostPaymentMethodsRequestBillingDetails({this.address, this.email, this.name, this.phone, this.taxId, });

factory PostPaymentMethodsRequestBillingDetails.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestBillingDetails(
  address: json['address'] != null ? OneOf2.parse(json['address'], fromA: (v) => BillingDetailsAddress5.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentMethodsRequestBillingDetailsAddressVariant2.fromJson(v as String),) : null,
  email: json['email'] != null ? OneOf2.parse(json['email'], fromA: (v) => v as String, fromB: (v) => PostPaymentMethodsRequestBillingDetailsEmailVariant2.fromJson(v as String),) : null,
  name: json['name'] != null ? OneOf2.parse(json['name'], fromA: (v) => v as String, fromB: (v) => PostPaymentMethodsRequestBillingDetailsNameVariant2.fromJson(v as String),) : null,
  phone: json['phone'] != null ? OneOf2.parse(json['phone'], fromA: (v) => v as String, fromB: (v) => PostPaymentMethodsRequestBillingDetailsPhoneVariant2.fromJson(v as String),) : null,
  taxId: json['tax_id'] as String?,
); }

final PostPaymentMethodsRequestBillingDetailsAddress? address;

final PostPaymentMethodsRequestBillingDetailsEmail? email;

final PostPaymentMethodsRequestBillingDetailsName? name;

final PostPaymentMethodsRequestBillingDetailsPhone? phone;

final String? taxId;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  'tax_id': ?taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodsRequestBillingDetails copyWith({PostPaymentMethodsRequestBillingDetailsAddress Function()? address, PostPaymentMethodsRequestBillingDetailsEmail Function()? email, PostPaymentMethodsRequestBillingDetailsName Function()? name, PostPaymentMethodsRequestBillingDetailsPhone Function()? phone, String Function()? taxId, }) { return PostPaymentMethodsRequestBillingDetails(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
  taxId: taxId != null ? taxId() : this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone &&
          taxId == other.taxId; } 
@override int get hashCode { return Object.hash(address, email, name, phone, taxId); } 
@override String toString() { return 'PostPaymentMethodsRequestBillingDetails(address: $address, email: $email, name: $name, phone: $phone, taxId: $taxId)'; } 
 }
