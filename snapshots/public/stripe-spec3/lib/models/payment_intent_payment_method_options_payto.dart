// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_mandate_options_payto.dart';/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage {const PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage none = PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage._('off_session');

static const List<PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage($value)'; } 
 }
/// 
@immutable final class PaymentIntentPaymentMethodOptionsPayto {const PaymentIntentPaymentMethodOptionsPayto({this.mandateOptions, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsPayto.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsPayto(
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsMandateOptionsPayto.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsMandateOptionsPayto? mandateOptions;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsPayto copyWith({PaymentIntentPaymentMethodOptionsMandateOptionsPayto Function()? mandateOptions, PaymentIntentPaymentMethodOptionsPaytoSetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsPayto(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsPayto &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(mandateOptions, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsPayto(mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage)'; } 
 }
