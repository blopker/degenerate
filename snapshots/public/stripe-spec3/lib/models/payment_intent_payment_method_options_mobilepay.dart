// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls when the funds will be captured from the customer's account.
final class PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod {const PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod manual = PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod._('manual');

static const List<PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage {const PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage none = PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage._('none');

static const List<PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage($value)'; } 
 }
/// 
final class PaymentIntentPaymentMethodOptionsMobilepay {const PaymentIntentPaymentMethodOptionsMobilepay({this.captureMethod, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsMobilepay.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsMobilepay(
  captureMethod: json['capture_method'] != null ? PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod? captureMethod;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsMobilepay copyWith({PaymentIntentPaymentMethodOptionsMobilepayCaptureMethod Function()? captureMethod, PaymentIntentPaymentMethodOptionsMobilepaySetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsMobilepay(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsMobilepay &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsMobilepay(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
