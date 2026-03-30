// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_payment_method_options_param28_financial_connections.dart';import 'payment_intent_payment_method_options_param28_mandate_options.dart';import 'payment_intent_payment_method_options_param28_networks.dart';final class PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam28TransactionPurpose {const PaymentIntentPaymentMethodOptionsParam28TransactionPurpose._(this.value);

factory PaymentIntentPaymentMethodOptionsParam28TransactionPurpose.fromJson(String json) { return switch (json) {
  '' => $empty,
  'goods' => goods,
  'other' => $other,
  'services' => services,
  'unspecified' => unspecified,
  _ => PaymentIntentPaymentMethodOptionsParam28TransactionPurpose._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam28TransactionPurpose $empty = PaymentIntentPaymentMethodOptionsParam28TransactionPurpose._('');

static const PaymentIntentPaymentMethodOptionsParam28TransactionPurpose goods = PaymentIntentPaymentMethodOptionsParam28TransactionPurpose._('goods');

static const PaymentIntentPaymentMethodOptionsParam28TransactionPurpose $other = PaymentIntentPaymentMethodOptionsParam28TransactionPurpose._('other');

static const PaymentIntentPaymentMethodOptionsParam28TransactionPurpose services = PaymentIntentPaymentMethodOptionsParam28TransactionPurpose._('services');

static const PaymentIntentPaymentMethodOptionsParam28TransactionPurpose unspecified = PaymentIntentPaymentMethodOptionsParam28TransactionPurpose._('unspecified');

static const List<PaymentIntentPaymentMethodOptionsParam28TransactionPurpose> values = [$empty, goods, $other, services, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam28TransactionPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28TransactionPurpose($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam28VerificationMethod {const PaymentIntentPaymentMethodOptionsParam28VerificationMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsParam28VerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => PaymentIntentPaymentMethodOptionsParam28VerificationMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam28VerificationMethod automatic = PaymentIntentPaymentMethodOptionsParam28VerificationMethod._('automatic');

static const PaymentIntentPaymentMethodOptionsParam28VerificationMethod instant = PaymentIntentPaymentMethodOptionsParam28VerificationMethod._('instant');

static const PaymentIntentPaymentMethodOptionsParam28VerificationMethod microdeposits = PaymentIntentPaymentMethodOptionsParam28VerificationMethod._('microdeposits');

static const List<PaymentIntentPaymentMethodOptionsParam28VerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam28VerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28VerificationMethod($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam28 {const PaymentIntentPaymentMethodOptionsParam28({this.financialConnections, this.mandateOptions, this.networks, this.setupFutureUsage, this.targetDate, this.transactionPurpose, this.verificationMethod, });

factory PaymentIntentPaymentMethodOptionsParam28.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam28(
  financialConnections: json['financial_connections'] != null ? PaymentIntentPaymentMethodOptionsParam28FinancialConnections.fromJson(json['financial_connections'] as Map<String, dynamic>) : null,
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsParam28MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  networks: json['networks'] != null ? PaymentIntentPaymentMethodOptionsParam28Networks.fromJson(json['networks'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
  transactionPurpose: json['transaction_purpose'] != null ? PaymentIntentPaymentMethodOptionsParam28TransactionPurpose.fromJson(json['transaction_purpose'] as String) : null,
  verificationMethod: json['verification_method'] != null ? PaymentIntentPaymentMethodOptionsParam28VerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam28FinancialConnections? financialConnections;

final PaymentIntentPaymentMethodOptionsParam28MandateOptions? mandateOptions;

final PaymentIntentPaymentMethodOptionsParam28Networks? networks;

final PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage? setupFutureUsage;

final String? targetDate;

final PaymentIntentPaymentMethodOptionsParam28TransactionPurpose? transactionPurpose;

final PaymentIntentPaymentMethodOptionsParam28VerificationMethod? verificationMethod;

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
PaymentIntentPaymentMethodOptionsParam28 copyWith({PaymentIntentPaymentMethodOptionsParam28FinancialConnections Function()? financialConnections, PaymentIntentPaymentMethodOptionsParam28MandateOptions Function()? mandateOptions, PaymentIntentPaymentMethodOptionsParam28Networks Function()? networks, PaymentIntentPaymentMethodOptionsParam28SetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, PaymentIntentPaymentMethodOptionsParam28TransactionPurpose Function()? transactionPurpose, PaymentIntentPaymentMethodOptionsParam28VerificationMethod Function()? verificationMethod, }) { return PaymentIntentPaymentMethodOptionsParam28(
  financialConnections: financialConnections != null ? financialConnections() : this.financialConnections,
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  networks: networks != null ? networks() : this.networks,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
  transactionPurpose: transactionPurpose != null ? transactionPurpose() : this.transactionPurpose,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam28 &&
          financialConnections == other.financialConnections &&
          mandateOptions == other.mandateOptions &&
          networks == other.networks &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate &&
          transactionPurpose == other.transactionPurpose &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(financialConnections, mandateOptions, networks, setupFutureUsage, targetDate, transactionPurpose, verificationMethod); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28(financialConnections: $financialConnections, mandateOptions: $mandateOptions, networks: $networks, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate, transactionPurpose: $transactionPurpose, verificationMethod: $verificationMethod)'; } 
 }
