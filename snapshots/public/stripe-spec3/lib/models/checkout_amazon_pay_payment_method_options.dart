// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls when the funds will be captured from the customer's account.
@immutable final class CheckoutAmazonPayPaymentMethodOptionsCaptureMethod {const CheckoutAmazonPayPaymentMethodOptionsCaptureMethod._(this.value);

factory CheckoutAmazonPayPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => CheckoutAmazonPayPaymentMethodOptionsCaptureMethod._(json),
}; }

static const CheckoutAmazonPayPaymentMethodOptionsCaptureMethod manual = CheckoutAmazonPayPaymentMethodOptionsCaptureMethod._('manual');

static const List<CheckoutAmazonPayPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAmazonPayPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAmazonPayPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage {const CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage none = CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage._('none');

static const CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage offSession = CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage._('off_session');

static const List<CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
@immutable final class CheckoutAmazonPayPaymentMethodOptions {const CheckoutAmazonPayPaymentMethodOptions({this.captureMethod, this.setupFutureUsage, });

factory CheckoutAmazonPayPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutAmazonPayPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? CheckoutAmazonPayPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final CheckoutAmazonPayPaymentMethodOptionsCaptureMethod? captureMethod;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
CheckoutAmazonPayPaymentMethodOptions copyWith({CheckoutAmazonPayPaymentMethodOptionsCaptureMethod Function()? captureMethod, CheckoutAmazonPayPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, }) { return CheckoutAmazonPayPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutAmazonPayPaymentMethodOptions &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'CheckoutAmazonPayPaymentMethodOptions(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
