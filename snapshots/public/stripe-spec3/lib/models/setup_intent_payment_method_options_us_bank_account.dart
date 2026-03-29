// GENERATED CODE - DO NOT MODIFY BY HAND

import 'linked_account_options_common.dart';import 'payment_method_options_us_bank_account_mandate_options.dart';/// Bank account verification method.
final class SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod {const SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod._(this.value);

factory SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod._(json),
}; }

static const SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod automatic = SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod._('automatic');

static const SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod instant = SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod._('instant');

static const SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod microdeposits = SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod._('microdeposits');

static const List<SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod($value)'; } 
 }
/// 
final class SetupIntentPaymentMethodOptionsUsBankAccount {const SetupIntentPaymentMethodOptionsUsBankAccount({this.financialConnections, this.mandateOptions, this.verificationMethod, });

factory SetupIntentPaymentMethodOptionsUsBankAccount.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsUsBankAccount(
  financialConnections: json['financial_connections'] != null ? LinkedAccountOptionsCommon.fromJson(json['financial_connections'] as Map<String, dynamic>) : null,
  mandateOptions: json['mandate_options'] != null ? PaymentMethodOptionsUsBankAccountMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  verificationMethod: json['verification_method'] != null ? SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final LinkedAccountOptionsCommon? financialConnections;

final PaymentMethodOptionsUsBankAccountMandateOptions? mandateOptions;

/// Bank account verification method.
final SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (financialConnections != null) 'financial_connections': financialConnections?.toJson(),
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'financial_connections', 'mandate_options', 'verification_method'}.contains(key)); } 
SetupIntentPaymentMethodOptionsUsBankAccount copyWith({LinkedAccountOptionsCommon Function()? financialConnections, PaymentMethodOptionsUsBankAccountMandateOptions Function()? mandateOptions, SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod Function()? verificationMethod, }) { return SetupIntentPaymentMethodOptionsUsBankAccount(
  financialConnections: financialConnections != null ? financialConnections() : this.financialConnections,
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsUsBankAccount &&
          financialConnections == other.financialConnections &&
          mandateOptions == other.mandateOptions &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(financialConnections, mandateOptions, verificationMethod); } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsUsBankAccount(financialConnections: $financialConnections, mandateOptions: $mandateOptions, verificationMethod: $verificationMethod)'; } 
 }
