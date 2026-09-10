// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_data_billing_details_address.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_data_billing_details_email.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_data_billing_details_name.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_data_billing_details_phone.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails({this.address, this.email, this.name, this.phone, this.taxId, });

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails.fromJson(Map<String, dynamic> json) {return PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails(
  address: json['address'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress.fromJson(json['address']) : null,
  email: json['email'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail.fromJson(json['email']) : null,
  name: json['name'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName.fromJson(json['name']) : null,
  phone: json['phone'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone.fromJson(json['phone']) : null,
  taxId: json['tax_id'] as String?,
);}

final PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress? address;

final PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail? email;

final PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName? name;

final PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone? phone;

final String? taxId;

Map<String, dynamic> toJson() {return {
  if (address != null) 'address': address?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  'tax_id': ?taxId,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'address', 'email', 'name', 'phone', 'tax_id'}.contains(key));}
PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails copyWith({PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress? Function()? address, PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail? Function()? email, PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName? Function()? name, PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone? Function()? phone, String? Function()? taxId, }) {return PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
  taxId: taxId != null ? taxId() : this.taxId,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone &&
          taxId == other.taxId;}
@override int get hashCode {return Object.hash(address, email, name, phone, taxId);}
@override String toString() {return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetails(address: $address, email: $email, name: $name, phone: $phone, taxId: $taxId)';}
}
