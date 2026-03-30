// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls when the funds will be captured from the customer's account.
final class CheckoutPaypalPaymentMethodOptionsCaptureMethod {const CheckoutPaypalPaymentMethodOptionsCaptureMethod._(this.value);

factory CheckoutPaypalPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => CheckoutPaypalPaymentMethodOptionsCaptureMethod._(json),
}; }

static const CheckoutPaypalPaymentMethodOptionsCaptureMethod manual = CheckoutPaypalPaymentMethodOptionsCaptureMethod._('manual');

static const List<CheckoutPaypalPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutPaypalPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutPaypalPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class CheckoutPaypalPaymentMethodOptionsSetupFutureUsage {const CheckoutPaypalPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutPaypalPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => CheckoutPaypalPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutPaypalPaymentMethodOptionsSetupFutureUsage none = CheckoutPaypalPaymentMethodOptionsSetupFutureUsage._('none');

static const CheckoutPaypalPaymentMethodOptionsSetupFutureUsage offSession = CheckoutPaypalPaymentMethodOptionsSetupFutureUsage._('off_session');

static const List<CheckoutPaypalPaymentMethodOptionsSetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutPaypalPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutPaypalPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
final class CheckoutPaypalPaymentMethodOptions {const CheckoutPaypalPaymentMethodOptions({this.captureMethod, this.preferredLocale, this.reference, this.setupFutureUsage, });

factory CheckoutPaypalPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutPaypalPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? CheckoutPaypalPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
  preferredLocale: json['preferred_locale'] as String?,
  reference: json['reference'] as String?,
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutPaypalPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final CheckoutPaypalPaymentMethodOptionsCaptureMethod? captureMethod;

/// Preferred locale of the PayPal checkout page that the customer is redirected to.
final String? preferredLocale;

/// A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
final String? reference;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutPaypalPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'preferred_locale': ?preferredLocale,
  'reference': ?reference,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'preferred_locale', 'reference', 'setup_future_usage'}.contains(key)); } 
CheckoutPaypalPaymentMethodOptions copyWith({CheckoutPaypalPaymentMethodOptionsCaptureMethod Function()? captureMethod, String? Function()? preferredLocale, String? Function()? reference, CheckoutPaypalPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, }) { return CheckoutPaypalPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  preferredLocale: preferredLocale != null ? preferredLocale() : this.preferredLocale,
  reference: reference != null ? reference() : this.reference,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutPaypalPaymentMethodOptions &&
          captureMethod == other.captureMethod &&
          preferredLocale == other.preferredLocale &&
          reference == other.reference &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, preferredLocale, reference, setupFutureUsage); } 
@override String toString() { return 'CheckoutPaypalPaymentMethodOptions(captureMethod: $captureMethod, preferredLocale: $preferredLocale, reference: $reference, setupFutureUsage: $setupFutureUsage)'; } 
 }
