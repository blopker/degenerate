// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class PaymentMethodOptionsAlipaySetupFutureUsage {const PaymentMethodOptionsAlipaySetupFutureUsage._(this.value);

factory PaymentMethodOptionsAlipaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsAlipaySetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsAlipaySetupFutureUsage none = PaymentMethodOptionsAlipaySetupFutureUsage._('none');

static const PaymentMethodOptionsAlipaySetupFutureUsage offSession = PaymentMethodOptionsAlipaySetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsAlipaySetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsAlipaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsAlipaySetupFutureUsage($value)'; } 
 }
/// 
final class PaymentMethodOptionsAlipay {const PaymentMethodOptionsAlipay({this.setupFutureUsage});

factory PaymentMethodOptionsAlipay.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsAlipay(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsAlipaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentMethodOptionsAlipaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsAlipay copyWith({PaymentMethodOptionsAlipaySetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsAlipay(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsAlipay &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsAlipay(setupFutureUsage: $setupFutureUsage)'; } 
 }
