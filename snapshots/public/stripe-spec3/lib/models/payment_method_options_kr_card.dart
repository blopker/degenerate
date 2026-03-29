// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls when the funds will be captured from the customer's account.
final class PaymentMethodOptionsKrCardCaptureMethod {const PaymentMethodOptionsKrCardCaptureMethod._(this.value);

factory PaymentMethodOptionsKrCardCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PaymentMethodOptionsKrCardCaptureMethod._(json),
}; }

static const PaymentMethodOptionsKrCardCaptureMethod manual = PaymentMethodOptionsKrCardCaptureMethod._('manual');

static const List<PaymentMethodOptionsKrCardCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsKrCardCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsKrCardCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class PaymentMethodOptionsKrCardSetupFutureUsage {const PaymentMethodOptionsKrCardSetupFutureUsage._(this.value);

factory PaymentMethodOptionsKrCardSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsKrCardSetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsKrCardSetupFutureUsage none = PaymentMethodOptionsKrCardSetupFutureUsage._('none');

static const PaymentMethodOptionsKrCardSetupFutureUsage offSession = PaymentMethodOptionsKrCardSetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsKrCardSetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsKrCardSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsKrCardSetupFutureUsage($value)'; } 
 }
/// 
final class PaymentMethodOptionsKrCard {const PaymentMethodOptionsKrCard({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsKrCard.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsKrCard(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsKrCardCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsKrCardSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final PaymentMethodOptionsKrCardCaptureMethod? captureMethod;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentMethodOptionsKrCardSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsKrCard copyWith({PaymentMethodOptionsKrCardCaptureMethod Function()? captureMethod, PaymentMethodOptionsKrCardSetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsKrCard(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsKrCard &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsKrCard(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
