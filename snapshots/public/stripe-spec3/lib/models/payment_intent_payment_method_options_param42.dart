// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_payment_method_options_param42_financial_connections.dart';import 'payment_intent_payment_method_options_param42_mandate_options.dart';import 'payment_intent_payment_method_options_param42_networks.dart';final class PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam42TransactionPurpose {const PaymentIntentPaymentMethodOptionsParam42TransactionPurpose._(this.value);

factory PaymentIntentPaymentMethodOptionsParam42TransactionPurpose.fromJson(String json) { return switch (json) {
  '' => $empty,
  'goods' => goods,
  'other' => $other,
  'services' => services,
  'unspecified' => unspecified,
  _ => PaymentIntentPaymentMethodOptionsParam42TransactionPurpose._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam42TransactionPurpose $empty = PaymentIntentPaymentMethodOptionsParam42TransactionPurpose._('');

static const PaymentIntentPaymentMethodOptionsParam42TransactionPurpose goods = PaymentIntentPaymentMethodOptionsParam42TransactionPurpose._('goods');

static const PaymentIntentPaymentMethodOptionsParam42TransactionPurpose $other = PaymentIntentPaymentMethodOptionsParam42TransactionPurpose._('other');

static const PaymentIntentPaymentMethodOptionsParam42TransactionPurpose services = PaymentIntentPaymentMethodOptionsParam42TransactionPurpose._('services');

static const PaymentIntentPaymentMethodOptionsParam42TransactionPurpose unspecified = PaymentIntentPaymentMethodOptionsParam42TransactionPurpose._('unspecified');

static const List<PaymentIntentPaymentMethodOptionsParam42TransactionPurpose> values = [$empty, goods, $other, services, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam42TransactionPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42TransactionPurpose($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam42VerificationMethod {const PaymentIntentPaymentMethodOptionsParam42VerificationMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsParam42VerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => PaymentIntentPaymentMethodOptionsParam42VerificationMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam42VerificationMethod automatic = PaymentIntentPaymentMethodOptionsParam42VerificationMethod._('automatic');

static const PaymentIntentPaymentMethodOptionsParam42VerificationMethod instant = PaymentIntentPaymentMethodOptionsParam42VerificationMethod._('instant');

static const PaymentIntentPaymentMethodOptionsParam42VerificationMethod microdeposits = PaymentIntentPaymentMethodOptionsParam42VerificationMethod._('microdeposits');

static const List<PaymentIntentPaymentMethodOptionsParam42VerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam42VerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42VerificationMethod($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam42 {const PaymentIntentPaymentMethodOptionsParam42({this.financialConnections, this.mandateOptions, this.networks, this.setupFutureUsage, this.targetDate, this.transactionPurpose, this.verificationMethod, });

factory PaymentIntentPaymentMethodOptionsParam42.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam42(
  financialConnections: json['financial_connections'] != null ? PaymentIntentPaymentMethodOptionsParam42FinancialConnections.fromJson(json['financial_connections'] as Map<String, dynamic>) : null,
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsParam42MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  networks: json['networks'] != null ? PaymentIntentPaymentMethodOptionsParam42Networks.fromJson(json['networks'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
  transactionPurpose: json['transaction_purpose'] != null ? PaymentIntentPaymentMethodOptionsParam42TransactionPurpose.fromJson(json['transaction_purpose'] as String) : null,
  verificationMethod: json['verification_method'] != null ? PaymentIntentPaymentMethodOptionsParam42VerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam42FinancialConnections? financialConnections;

final PaymentIntentPaymentMethodOptionsParam42MandateOptions? mandateOptions;

final PaymentIntentPaymentMethodOptionsParam42Networks? networks;

final PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage? setupFutureUsage;

final String? targetDate;

final PaymentIntentPaymentMethodOptionsParam42TransactionPurpose? transactionPurpose;

final PaymentIntentPaymentMethodOptionsParam42VerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (financialConnections != null) 'financial_connections': financialConnections?.toJson(),
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (networks != null) 'networks': networks?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
  if (transactionPurpose != null) 'transaction_purpose': transactionPurpose?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'financial_connections', 'mandate_options', 'networks', 'setup_future_usage', 'target_date', 'transaction_purpose', 'verification_method'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam42 copyWith({PaymentIntentPaymentMethodOptionsParam42FinancialConnections Function()? financialConnections, PaymentIntentPaymentMethodOptionsParam42MandateOptions Function()? mandateOptions, PaymentIntentPaymentMethodOptionsParam42Networks Function()? networks, PaymentIntentPaymentMethodOptionsParam42SetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, PaymentIntentPaymentMethodOptionsParam42TransactionPurpose Function()? transactionPurpose, PaymentIntentPaymentMethodOptionsParam42VerificationMethod Function()? verificationMethod, }) { return PaymentIntentPaymentMethodOptionsParam42(
  financialConnections: financialConnections != null ? financialConnections() : this.financialConnections,
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  networks: networks != null ? networks() : this.networks,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
  transactionPurpose: transactionPurpose != null ? transactionPurpose() : this.transactionPurpose,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam42 &&
          financialConnections == other.financialConnections &&
          mandateOptions == other.mandateOptions &&
          networks == other.networks &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate &&
          transactionPurpose == other.transactionPurpose &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(financialConnections, mandateOptions, networks, setupFutureUsage, targetDate, transactionPurpose, verificationMethod); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42(financialConnections: $financialConnections, mandateOptions: $mandateOptions, networks: $networks, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate, transactionPurpose: $transactionPurpose, verificationMethod: $verificationMethod)'; } 
 }
