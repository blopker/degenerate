// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param7_financial_connections.dart';@immutable final class InvoicePaymentMethodOptionsParam7VerificationMethod {const InvoicePaymentMethodOptionsParam7VerificationMethod._(this.value);

factory InvoicePaymentMethodOptionsParam7VerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => InvoicePaymentMethodOptionsParam7VerificationMethod._(json),
}; }

static const InvoicePaymentMethodOptionsParam7VerificationMethod automatic = InvoicePaymentMethodOptionsParam7VerificationMethod._('automatic');

static const InvoicePaymentMethodOptionsParam7VerificationMethod instant = InvoicePaymentMethodOptionsParam7VerificationMethod._('instant');

static const InvoicePaymentMethodOptionsParam7VerificationMethod microdeposits = InvoicePaymentMethodOptionsParam7VerificationMethod._('microdeposits');

static const List<InvoicePaymentMethodOptionsParam7VerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam7VerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam7VerificationMethod($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam7 {const InvoicePaymentMethodOptionsParam7({this.financialConnections, this.verificationMethod, });

factory InvoicePaymentMethodOptionsParam7.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam7(
  financialConnections: json['financial_connections'] != null ? InvoicePaymentMethodOptionsParam7FinancialConnections.fromJson(json['financial_connections'] as Map<String, dynamic>) : null,
  verificationMethod: json['verification_method'] != null ? InvoicePaymentMethodOptionsParam7VerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam7FinancialConnections? financialConnections;

final InvoicePaymentMethodOptionsParam7VerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (financialConnections != null) 'financial_connections': financialConnections?.toJson(),
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'financial_connections', 'verification_method'}.contains(key)); } 
InvoicePaymentMethodOptionsParam7 copyWith({InvoicePaymentMethodOptionsParam7FinancialConnections Function()? financialConnections, InvoicePaymentMethodOptionsParam7VerificationMethod Function()? verificationMethod, }) { return InvoicePaymentMethodOptionsParam7(
  financialConnections: financialConnections != null ? financialConnections() : this.financialConnections,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam7 &&
          financialConnections == other.financialConnections &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(financialConnections, verificationMethod); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam7(financialConnections: $financialConnections, verificationMethod: $verificationMethod)'; } 
 }
