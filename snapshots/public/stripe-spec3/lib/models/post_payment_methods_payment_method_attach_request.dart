// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentMethodsPaymentMethodAttachRequest {const PostPaymentMethodsPaymentMethodAttachRequest({this.customer, this.customerAccount, this.expand, });

factory PostPaymentMethodsPaymentMethodAttachRequest.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsPaymentMethodAttachRequest(
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The ID of the customer to which to attach the PaymentMethod.
final String? customer;

/// The ID of the Account representing the customer to which to attach the PaymentMethod.
final String? customerAccount;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodsPaymentMethodAttachRequest copyWith({String Function()? customer, String Function()? customerAccount, List<String> Function()? expand, }) { return PostPaymentMethodsPaymentMethodAttachRequest(
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsPaymentMethodAttachRequest &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(customer, customerAccount, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostPaymentMethodsPaymentMethodAttachRequest(customer: $customer, customerAccount: $customerAccount, expand: $expand)'; } 
 }
