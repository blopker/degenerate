// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_data_billing_details_address.dart';import 'post_setup_intents_request_payment_method_data_billing_details_email.dart';import 'post_setup_intents_request_payment_method_data_billing_details_name.dart';import 'post_setup_intents_request_payment_method_data_billing_details_phone.dart';@immutable final class PostSetupIntentsRequestPaymentMethodDataBillingDetails {const PostSetupIntentsRequestPaymentMethodDataBillingDetails({this.address, this.email, this.name, this.phone, this.taxId, });

factory PostSetupIntentsRequestPaymentMethodDataBillingDetails.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodDataBillingDetails(
  address: json['address'] != null ? PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress.fromJson(json['address']) : null,
  email: json['email'] != null ? PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail.fromJson(json['email']) : null,
  name: json['name'] != null ? PostSetupIntentsRequestPaymentMethodDataBillingDetailsName.fromJson(json['name']) : null,
  phone: json['phone'] != null ? PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone.fromJson(json['phone']) : null,
  taxId: json['tax_id'] as String?,
); }

final PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress? address;

final PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail? email;

final PostSetupIntentsRequestPaymentMethodDataBillingDetailsName? name;

final PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone? phone;

final String? taxId;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  'tax_id': ?taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'email', 'name', 'phone', 'tax_id'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodDataBillingDetails copyWith({PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress? Function()? address, PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail? Function()? email, PostSetupIntentsRequestPaymentMethodDataBillingDetailsName? Function()? name, PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone? Function()? phone, String? Function()? taxId, }) { return PostSetupIntentsRequestPaymentMethodDataBillingDetails(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
  taxId: taxId != null ? taxId() : this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone &&
          taxId == other.taxId; } 
@override int get hashCode { return Object.hash(address, email, name, phone, taxId); } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodDataBillingDetails(address: $address, email: $email, name: $name, phone: $phone, taxId: $taxId)'; } 
 }
