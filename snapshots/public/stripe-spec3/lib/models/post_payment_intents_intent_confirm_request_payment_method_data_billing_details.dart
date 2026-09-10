// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_confirm_request_payment_method_data_billing_details_address.dart';import 'post_payment_intents_intent_confirm_request_payment_method_data_billing_details_email.dart';import 'post_payment_intents_intent_confirm_request_payment_method_data_billing_details_name.dart';import 'post_payment_intents_intent_confirm_request_payment_method_data_billing_details_phone.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails({this.address, this.email, this.name, this.phone, this.taxId, });

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails.fromJson(Map<String, dynamic> json) {return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails(
  address: json['address'] != null ? PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress.fromJson(json['address']) : null,
  email: json['email'] != null ? PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail.fromJson(json['email']) : null,
  name: json['name'] != null ? PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName.fromJson(json['name']) : null,
  phone: json['phone'] != null ? PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone.fromJson(json['phone']) : null,
  taxId: json['tax_id'] as String?,
);}

final PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress? address;

final PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail? email;

final PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName? name;

final PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone? phone;

final String? taxId;

Map<String, dynamic> toJson() {return {
  if (address != null) 'address': address?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  'tax_id': ?taxId,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'address', 'email', 'name', 'phone', 'tax_id'}.contains(key));}
PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails copyWith({PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress? Function()? address, PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail? Function()? email, PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName? Function()? name, PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone? Function()? phone, String? Function()? taxId, }) {return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
  taxId: taxId != null ? taxId() : this.taxId,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone &&
          taxId == other.taxId;}
@override int get hashCode {return Object.hash(address, email, name, phone, taxId);}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetails(address: $address, email: $email, name: $name, phone: $phone, taxId: $taxId)';}
}
