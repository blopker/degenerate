// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_methods_payment_method_request_billing_details_address.dart';import 'post_payment_methods_payment_method_request_billing_details_email.dart';import 'post_payment_methods_payment_method_request_billing_details_name.dart';import 'post_payment_methods_payment_method_request_billing_details_phone.dart';/// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
@immutable final class PostPaymentMethodsPaymentMethodRequestBillingDetails {const PostPaymentMethodsPaymentMethodRequestBillingDetails({this.address, this.email, this.name, this.phone, this.taxId, });

factory PostPaymentMethodsPaymentMethodRequestBillingDetails.fromJson(Map<String, dynamic> json) {return PostPaymentMethodsPaymentMethodRequestBillingDetails(
  address: json['address'] != null ? PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress.fromJson(json['address']) : null,
  email: json['email'] != null ? PostPaymentMethodsPaymentMethodRequestBillingDetailsEmail.fromJson(json['email']) : null,
  name: json['name'] != null ? PostPaymentMethodsPaymentMethodRequestBillingDetailsName.fromJson(json['name']) : null,
  phone: json['phone'] != null ? PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone.fromJson(json['phone']) : null,
  taxId: json['tax_id'] as String?,
);}

final PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress? address;

final PostPaymentMethodsPaymentMethodRequestBillingDetailsEmail? email;

final PostPaymentMethodsPaymentMethodRequestBillingDetailsName? name;

final PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone? phone;

final String? taxId;

Map<String, dynamic> toJson() {return {
  if (address != null) 'address': address?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  'tax_id': ?taxId,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'address', 'email', 'name', 'phone', 'tax_id'}.contains(key));}
PostPaymentMethodsPaymentMethodRequestBillingDetails copyWith({PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress? Function()? address, PostPaymentMethodsPaymentMethodRequestBillingDetailsEmail? Function()? email, PostPaymentMethodsPaymentMethodRequestBillingDetailsName? Function()? name, PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone? Function()? phone, String? Function()? taxId, }) {return PostPaymentMethodsPaymentMethodRequestBillingDetails(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
  taxId: taxId != null ? taxId() : this.taxId,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PostPaymentMethodsPaymentMethodRequestBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone &&
          taxId == other.taxId;}
@override int get hashCode {return Object.hash(address, email, name, phone, taxId);}
@override String toString() {return 'PostPaymentMethodsPaymentMethodRequestBillingDetails(address: $address, email: $email, name: $name, phone: $phone, taxId: $taxId)';}
}
