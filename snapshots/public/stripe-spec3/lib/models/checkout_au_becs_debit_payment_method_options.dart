// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage {const CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage none = CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage._('none');

static const List<CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
final class CheckoutAuBecsDebitPaymentMethodOptions {const CheckoutAuBecsDebitPaymentMethodOptions({this.setupFutureUsage, this.targetDate, });

factory CheckoutAuBecsDebitPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutAuBecsDebitPaymentMethodOptions(
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
); }

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

/// Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
final String? targetDate;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage', 'target_date'}.contains(key)); } 
CheckoutAuBecsDebitPaymentMethodOptions copyWith({CheckoutAuBecsDebitPaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, }) { return CheckoutAuBecsDebitPaymentMethodOptions(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutAuBecsDebitPaymentMethodOptions &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate; } 
@override int get hashCode { return Object.hash(setupFutureUsage, targetDate); } 
@override String toString() { return 'CheckoutAuBecsDebitPaymentMethodOptions(setupFutureUsage: $setupFutureUsage, targetDate: $targetDate)'; } 
 }
