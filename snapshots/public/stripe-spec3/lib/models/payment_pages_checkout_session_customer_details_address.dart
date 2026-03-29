// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// The customer's address after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
final class PaymentPagesCheckoutSessionCustomerDetailsAddress {const PaymentPagesCheckoutSessionCustomerDetailsAddress({this.address});

factory PaymentPagesCheckoutSessionCustomerDetailsAddress.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionCustomerDetailsAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }
