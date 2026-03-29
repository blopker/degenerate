// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_intent_request_payment_method_options_us_bank_account_financial_connections.dart';import 'post_setup_intents_intent_request_payment_method_options_us_bank_account_mandate_options.dart';import 'post_setup_intents_intent_request_payment_method_options_us_bank_account_networks.dart';final class PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod {const PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod automatic = PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod._('automatic');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod instant = PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod._('instant');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod microdeposits = PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod._('microdeposits');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod($value)'; } 
 }
final class PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount {const PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount({this.financialConnections, this.mandateOptions, this.networks, this.verificationMethod, });

factory PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount(
  financialConnections: json['financial_connections'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountFinancialConnections.fromJson(json['financial_connections'] as Map<String, dynamic>) : null,
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  networks: json['networks'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountNetworks.fromJson(json['networks'] as Map<String, dynamic>) : null,
  verificationMethod: json['verification_method'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountFinancialConnections? financialConnections;

final PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountMandateOptions? mandateOptions;

final PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountNetworks? networks;

final PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (financialConnections != null) 'financial_connections': financialConnections?.toJson(),
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (networks != null) 'networks': networks?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount copyWith({PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountFinancialConnections Function()? financialConnections, PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountMandateOptions Function()? mandateOptions, PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountNetworks Function()? networks, PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccountVerificationMethod Function()? verificationMethod, }) { return PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount(
  financialConnections: financialConnections != null ? financialConnections() : this.financialConnections,
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  networks: networks != null ? networks() : this.networks,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount &&
          financialConnections == other.financialConnections &&
          mandateOptions == other.mandateOptions &&
          networks == other.networks &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(financialConnections, mandateOptions, networks, verificationMethod); } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsUsBankAccount(financialConnections: $financialConnections, mandateOptions: $mandateOptions, networks: $networks, verificationMethod: $verificationMethod)'; } 
 }
