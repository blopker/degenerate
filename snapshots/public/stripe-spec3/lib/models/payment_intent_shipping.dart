// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shipping.dart';/// Shipping information for this PaymentIntent.
final class PaymentIntentShipping {const PaymentIntentShipping({this.shipping});

factory PaymentIntentShipping.fromJson(Map<String, dynamic> json) { return PaymentIntentShipping(
  shipping: Shipping.canParse(json) ? Shipping.fromJson(json) : null,
); }

final Shipping? shipping;

/// At least one variant must be present.
bool get isValid { return shipping != null; } 
Map<String, dynamic> toJson() { return {
  ...?shipping?.toJson(),
}; } 
 }
