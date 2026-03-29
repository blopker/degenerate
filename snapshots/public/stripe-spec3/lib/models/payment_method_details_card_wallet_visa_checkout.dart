// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_details_card_wallet_visa_checkout_billing_address.dart';import 'payment_method_details_card_wallet_visa_checkout_shipping_address.dart';/// 
final class PaymentMethodDetailsCardWalletVisaCheckout {const PaymentMethodDetailsCardWalletVisaCheckout({this.billingAddress, this.email, this.name, this.shippingAddress, });

factory PaymentMethodDetailsCardWalletVisaCheckout.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardWalletVisaCheckout(
  billingAddress: json['billing_address'] != null ? PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress.fromJson(json['billing_address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  shippingAddress: json['shipping_address'] != null ? PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress.fromJson(json['shipping_address'] as Map<String, dynamic>) : null,
); }

/// Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress? billingAddress;

/// Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? email;

/// Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? name;

/// Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress? shippingAddress;

Map<String, dynamic> toJson() { return {
  if (billingAddress != null) 'billing_address': billingAddress?.toJson(),
  'email': ?email,
  'name': ?name,
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_address', 'email', 'name', 'shipping_address'}.contains(key)); } 
PaymentMethodDetailsCardWalletVisaCheckout copyWith({PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress? Function()? billingAddress, String? Function()? email, String? Function()? name, PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress? Function()? shippingAddress, }) { return PaymentMethodDetailsCardWalletVisaCheckout(
  billingAddress: billingAddress != null ? billingAddress() : this.billingAddress,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCardWalletVisaCheckout &&
          billingAddress == other.billingAddress &&
          email == other.email &&
          name == other.name &&
          shippingAddress == other.shippingAddress; } 
@override int get hashCode { return Object.hash(billingAddress, email, name, shippingAddress); } 
@override String toString() { return 'PaymentMethodDetailsCardWalletVisaCheckout(billingAddress: $billingAddress, email: $email, name: $name, shippingAddress: $shippingAddress)'; } 
 }
