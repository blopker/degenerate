// GENERATED CODE - DO NOT MODIFY BY HAND

import 'checkout_customer_balance_bank_transfer_payment_method_options.dart';/// The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
final class CheckoutCustomerBalancePaymentMethodOptionsFundingType {const CheckoutCustomerBalancePaymentMethodOptionsFundingType._(this.value);

factory CheckoutCustomerBalancePaymentMethodOptionsFundingType.fromJson(String json) { return switch (json) {
  'bank_transfer' => bankTransfer,
  _ => CheckoutCustomerBalancePaymentMethodOptionsFundingType._(json),
}; }

static const CheckoutCustomerBalancePaymentMethodOptionsFundingType bankTransfer = CheckoutCustomerBalancePaymentMethodOptionsFundingType._('bank_transfer');

static const List<CheckoutCustomerBalancePaymentMethodOptionsFundingType> values = [bankTransfer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutCustomerBalancePaymentMethodOptionsFundingType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutCustomerBalancePaymentMethodOptionsFundingType($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage {const CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage._(this.value);

factory CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage._(json),
}; }

static const CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage none = CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage._('none');

static const List<CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage($value)'; } 
 }
/// 
final class CheckoutCustomerBalancePaymentMethodOptions {const CheckoutCustomerBalancePaymentMethodOptions({this.bankTransfer, this.fundingType, this.setupFutureUsage, });

factory CheckoutCustomerBalancePaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutCustomerBalancePaymentMethodOptions(
  bankTransfer: json['bank_transfer'] != null ? CheckoutCustomerBalanceBankTransferPaymentMethodOptions.fromJson(json['bank_transfer'] as Map<String, dynamic>) : null,
  fundingType: json['funding_type'] != null ? CheckoutCustomerBalancePaymentMethodOptionsFundingType.fromJson(json['funding_type'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final CheckoutCustomerBalanceBankTransferPaymentMethodOptions? bankTransfer;

/// The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
final CheckoutCustomerBalancePaymentMethodOptionsFundingType? fundingType;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (bankTransfer != null) 'bank_transfer': bankTransfer?.toJson(),
  if (fundingType != null) 'funding_type': fundingType?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_transfer', 'funding_type', 'setup_future_usage'}.contains(key)); } 
CheckoutCustomerBalancePaymentMethodOptions copyWith({CheckoutCustomerBalanceBankTransferPaymentMethodOptions Function()? bankTransfer, CheckoutCustomerBalancePaymentMethodOptionsFundingType? Function()? fundingType, CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage Function()? setupFutureUsage, }) { return CheckoutCustomerBalancePaymentMethodOptions(
  bankTransfer: bankTransfer != null ? bankTransfer() : this.bankTransfer,
  fundingType: fundingType != null ? fundingType() : this.fundingType,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutCustomerBalancePaymentMethodOptions &&
          bankTransfer == other.bankTransfer &&
          fundingType == other.fundingType &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(bankTransfer, fundingType, setupFutureUsage); } 
@override String toString() { return 'CheckoutCustomerBalancePaymentMethodOptions(bankTransfer: $bankTransfer, fundingType: $fundingType, setupFutureUsage: $setupFutureUsage)'; } 
 }
