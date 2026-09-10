// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// 
@immutable final class PaymentMethodCardWalletMasterpass {const PaymentMethodCardWalletMasterpass({this.billingAddress = const Omittable.absent(), this.email = const Omittable.absent(), this.name = const Omittable.absent(), this.shippingAddress = const Omittable.absent(), });

factory PaymentMethodCardWalletMasterpass.fromJson(Map<String, dynamic> json) { return PaymentMethodCardWalletMasterpass(
  billingAddress: json.containsKey('billing_address') ? Omittable(json['billing_address'] != null ? Address.fromJson(json['billing_address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  shippingAddress: json.containsKey('shipping_address') ? Omittable(json['shipping_address'] != null ? Address.fromJson(json['shipping_address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final Omittable<Address?> billingAddress;

/// Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final Omittable<String?> email;

/// Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final Omittable<String?> name;

/// Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final Omittable<Address?> shippingAddress;

Map<String, dynamic> toJson() { return {
  if (billingAddress.isPresent) 'billing_address': billingAddress.value?.toJson(),
  if (email.isPresent) 'email': email.value,
  if (name.isPresent) 'name': name.value,
  if (shippingAddress.isPresent) 'shipping_address': shippingAddress.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_address', 'email', 'name', 'shipping_address'}.contains(key)); } 
PaymentMethodCardWalletMasterpass copyWith({Omittable<Address?>? billingAddress, Omittable<String?>? email, Omittable<String?>? name, Omittable<Address?>? shippingAddress, }) { return PaymentMethodCardWalletMasterpass(
  billingAddress: billingAddress ?? this.billingAddress,
  email: email ?? this.email,
  name: name ?? this.name,
  shippingAddress: shippingAddress ?? this.shippingAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodCardWalletMasterpass &&
          billingAddress == other.billingAddress &&
          email == other.email &&
          name == other.name &&
          shippingAddress == other.shippingAddress; } 
@override int get hashCode { return Object.hash(billingAddress, email, name, shippingAddress); } 
@override String toString() { return 'PaymentMethodCardWalletMasterpass(billingAddress: $billingAddress, email: $email, name: $name, shippingAddress: $shippingAddress)'; } 
 }
