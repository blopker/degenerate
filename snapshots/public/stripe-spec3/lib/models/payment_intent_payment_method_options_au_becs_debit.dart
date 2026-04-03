// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage {const PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage none = PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage> values = [none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage($value)'; } 
 }
/// 
@immutable final class PaymentIntentPaymentMethodOptionsAuBecsDebit {const PaymentIntentPaymentMethodOptionsAuBecsDebit({this.setupFutureUsage, this.targetDate, });

factory PaymentIntentPaymentMethodOptionsAuBecsDebit.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsAuBecsDebit(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
); }

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage? setupFutureUsage;

/// Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
final String? targetDate;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage', 'target_date'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsAuBecsDebit copyWith({PaymentIntentPaymentMethodOptionsAuBecsDebitSetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, }) { return PaymentIntentPaymentMethodOptionsAuBecsDebit(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsAuBecsDebit &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate; } 
@override int get hashCode { return Object.hash(setupFutureUsage, targetDate); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsAuBecsDebit(setupFutureUsage: $setupFutureUsage, targetDate: $targetDate)'; } 
 }
