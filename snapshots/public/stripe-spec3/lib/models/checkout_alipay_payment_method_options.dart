// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class CheckoutAlipayPaymentMethodOptionsSetupFutureUsage {const CheckoutAlipayPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutAlipayPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => CheckoutAlipayPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutAlipayPaymentMethodOptionsSetupFutureUsage none = CheckoutAlipayPaymentMethodOptionsSetupFutureUsage._('none');

static const List<CheckoutAlipayPaymentMethodOptionsSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAlipayPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAlipayPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
final class CheckoutAlipayPaymentMethodOptions {const CheckoutAlipayPaymentMethodOptions({this.setupFutureUsage});

factory CheckoutAlipayPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutAlipayPaymentMethodOptions(
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutAlipayPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutAlipayPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
CheckoutAlipayPaymentMethodOptions copyWith({CheckoutAlipayPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage}) { return CheckoutAlipayPaymentMethodOptions(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutAlipayPaymentMethodOptions &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'CheckoutAlipayPaymentMethodOptions(setupFutureUsage: $setupFutureUsage)'; } 
 }
