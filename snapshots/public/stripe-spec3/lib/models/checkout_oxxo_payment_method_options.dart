// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class CheckoutOxxoPaymentMethodOptionsSetupFutureUsage {const CheckoutOxxoPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutOxxoPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => CheckoutOxxoPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutOxxoPaymentMethodOptionsSetupFutureUsage none = CheckoutOxxoPaymentMethodOptionsSetupFutureUsage._('none');

static const List<CheckoutOxxoPaymentMethodOptionsSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutOxxoPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutOxxoPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
final class CheckoutOxxoPaymentMethodOptions {const CheckoutOxxoPaymentMethodOptions({required this.expiresAfterDays, this.setupFutureUsage, });

factory CheckoutOxxoPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutOxxoPaymentMethodOptions(
  expiresAfterDays: (json['expires_after_days'] as num).toInt(),
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutOxxoPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// The number of calendar days before an OXXO invoice expires. For example, if you create an OXXO invoice on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
final int expiresAfterDays;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutOxxoPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'expires_after_days': expiresAfterDays,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('expires_after_days') && json['expires_after_days'] is num; } 
CheckoutOxxoPaymentMethodOptions copyWith({int? expiresAfterDays, CheckoutOxxoPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, }) { return CheckoutOxxoPaymentMethodOptions(
  expiresAfterDays: expiresAfterDays ?? this.expiresAfterDays,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutOxxoPaymentMethodOptions &&
          expiresAfterDays == other.expiresAfterDays &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(expiresAfterDays, setupFutureUsage); } 
@override String toString() { return 'CheckoutOxxoPaymentMethodOptions(expiresAfterDays: $expiresAfterDays, setupFutureUsage: $setupFutureUsage)'; } 
 }
