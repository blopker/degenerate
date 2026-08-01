// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls when the funds will be captured from the customer's account.
@immutable final class PaymentMethodOptionsPaypalCaptureMethod {const PaymentMethodOptionsPaypalCaptureMethod._(this.value);

factory PaymentMethodOptionsPaypalCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PaymentMethodOptionsPaypalCaptureMethod._(json),
}; }

static const PaymentMethodOptionsPaypalCaptureMethod manual = PaymentMethodOptionsPaypalCaptureMethod._('manual');

static const List<PaymentMethodOptionsPaypalCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsPaypalCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsPaypalCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class PaymentMethodOptionsPaypalSetupFutureUsage {const PaymentMethodOptionsPaypalSetupFutureUsage._(this.value);

factory PaymentMethodOptionsPaypalSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsPaypalSetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsPaypalSetupFutureUsage none = PaymentMethodOptionsPaypalSetupFutureUsage._('none');

static const PaymentMethodOptionsPaypalSetupFutureUsage offSession = PaymentMethodOptionsPaypalSetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsPaypalSetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsPaypalSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsPaypalSetupFutureUsage($value)'; } 
 }
/// 
@immutable final class PaymentMethodOptionsPaypal {const PaymentMethodOptionsPaypal({this.captureMethod, this.preferredLocale = const Omittable.absent(), this.reference = const Omittable.absent(), this.setupFutureUsage, });

factory PaymentMethodOptionsPaypal.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsPaypal(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsPaypalCaptureMethod.fromJson(json['capture_method'] as String) : null,
  preferredLocale: json.containsKey('preferred_locale') ? Omittable(json['preferred_locale'] as String?) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsPaypalSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final PaymentMethodOptionsPaypalCaptureMethod? captureMethod;

/// Preferred locale of the PayPal checkout page that the customer is redirected to.
final Omittable<String?> preferredLocale;

/// A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
final Omittable<String?> reference;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentMethodOptionsPaypalSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (preferredLocale.isPresent) 'preferred_locale': preferredLocale.value,
  if (reference.isPresent) 'reference': reference.value,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'preferred_locale', 'reference', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsPaypal copyWith({PaymentMethodOptionsPaypalCaptureMethod? Function()? captureMethod, Omittable<String?>? preferredLocale, Omittable<String?>? reference, PaymentMethodOptionsPaypalSetupFutureUsage? Function()? setupFutureUsage, }) { return PaymentMethodOptionsPaypal(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  preferredLocale: preferredLocale ?? this.preferredLocale,
  reference: reference ?? this.reference,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsPaypal &&
          captureMethod == other.captureMethod &&
          preferredLocale == other.preferredLocale &&
          reference == other.reference &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, preferredLocale, reference, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsPaypal(captureMethod: $captureMethod, preferredLocale: $preferredLocale, reference: $reference, setupFutureUsage: $setupFutureUsage)'; } 
 }
