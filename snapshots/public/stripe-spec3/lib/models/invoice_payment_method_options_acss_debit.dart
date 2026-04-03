// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_acss_debit_mandate_options.dart';/// Bank account verification method.
@immutable final class InvoicePaymentMethodOptionsAcssDebitVerificationMethod {const InvoicePaymentMethodOptionsAcssDebitVerificationMethod._(this.value);

factory InvoicePaymentMethodOptionsAcssDebitVerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => InvoicePaymentMethodOptionsAcssDebitVerificationMethod._(json),
}; }

static const InvoicePaymentMethodOptionsAcssDebitVerificationMethod automatic = InvoicePaymentMethodOptionsAcssDebitVerificationMethod._('automatic');

static const InvoicePaymentMethodOptionsAcssDebitVerificationMethod instant = InvoicePaymentMethodOptionsAcssDebitVerificationMethod._('instant');

static const InvoicePaymentMethodOptionsAcssDebitVerificationMethod microdeposits = InvoicePaymentMethodOptionsAcssDebitVerificationMethod._('microdeposits');

static const List<InvoicePaymentMethodOptionsAcssDebitVerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsAcssDebitVerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsAcssDebitVerificationMethod($value)'; } 
 }
/// 
@immutable final class InvoicePaymentMethodOptionsAcssDebit {const InvoicePaymentMethodOptionsAcssDebit({this.mandateOptions, this.verificationMethod, });

factory InvoicePaymentMethodOptionsAcssDebit.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsAcssDebit(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsAcssDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  verificationMethod: json['verification_method'] != null ? InvoicePaymentMethodOptionsAcssDebitVerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final InvoicePaymentMethodOptionsAcssDebitMandateOptions? mandateOptions;

/// Bank account verification method.
final InvoicePaymentMethodOptionsAcssDebitVerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'verification_method'}.contains(key)); } 
InvoicePaymentMethodOptionsAcssDebit copyWith({InvoicePaymentMethodOptionsAcssDebitMandateOptions Function()? mandateOptions, InvoicePaymentMethodOptionsAcssDebitVerificationMethod Function()? verificationMethod, }) { return InvoicePaymentMethodOptionsAcssDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsAcssDebit &&
          mandateOptions == other.mandateOptions &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(mandateOptions, verificationMethod); } 
@override String toString() { return 'InvoicePaymentMethodOptionsAcssDebit(mandateOptions: $mandateOptions, verificationMethod: $verificationMethod)'; } 
 }
