// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls when the funds will be captured from the customer's account.
@immutable final class CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod {const CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod._(this.value);

factory CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod._(json),
}; }

static const CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod manual = CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod._('manual');

static const List<CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage {const CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage none = CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage._('none');

static const List<CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
@immutable final class CheckoutAfterpayClearpayPaymentMethodOptions {const CheckoutAfterpayClearpayPaymentMethodOptions({this.captureMethod, this.setupFutureUsage, });

factory CheckoutAfterpayClearpayPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutAfterpayClearpayPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod? captureMethod;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
CheckoutAfterpayClearpayPaymentMethodOptions copyWith({CheckoutAfterpayClearpayPaymentMethodOptionsCaptureMethod Function()? captureMethod, CheckoutAfterpayClearpayPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, }) { return CheckoutAfterpayClearpayPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutAfterpayClearpayPaymentMethodOptions &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'CheckoutAfterpayClearpayPaymentMethodOptions(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
