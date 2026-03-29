// GENERATED CODE - DO NOT MODIFY BY HAND

import 'checkout_acss_debit_mandate_options.dart';/// Currency supported by the bank account. Returned when the Session is in `setup` mode.
final class CheckoutAcssDebitPaymentMethodOptionsCurrency {const CheckoutAcssDebitPaymentMethodOptionsCurrency._(this.value);

factory CheckoutAcssDebitPaymentMethodOptionsCurrency.fromJson(String json) { return switch (json) {
  'cad' => cad,
  'usd' => usd,
  _ => CheckoutAcssDebitPaymentMethodOptionsCurrency._(json),
}; }

static const CheckoutAcssDebitPaymentMethodOptionsCurrency cad = CheckoutAcssDebitPaymentMethodOptionsCurrency._('cad');

static const CheckoutAcssDebitPaymentMethodOptionsCurrency usd = CheckoutAcssDebitPaymentMethodOptionsCurrency._('usd');

static const List<CheckoutAcssDebitPaymentMethodOptionsCurrency> values = [cad, usd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAcssDebitPaymentMethodOptionsCurrency && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAcssDebitPaymentMethodOptionsCurrency($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage {const CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage none = CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage._('none');

static const CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage offSession = CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage._('off_session');

static const CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage onSession = CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage._('on_session');

static const List<CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage> values = [none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// Bank account verification method.
final class CheckoutAcssDebitPaymentMethodOptionsVerificationMethod {const CheckoutAcssDebitPaymentMethodOptionsVerificationMethod._(this.value);

factory CheckoutAcssDebitPaymentMethodOptionsVerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => CheckoutAcssDebitPaymentMethodOptionsVerificationMethod._(json),
}; }

static const CheckoutAcssDebitPaymentMethodOptionsVerificationMethod automatic = CheckoutAcssDebitPaymentMethodOptionsVerificationMethod._('automatic');

static const CheckoutAcssDebitPaymentMethodOptionsVerificationMethod instant = CheckoutAcssDebitPaymentMethodOptionsVerificationMethod._('instant');

static const CheckoutAcssDebitPaymentMethodOptionsVerificationMethod microdeposits = CheckoutAcssDebitPaymentMethodOptionsVerificationMethod._('microdeposits');

static const List<CheckoutAcssDebitPaymentMethodOptionsVerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAcssDebitPaymentMethodOptionsVerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAcssDebitPaymentMethodOptionsVerificationMethod($value)'; } 
 }
/// 
final class CheckoutAcssDebitPaymentMethodOptions {const CheckoutAcssDebitPaymentMethodOptions({this.currency, this.mandateOptions, this.setupFutureUsage, this.targetDate, this.verificationMethod, });

factory CheckoutAcssDebitPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutAcssDebitPaymentMethodOptions(
  currency: json['currency'] != null ? CheckoutAcssDebitPaymentMethodOptionsCurrency.fromJson(json['currency'] as String) : null,
  mandateOptions: json['mandate_options'] != null ? CheckoutAcssDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
  verificationMethod: json['verification_method'] != null ? CheckoutAcssDebitPaymentMethodOptionsVerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

/// Currency supported by the bank account. Returned when the Session is in `setup` mode.
final CheckoutAcssDebitPaymentMethodOptionsCurrency? currency;

final CheckoutAcssDebitMandateOptions? mandateOptions;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

/// Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
final String? targetDate;

/// Bank account verification method.
final CheckoutAcssDebitPaymentMethodOptionsVerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (currency != null) 'currency': currency?.toJson(),
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CheckoutAcssDebitPaymentMethodOptions copyWith({CheckoutAcssDebitPaymentMethodOptionsCurrency Function()? currency, CheckoutAcssDebitMandateOptions Function()? mandateOptions, CheckoutAcssDebitPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, CheckoutAcssDebitPaymentMethodOptionsVerificationMethod Function()? verificationMethod, }) { return CheckoutAcssDebitPaymentMethodOptions(
  currency: currency != null ? currency() : this.currency,
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutAcssDebitPaymentMethodOptions &&
          currency == other.currency &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(currency, mandateOptions, setupFutureUsage, targetDate, verificationMethod); } 
@override String toString() { return 'CheckoutAcssDebitPaymentMethodOptions(currency: $currency, mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate, verificationMethod: $verificationMethod)'; } 
 }
