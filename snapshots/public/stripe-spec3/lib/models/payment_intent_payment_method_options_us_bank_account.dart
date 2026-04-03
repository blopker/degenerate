// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'linked_account_options_common.dart';import 'payment_method_options_us_bank_account_mandate_options.dart';/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage {const PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage none = PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage> values = [none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage($value)'; } 
 }
/// The purpose of the transaction.
@immutable final class PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose {const PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose._(this.value);

factory PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose.fromJson(String json) { return switch (json) {
  'goods' => goods,
  'other' => $other,
  'services' => services,
  'unspecified' => unspecified,
  _ => PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose._(json),
}; }

static const PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose goods = PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose._('goods');

static const PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose $other = PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose._('other');

static const PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose services = PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose._('services');

static const PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose unspecified = PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose._('unspecified');

static const List<PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose> values = [goods, $other, services, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose($value)'; } 
 }
/// Bank account verification method.
@immutable final class PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod {const PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod automatic = PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod._('automatic');

static const PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod instant = PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod._('instant');

static const PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod microdeposits = PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod._('microdeposits');

static const List<PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod($value)'; } 
 }
/// 
@immutable final class PaymentIntentPaymentMethodOptionsUsBankAccount {const PaymentIntentPaymentMethodOptionsUsBankAccount({this.financialConnections, this.mandateOptions, this.setupFutureUsage, this.targetDate, this.transactionPurpose, this.verificationMethod, });

factory PaymentIntentPaymentMethodOptionsUsBankAccount.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsUsBankAccount(
  financialConnections: json['financial_connections'] != null ? LinkedAccountOptionsCommon.fromJson(json['financial_connections'] as Map<String, dynamic>) : null,
  mandateOptions: json['mandate_options'] != null ? PaymentMethodOptionsUsBankAccountMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
  transactionPurpose: json['transaction_purpose'] != null ? PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose.fromJson(json['transaction_purpose'] as String) : null,
  verificationMethod: json['verification_method'] != null ? PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final LinkedAccountOptionsCommon? financialConnections;

final PaymentMethodOptionsUsBankAccountMandateOptions? mandateOptions;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage? setupFutureUsage;

/// Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
final String? targetDate;

/// The purpose of the transaction.
final PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose? transactionPurpose;

/// Bank account verification method.
final PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (financialConnections != null) 'financial_connections': financialConnections?.toJson(),
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
  if (transactionPurpose != null) 'transaction_purpose': transactionPurpose?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'financial_connections', 'mandate_options', 'setup_future_usage', 'target_date', 'transaction_purpose', 'verification_method'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsUsBankAccount copyWith({LinkedAccountOptionsCommon Function()? financialConnections, PaymentMethodOptionsUsBankAccountMandateOptions Function()? mandateOptions, PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, PaymentIntentPaymentMethodOptionsUsBankAccountTransactionPurpose Function()? transactionPurpose, PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod Function()? verificationMethod, }) { return PaymentIntentPaymentMethodOptionsUsBankAccount(
  financialConnections: financialConnections != null ? financialConnections() : this.financialConnections,
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
  transactionPurpose: transactionPurpose != null ? transactionPurpose() : this.transactionPurpose,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsUsBankAccount &&
          financialConnections == other.financialConnections &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate &&
          transactionPurpose == other.transactionPurpose &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(financialConnections, mandateOptions, setupFutureUsage, targetDate, transactionPurpose, verificationMethod); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsUsBankAccount(financialConnections: $financialConnections, mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate, transactionPurpose: $transactionPurpose, verificationMethod: $verificationMethod)'; } 
 }
