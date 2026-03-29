// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls when the funds will be captured from the customer's account.
final class CheckoutKakaoPayPaymentMethodOptionsCaptureMethod {const CheckoutKakaoPayPaymentMethodOptionsCaptureMethod._(this.value);

factory CheckoutKakaoPayPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => CheckoutKakaoPayPaymentMethodOptionsCaptureMethod._(json),
}; }

static const CheckoutKakaoPayPaymentMethodOptionsCaptureMethod manual = CheckoutKakaoPayPaymentMethodOptionsCaptureMethod._('manual');

static const List<CheckoutKakaoPayPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutKakaoPayPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutKakaoPayPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage {const CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage none = CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage._('none');

static const CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage offSession = CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage._('off_session');

static const List<CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
final class CheckoutKakaoPayPaymentMethodOptions {const CheckoutKakaoPayPaymentMethodOptions({this.captureMethod, this.setupFutureUsage, });

factory CheckoutKakaoPayPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutKakaoPayPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? CheckoutKakaoPayPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final CheckoutKakaoPayPaymentMethodOptionsCaptureMethod? captureMethod;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CheckoutKakaoPayPaymentMethodOptions copyWith({CheckoutKakaoPayPaymentMethodOptionsCaptureMethod Function()? captureMethod, CheckoutKakaoPayPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, }) { return CheckoutKakaoPayPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutKakaoPayPaymentMethodOptions &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'CheckoutKakaoPayPaymentMethodOptions(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
