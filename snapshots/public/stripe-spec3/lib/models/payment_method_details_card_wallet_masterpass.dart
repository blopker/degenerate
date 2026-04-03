// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// 
@immutable final class PaymentMethodDetailsCardWalletMasterpass {const PaymentMethodDetailsCardWalletMasterpass({this.billingAddress, this.email, this.name, this.shippingAddress, });

factory PaymentMethodDetailsCardWalletMasterpass.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardWalletMasterpass(
  billingAddress: json['billing_address'] != null ? Address.fromJson(json['billing_address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  shippingAddress: json['shipping_address'] != null ? Address.fromJson(json['shipping_address'] as Map<String, dynamic>) : null,
); }

/// Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final Address? billingAddress;

/// Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? email;

/// Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? name;

/// Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final Address? shippingAddress;

Map<String, dynamic> toJson() { return {
  if (billingAddress != null) 'billing_address': billingAddress?.toJson(),
  'email': ?email,
  'name': ?name,
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_address', 'email', 'name', 'shipping_address'}.contains(key)); } 
PaymentMethodDetailsCardWalletMasterpass copyWith({Address? Function()? billingAddress, String? Function()? email, String? Function()? name, Address? Function()? shippingAddress, }) { return PaymentMethodDetailsCardWalletMasterpass(
  billingAddress: billingAddress != null ? billingAddress() : this.billingAddress,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCardWalletMasterpass &&
          billingAddress == other.billingAddress &&
          email == other.email &&
          name == other.name &&
          shippingAddress == other.shippingAddress; } 
@override int get hashCode { return Object.hash(billingAddress, email, name, shippingAddress); } 
@override String toString() { return 'PaymentMethodDetailsCardWalletMasterpass(billingAddress: $billingAddress, email: $email, name: $name, shippingAddress: $shippingAddress)'; } 
 }
