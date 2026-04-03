// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class PaymentMethodOptionsGiropaySetupFutureUsage {const PaymentMethodOptionsGiropaySetupFutureUsage._(this.value);

factory PaymentMethodOptionsGiropaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsGiropaySetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsGiropaySetupFutureUsage none = PaymentMethodOptionsGiropaySetupFutureUsage._('none');

static const List<PaymentMethodOptionsGiropaySetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsGiropaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsGiropaySetupFutureUsage($value)'; } 
 }
/// 
@immutable final class PaymentMethodOptionsGiropay {const PaymentMethodOptionsGiropay({this.setupFutureUsage});

factory PaymentMethodOptionsGiropay.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsGiropay(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsGiropaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentMethodOptionsGiropaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsGiropay copyWith({PaymentMethodOptionsGiropaySetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsGiropay(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsGiropay &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsGiropay(setupFutureUsage: $setupFutureUsage)'; } 
 }
