// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_mandate_options_bacs_debit.dart';/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage {const PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage none = PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage> values = [none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage($value)'; } 
 }
/// 
@immutable final class PaymentIntentPaymentMethodOptionsBacsDebit {const PaymentIntentPaymentMethodOptionsBacsDebit({this.mandateOptions, this.setupFutureUsage, this.targetDate, });

factory PaymentIntentPaymentMethodOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsBacsDebit(
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsMandateOptionsBacsDebit.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
); }

final PaymentIntentPaymentMethodOptionsMandateOptionsBacsDebit? mandateOptions;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage? setupFutureUsage;

/// Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
final String? targetDate;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'setup_future_usage', 'target_date'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsBacsDebit copyWith({PaymentIntentPaymentMethodOptionsMandateOptionsBacsDebit Function()? mandateOptions, PaymentIntentPaymentMethodOptionsBacsDebitSetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, }) { return PaymentIntentPaymentMethodOptionsBacsDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsBacsDebit &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate; } 
@override int get hashCode { return Object.hash(mandateOptions, setupFutureUsage, targetDate); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsBacsDebit(mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate)'; } 
 }
